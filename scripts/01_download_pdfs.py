"""
01_download_pdfs.py
-------------------
Scrapes the oktatas.hu mathematics exam archive and downloads all
feladatsor + megoldások PDFs that are not yet present in the manifest.

Real URL structure (verified 2026-03-28):
  Level 1 — index:   /kozneveles/erettsegi/feladatsorok
  Level 2 — period:  /kozneveles/erettsegi/feladatsorok/kozepszint_2025osz
  Level 3 — day:     /kozneveles/erettsegi/feladatsorok/kozepszint_2025osz/kozep_3nap
  PDFs:              /bin/content/dload/erettsegi/feladatok_2025osz_kozep/k_mat_25okt_fl.pdf
                     → redirects to dload-oktatas.educatio.hu/…

Output directory structure:
  scripts/data/raw_pdfs/{year}/{kozep|emelt}/{filename}.pdf

Manifest file:
  scripts/data/manifest.json  — tracks every downloaded PDF

Run standalone:
  python scripts/01_download_pdfs.py

Called by the Streamlit launcher (pipeline_app.py) with optional
progress_callback to update the UI progress bar.
"""

from __future__ import annotations

import io
import json
import re
import sys
import time
from pathlib import Path
from typing import Callable
from urllib.parse import urljoin, urlparse

import requests
from bs4 import BeautifulSoup

# Fix Hungarian characters on Windows console
if sys.platform == "win32":
    sys.stdout.reconfigure(encoding="utf-8", errors="replace")
    sys.stderr.reconfigure(encoding="utf-8", errors="replace")

# ---------------------------------------------------------------------------
# Configuration
# ---------------------------------------------------------------------------

BASE_URL = "https://www.oktatas.hu"
INDEX_URL = f"{BASE_URL}/kozneveles/erettsegi/feladatsorok"

# Hungarian-language maths exams only:
#   k_mat_ / e_mat_     — main Hungarian exam
#   k_matma_ / e_matma_ — Hungarian as a secondary/minority language exam
# All other language variants (matang, matfra, matnem, h_mat, etc.) excluded.
PDF_MATH_RE = re.compile(
    r"(?:^|/)(?:k|e)_matma?_\d{2}(?:maj|okt|febr)",
    re.IGNORECASE,
)

DATA_DIR = Path(__file__).parent / "data"
RAW_PDFS_DIR = DATA_DIR / "raw_pdfs"
MANIFEST_PATH = DATA_DIR / "manifest.json"

REQUEST_TIMEOUT = 30   # seconds per request
RETRY_LIMIT = 3
RETRY_BACKOFF = 2.0    # seconds (multiplied by attempt number)


# ---------------------------------------------------------------------------
# Manifest helpers
# ---------------------------------------------------------------------------

def load_manifest() -> dict:
    if MANIFEST_PATH.exists():
        with open(MANIFEST_PATH, encoding="utf-8") as f:
            return json.load(f)
    return {}


def save_manifest(manifest: dict) -> None:
    MANIFEST_PATH.parent.mkdir(parents=True, exist_ok=True)
    with open(MANIFEST_PATH, "w", encoding="utf-8") as f:
        json.dump(manifest, f, ensure_ascii=False, indent=2)


# ---------------------------------------------------------------------------
# HTTP helpers
# ---------------------------------------------------------------------------

def _get(url: str, session: requests.Session) -> requests.Response:
    """GET with retry/back-off. Raises on final failure."""
    for attempt in range(RETRY_LIMIT):
        try:
            resp = session.get(url, timeout=REQUEST_TIMEOUT, allow_redirects=True)
            resp.raise_for_status()
            return resp
        except requests.RequestException as exc:
            if attempt == RETRY_LIMIT - 1:
                raise
            wait = RETRY_BACKOFF * (attempt + 1)
            print(f"  Ujra ({attempt+1}/{RETRY_LIMIT}) {url}: {exc}  [{wait:.0f}s]")
            time.sleep(wait)
    raise RuntimeError("unreachable")


def _is_period_link(href: str) -> bool:
    """True for period sub-pages like /…/feladatsorok/kozepszint_2025osz"""
    return "/feladatsorok/" in href and href != "/kozneveles/erettsegi/feladatsorok"


def _is_day_link(href: str) -> bool:
    """True for day sub-pages like /…/kozep_3nap or /…/emelt_2nap"""
    return bool(re.search(r"/(kozep|emelt)_\d+nap", href, re.IGNORECASE))


def _is_math_pdf(href: str) -> bool:
    """True if the href points to a mathematics exam PDF."""
    return href.lower().endswith(".pdf") and bool(PDF_MATH_RE.search(href))


# ---------------------------------------------------------------------------
# Metadata extraction from URL / filename
# ---------------------------------------------------------------------------

# New format:  k_mat_25okt_fl.pdf  →  kozep, 2025, oktober, feladatsor
# Older:       mat_kozep_2023_maj_fl.pdf  →  kozep, 2023, majus, feladatsor
_NEW_FNAME_RE = re.compile(
    r"^(?P<level>k|e)_mat_"
    r"(?P<yy>\d{2})(?P<session>maj|okt)"
    r"_(?P<kind>fl|ut)",
    re.IGNORECASE,
)
_OLD_FNAME_RE = re.compile(
    r"mat(?:ematika)?[_\-]"
    r"(?P<level>kozep|emelt|k|e)[_\-]"
    r"(?P<year>20\d{2}|19\d{2})[_\-]"
    r"(?P<session>maj|majus|tavasz|okt|oktober|osz)",
    re.IGNORECASE,
)

_LEVEL_MAP = {"k": "kozep", "kozep": "kozep", "e": "emelt", "emelt": "emelt"}
_SESSION_MAP = {"maj": "majus", "majus": "majus", "tavasz": "majus",
                "okt": "oktober", "oktober": "oktober", "osz": "oktober"}


def _exam_type_from_fname(fname: str) -> str:
    # Current format: starts with k_ or e_
    if re.match(r"^k_", fname, re.IGNORECASE):
        return "kozep"
    if re.match(r"^e_", fname, re.IGNORECASE):
        return "emelt"
    m = _OLD_FNAME_RE.search(fname)
    if m:
        return _LEVEL_MAP.get(m.group("level").lower(), "kozep")
    lower = fname.lower()
    return "emelt" if "emelt" in lower else "kozep"


def _year_from_fname(fname: str, url: str = "") -> str:
    # New format: 2-digit year embedded in filename  e.g. 25okt → 2025
    m = _NEW_FNAME_RE.match(fname)
    if m:
        return str(2000 + int(m.group("yy")))
    # Old format: 4-digit year in filename
    m4 = re.search(r"(20\d{2}|19\d{2})", fname)
    if m4:
        return m4.group(1)
    # Try the URL path (period pages embed the year: kozepszint_2025osz)
    m4 = re.search(r"(20\d{2}|19\d{2})", url)
    if m4:
        return m4.group(1)
    return "ismeretlen"


def _dest_path(fname: str, url: str) -> Path:
    year = _year_from_fname(fname, url)
    exam_type = _exam_type_from_fname(fname)
    return RAW_PDFS_DIR / year / exam_type / fname


# ---------------------------------------------------------------------------
# 3-level crawl
# ---------------------------------------------------------------------------

def discover_pdf_links(
    session: requests.Session,
    log: Callable[[str], None] = print,
) -> list[str]:
    """
    Walk the 3-level oktatas.hu structure and return absolute URLs for all
    mathematics exam PDFs (feladatsor + megoldas).
    """
    found: dict[str, str] = {}   # filename → absolute URL

    log("Keresés: " + INDEX_URL)
    try:
        resp = _get(INDEX_URL, session)
    except requests.RequestException as exc:
        log(f"  HIBA: nem sikerült betölteni az index oldalt: {exc}")
        return []

    soup = BeautifulSoup(resp.text, "html.parser")
    period_hrefs = [
        a["href"] for a in soup.find_all("a", href=True)
        if _is_period_link(a["href"])
    ]
    log(f"  {len(period_hrefs)} vizsgaidőszak megtalálva.")

    for period_href in period_hrefs:
        period_url = urljoin(BASE_URL, period_href)
        try:
            resp = _get(period_url, session)
        except requests.RequestException as exc:
            log(f"  Figyelmeztetés: {period_href}: {exc}")
            continue

        soup = BeautifulSoup(resp.text, "html.parser")

        # Collect PDF links directly on period page (some periods list PDFs here)
        for a in soup.find_all("a", href=True):
            href = a["href"]
            if _is_math_pdf(href):
                abs_url = urljoin(period_url, href)
                fname = abs_url.rsplit("/", 1)[-1]
                found.setdefault(fname, abs_url)

        # Collect day-page links and recurse one level
        day_hrefs = list({
            a["href"] for a in soup.find_all("a", href=True)
            if _is_day_link(a["href"])
        })

        for day_href in day_hrefs:
            day_url = urljoin(BASE_URL, day_href)
            try:
                resp = _get(day_url, session)
            except requests.RequestException as exc:
                log(f"  Figyelmeztetés: {day_href}: {exc}")
                continue

            soup = BeautifulSoup(resp.text, "html.parser")
            for a in soup.find_all("a", href=True):
                href = a["href"]
                if _is_math_pdf(href):
                    abs_url = urljoin(day_url, href)
                    fname = abs_url.rsplit("/", 1)[-1]
                    found.setdefault(fname, abs_url)

    log(f"  {len(found)} matematika PDF hivatkozás megtalálva.")
    return list(found.values())


# ---------------------------------------------------------------------------
# Download
# ---------------------------------------------------------------------------

def download_pdfs(
    urls: list[str],
    manifest: dict,
    session: requests.Session,
    log: Callable[[str], None] = print,
    progress_callback: Callable[[int, int], None] | None = None,
) -> tuple[int, int]:
    """Download PDFs not already in the manifest. Returns (new, skipped)."""
    new_count = 0
    skipped_count = 0
    total = len(urls)

    for idx, url in enumerate(urls):
        fname = url.rsplit("/", 1)[-1]

        if progress_callback:
            progress_callback(idx, total)

        if fname in manifest:
            skipped_count += 1
            continue

        dest = _dest_path(fname, url)
        dest.parent.mkdir(parents=True, exist_ok=True)

        try:
            log(f"  Letoltes: {fname} ...")
            resp = _get(url, session)
            dest.write_bytes(resp.content)

            manifest[fname] = {
                "url": resp.url,          # final URL after redirect
                "local_path": str(dest.relative_to(DATA_DIR.parent)),
                "year": _year_from_fname(fname, url),
                "exam_type": _exam_type_from_fname(fname),
                "downloaded_at": time.strftime("%Y-%m-%dT%H:%M:%SZ", time.gmtime()),
                "size_bytes": len(resp.content),
                "classified": False,
            }
            save_manifest(manifest)
            new_count += 1
            log(f"    OK - {len(resp.content) // 1024} KB")

        except requests.RequestException as exc:
            log(f"    HIBA: {exc}")

    if progress_callback:
        progress_callback(total, total)

    return new_count, skipped_count


# ---------------------------------------------------------------------------
# Public entry point
# ---------------------------------------------------------------------------

def run(
    log: Callable[[str], None] = print,
    progress_callback: Callable[[int, int], None] | None = None,
) -> dict:
    """
    Full download step. Returns summary dict: new, skipped, total_in_manifest.
    """
    manifest = load_manifest()

    session = requests.Session()
    session.headers["User-Agent"] = (
        "Mozilla/5.0 (compatible; VeglesineBot/1.0)"
    )

    log("=== 01 - PDF letoltes ===")
    urls = discover_pdf_links(session, log=log)

    if not urls:
        log("Nem talaltam letoltheto PDF fajlt. Ellenorizd a kapcsolatot.")
        return {"new": 0, "skipped": 0, "total_in_manifest": len(manifest)}

    new_count, skipped_count = download_pdfs(
        urls, manifest, session,
        log=log,
        progress_callback=progress_callback,
    )

    log(
        f"\nKesz: {new_count} uj PDF letoltve, "
        f"{skipped_count} mar megvolt, "
        f"{len(manifest)} fajl osszesen a manifestben."
    )
    return {"new": new_count, "skipped": skipped_count, "total_in_manifest": len(manifest)}


# ---------------------------------------------------------------------------
# CLI entry point
# ---------------------------------------------------------------------------

if __name__ == "__main__":
    run()
    sys.exit(0)
