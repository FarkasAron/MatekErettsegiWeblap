"""
02_classify_pdfs.py
-------------------
Parses PDF filenames in raw_pdfs/ and writes classification metadata into
manifest.json for each file:
  - year          : int   e.g. 2023
  - exam_type     : str   "kozep" | "emelt"
  - exam_session  : str   "majus" | "oktober"
  - exam_part     : str   "I" | "II" | None   (Part I = short, Part II = long)
  - is_solution_pdf: bool  True for megoldás/útmutató PDFs
  - classified    : bool  True once auto-classification succeeded

Files that don't match any known pattern are returned as the "unmatched" list
so the Streamlit UI can prompt the teacher to fill them in manually.

Run standalone:
  python scripts/02_classify_pdfs.py

Called by the Streamlit launcher (pipeline_app.py).
Manual overrides can be passed as a dict:
  run(manual_overrides={"ismeretlen_file.pdf": {"year": 2005, ...}})
"""

from __future__ import annotations

import json
import re
import sys
from pathlib import Path
from typing import Callable

if sys.platform == "win32":
    sys.stdout.reconfigure(encoding="utf-8", errors="replace")
    sys.stderr.reconfigure(encoding="utf-8", errors="replace")

# ---------------------------------------------------------------------------
# Paths (mirror layout from 01_download_pdfs.py)
# ---------------------------------------------------------------------------

DATA_DIR = Path(__file__).parent / "data"
RAW_PDFS_DIR = DATA_DIR / "raw_pdfs"
MANIFEST_PATH = DATA_DIR / "manifest.json"


# ---------------------------------------------------------------------------
# Classification rules
# ---------------------------------------------------------------------------

# All known Hungarian exam filename patterns, from newest conventions to oldest.
#
# Current format (2015–present):
#   k_mat_25okt_fl.pdf   (kozep, 2025, oktober, feladatsor)
#   e_mat_24maj_ut.pdf   (emelt, 2024, majus, utmutato)
#
# Older format (~2005–2014):
#   mat_kozep_2023_maj_fl.pdf
#   mat_emelt_2022_okt_fl.pdf
#   mat_k_2009_maj_fl.pdf
#   mat_e_2007_okt_ut.pdf
#   mat2_kozep_2003_jun_fl.pdf
#   matematika_2001_emelt_tavasz_mg.pdf  (reversed order)

# --- Current format: k_mat_YYsession_kind.pdf  /  k_matma_YYsession_kind.pdf ---
# matma = Hungarian-as-secondary-language variant; same structure as main exam.
# Also handles febr (February re-sit sessions from ~2005-2008).
_CURRENT_RE = re.compile(
    r"^(?P<exam_type>k|e)_matma?_"
    r"(?P<yy>\d{2})(?P<session>maj|okt|febr)"
    r"_(?P<kind>fl|ut)"
    r"(?:_(?P<part>I{1,3}|[12]))?",
    re.IGNORECASE,
)

# --- Legacy format: mat[ematika]_level_YYYY_session_kind ---
_YEAR_PAT = r"(?P<year>20\d{2}|199\d|198\d)"
_EXAM_TYPE_PAT = r"(?P<exam_type>kozep|emelt|k(?=[_\-])|e(?=[_\-]))"
_SESSION_PAT = r"(?P<session>maj|majus|tavasz|spring|jun|okt|oktober|osz|autumn|fall)"
_PART_PAT = r"(?:_(?P<part>I{1,3}|[12]))?"
_KIND_PAT = r"(?P<kind>fl|feladatsor|ut|utmutato|mg|megoldas|megoldáskulcs|sol)"

_PRIMARY_RE = re.compile(
    r"mat(?:ematika|2)?"
    r"[_\-]"
    + _EXAM_TYPE_PAT +
    r"[_\-]"
    + _YEAR_PAT +
    r"[_\-]"
    + _SESSION_PAT +
    _PART_PAT +
    r"[_\-]"
    + _KIND_PAT,
    re.IGNORECASE,
)

_ALT_RE = re.compile(
    r"mat(?:ematika|2)?"
    r"[_\-]"
    + _YEAR_PAT +
    r"[_\-]"
    + _EXAM_TYPE_PAT +
    r"[_\-]"
    + _SESSION_PAT +
    _PART_PAT +
    r"[_\-]"
    + _KIND_PAT,
    re.IGNORECASE,
)

_MINIMAL_RE = re.compile(
    _YEAR_PAT + r".*?" + _KIND_PAT,
    re.IGNORECASE,
)

# ---------------------------------------------------------------------------
# Normalisation helpers
# ---------------------------------------------------------------------------

_EXAM_TYPE_MAP = {
    "kozep": "kozep", "k": "kozep",
    "emelt": "emelt", "e": "emelt",
}

_SESSION_MAP = {
    "maj": "majus", "majus": "majus", "tavasz": "majus",
    "spring": "majus", "jun": "majus",
    "okt": "oktober", "oktober": "oktober", "osz": "oktober",
    "autumn": "oktober", "fall": "oktober",
    "febr": "februar", "februar": "februar",   # re-sit sessions ~2005-2008
}

_IS_SOLUTION_MAP = {
    "fl": False, "feladatsor": False,
    "ut": True, "utmutato": True, "mg": True,
    "megoldas": True, "megoldáskulcs": True, "sol": True,
}

_PART_MAP = {
    "1": "I", "i": "I",
    "2": "II", "ii": "II",
    "3": "III", "iii": "III",
}


def _normalise(groups: dict) -> dict | None:
    """Turn raw regex groups into a clean classification dict, or None on failure."""
    # Support both 4-digit year ("year") and 2-digit year ("yy")
    try:
        if groups.get("yy"):
            year = 2000 + int(groups["yy"])
        else:
            year = int(groups["year"])
    except (KeyError, TypeError, ValueError):
        return None

    raw_type = (groups.get("exam_type") or "").lower().rstrip("-_")
    exam_type = _EXAM_TYPE_MAP.get(raw_type)
    if not exam_type:
        return None

    raw_session = (groups.get("session") or "").lower()
    exam_session = _SESSION_MAP.get(raw_session)
    if not exam_session:
        return None

    raw_kind = (groups.get("kind") or "").lower()
    is_solution = _IS_SOLUTION_MAP.get(raw_kind)
    if is_solution is None:
        return None

    raw_part = (groups.get("part") or "").lower()
    exam_part = _PART_MAP.get(raw_part) or (raw_part.upper() if raw_part else None)

    return {
        "year": year,
        "exam_type": exam_type,
        "exam_session": exam_session,
        "exam_part": exam_part,
        "is_solution_pdf": is_solution,
    }


def classify_filename(filename: str, folder_path: Path | None = None) -> dict | None:
    """
    Attempt to extract classification metadata from a PDF filename.

    Returns a dict with keys:
        year, exam_type, exam_session, exam_part, is_solution_pdf
    or None if classification failed.

    folder_path is used as a hint: if the folder name contains "emelt" or
    "kozep" and the filename itself is ambiguous, that wins.
    """
    stem = Path(filename).stem  # strip .pdf
    is_secondary = bool(re.search(r"_matma_", stem, re.IGNORECASE))

    for pattern in (_CURRENT_RE, _PRIMARY_RE, _ALT_RE):
        m = pattern.search(stem)
        if m:
            result = _normalise(m.groupdict())
            if result:
                result["is_secondary_language"] = is_secondary
                return result

    # Minimal fallback: if folder gives exam_type hint
    m = _MINIMAL_RE.search(stem)
    if m:
        groups = m.groupdict()
        # Try to infer exam_type from parent folder name
        if folder_path:
            folder_lower = folder_path.name.lower()
            if "emelt" in folder_lower:
                groups["exam_type"] = "emelt"
            elif "kozep" in folder_lower:
                groups["exam_type"] = "kozep"
        # Try to infer session from common patterns
        if "maj" in stem.lower() or "tavasz" in stem.lower():
            groups["session"] = "maj"
        elif "okt" in stem.lower() or "osz" in stem.lower():
            groups["session"] = "okt"
        result = _normalise(groups)
        if result:
            result["is_secondary_language"] = is_secondary
            return result

    return None


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
# Core classification pass
# ---------------------------------------------------------------------------

def classify_all(
    manifest: dict,
    manual_overrides: dict[str, dict] | None = None,
    log: Callable[[str], None] = print,
) -> tuple[dict, list[str]]:
    """
    Classify every PDF file that is in the manifest but not yet classified,
    plus any PDFs found in raw_pdfs/ that aren't in the manifest yet.

    manual_overrides: {filename: {year, exam_type, exam_session, exam_part,
                                   is_solution_pdf}}  — from Streamlit UI inputs.

    Returns:
        (updated_manifest, unmatched_filenames)
    """
    overrides = manual_overrides or {}
    unmatched: list[str] = []
    classified_count = 0
    already_count = 0

    # Collect all PDFs: those already in the manifest + any new ones on disk
    known_filenames: set[str] = set(manifest.keys())

    for pdf_path in sorted(RAW_PDFS_DIR.rglob("*.pdf")):
        fname = pdf_path.name
        if fname not in manifest:
            # Discovered on disk but not in manifest — add a skeleton entry
            manifest[fname] = {
                "local_path": str(pdf_path.relative_to(DATA_DIR.parent)),
                "url": None,
                "downloaded_at": None,
                "size_bytes": pdf_path.stat().st_size,
                "classified": False,
            }

    # Patterns for files we intentionally skip (language variants, non-exam docs)
    _SKIP_RE = re.compile(
        # matma (Hungarian secondary language) is intentionally kept — not skipped.
        r"^(?:k|e)_mat(?!ma_)(?:ang|fra|nem|hor|ol|or|rom|spa|sze|szlo"
        r"|angol|nemet|francia|horvat|olasz|orosz|roman|spanyol|szerb|szlovak)"
        r"|^h_mat"          # Hungarian-minority exam format
        r"|jelentes"        # report documents
        r"|^[0-9]_",        # numbered non-exam files like 4_matematika_jelentes
        re.IGNORECASE,
    )

    for fname, entry in manifest.items():
        if entry.get("classified"):
            already_count += 1
            continue

        # Skip language variants and non-exam files
        if _SKIP_RE.search(fname):
            entry["classified"] = True
            entry["classification_source"] = "skipped"
            entry["skip_reason"] = "language_variant_or_non_exam"
            classified_count += 1
            continue

        # Manual override from teacher (Streamlit UI)
        if fname in overrides:
            entry.update(overrides[fname])
            entry["classified"] = True
            entry["classification_source"] = "manual"
            classified_count += 1
            log(f"  [kézi] {fname}")
            continue

        # Auto-classify from filename
        local = entry.get("local_path", "")
        folder = Path(local).parent if local else None
        result = classify_filename(fname, folder_path=folder)

        if result:
            entry.update(result)
            entry["classified"] = True
            entry["classification_source"] = "auto"
            classified_count += 1
            log(f"  [auto] {fname}  -> {result['year']} {result['exam_type']} "
                f"{'megoldás' if result['is_solution_pdf'] else 'feladatsor'}")
        else:
            unmatched.append(fname)
            log(f"  [?]    {fname}  — nem sikerült felismerni")

    save_manifest(manifest)

    log(
        f"\nOsztályozás: {classified_count} új, "
        f"{already_count} már megvolt, "
        f"{len(unmatched)} felismerhetetlen."
    )
    return manifest, unmatched


# ---------------------------------------------------------------------------
# Public entry point (used by Streamlit launcher)
# ---------------------------------------------------------------------------

def run(
    manual_overrides: dict[str, dict] | None = None,
    log: Callable[[str], None] = print,
) -> dict:
    """
    Classify all PDFs in the manifest + raw_pdfs/ directory.

    Args:
        manual_overrides: teacher-provided corrections from the Streamlit UI,
                          keyed by filename.
        log: status message sink.

    Returns:
        Summary dict:
            classified  — newly auto-classified count
            already     — already-classified count (skipped)
            unmatched   — list of filenames that need manual input
            total       — total entries in manifest
    """
    log("=== 02 — PDF osztályozás ===")
    manifest = load_manifest()

    if not manifest and not list(RAW_PDFS_DIR.rglob("*.pdf")):
        log("Nincs letöltött PDF. Először futtasd a 01_download_pdfs.py-t.")
        return {"classified": 0, "already": 0, "unmatched": [], "total": 0}

    before = sum(1 for e in manifest.values() if e.get("classified"))
    manifest, unmatched = classify_all(manifest, manual_overrides=manual_overrides, log=log)
    after = sum(1 for e in manifest.values() if e.get("classified"))

    return {
        "classified": after - before,
        "already": before,
        "unmatched": unmatched,
        "total": len(manifest),
    }


# ---------------------------------------------------------------------------
# CLI — also prints a table of unmatched files
# ---------------------------------------------------------------------------

if __name__ == "__main__":
    result = run()

    if result["unmatched"]:
        print("\n--- Kézi bevitelt igénylő fájlok ---")
        for fname in result["unmatched"]:
            print(f"  {fname}")
        print(
            "\nEzeket a fájlokat add meg kézzel a manifest.json-ban, "
            "vagy a Streamlit felületen keresztül."
        )
    sys.exit(0)
