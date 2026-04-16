"""
09_extract_answers.py
---------------------
Extracts per-problem answer-key crops from all _ut.pdf files,
then (optionally) uploads them to Supabase Storage.

No changes to the problems table or manifest.json are made.
The frontend can derive the answer URL directly from fields already
stored on each Problem row:

  exam_type     "kozep" → "k"  |  "emelt" → "e"
  year          2023            → "23"
  exam_session  "majus"         → "maj"
               "oktober"        → "okt"
               "februar"        → "febr"
  problem_number 5              → "005"

Resulting storage path (bucket: problem-images):
  k_mat_23maj_ut/crops/k_mat_23maj_ut_ans_005.png

Local output:
  scripts/data/answers/{stem}/crops/{stem}_ans_{N:03d}.png

Fallback (when step-04 segmentation finds 0 problems):
  scripts/data/answers/{stem}/pages/{stem}_page_{N:03d}.png
  — full-page renders, uploaded to the same path pattern.

Progress is tracked in:
  scripts/data/answers_progress.json

Run standalone:
  python scripts/09_extract_answers.py           # extract + crop only
  python scripts/09_extract_answers.py --upload  # + push to Supabase
  python scripts/09_extract_answers.py --reset   # clear progress and re-run
"""

from __future__ import annotations

import importlib.util
import json
import os
import sys
from collections import defaultdict
from pathlib import Path
from typing import Callable

import fitz  # PyMuPDF

if sys.platform == "win32":
    sys.stdout.reconfigure(encoding="utf-8", errors="replace")
    sys.stderr.reconfigure(encoding="utf-8", errors="replace")

# ---------------------------------------------------------------------------
# Paths
# ---------------------------------------------------------------------------

SCRIPTS_DIR       = Path(__file__).parent
DATA_DIR          = SCRIPTS_DIR / "data"
MANIFEST_PATH     = DATA_DIR / "manifest.json"
ANS_EXTRACTED_DIR = DATA_DIR / "answers_extracted"   # page JSONs for _ut PDFs
ANSWERS_DIR       = DATA_DIR / "answers"             # crop / page PNGs
PROGRESS_PATH     = DATA_DIR / "answers_progress.json"
ENV_PATH          = SCRIPTS_DIR.parent / ".env.local"

STORAGE_BUCKET = "problem-images"
CROP_SCALE     = 2.0    # render at 2× for retina sharpness
CROP_MARGIN_X  = 40.0   # horizontal margin — trims binding / page-number gutter
CROP_PAD_TOP   = 32.0   # padding above y_start on the first page of a crop
                        # (needs to be large enough to capture bordered table tops)
CROP_PAD_BOT   = 16.0   # padding below last content line — must cover table
                        # border drawn below "Összesen" row (vector path, ~10-12 pt)


# ---------------------------------------------------------------------------
# Lazy imports from the existing pipeline steps
# ---------------------------------------------------------------------------

def _import_step(script_filename: str, alias: str):
    """Load a sibling script as a module (cached in sys.modules)."""
    if alias in sys.modules:
        return sys.modules[alias]
    spec = importlib.util.spec_from_file_location(alias, SCRIPTS_DIR / script_filename)
    mod = importlib.util.module_from_spec(spec)
    sys.modules[alias] = mod          # register BEFORE exec so @dataclass works
    spec.loader.exec_module(mod)
    return mod


# ---------------------------------------------------------------------------
# Progress helpers
# ---------------------------------------------------------------------------

def _load_progress() -> dict:
    if PROGRESS_PATH.exists():
        with open(PROGRESS_PATH, encoding="utf-8") as f:
            return json.load(f)
    return {}


def _save_progress(progress: dict) -> None:
    PROGRESS_PATH.parent.mkdir(parents=True, exist_ok=True)
    with open(PROGRESS_PATH, "w", encoding="utf-8") as f:
        json.dump(progress, f, ensure_ascii=False, indent=2)


# ---------------------------------------------------------------------------
# Manifest helpers
# ---------------------------------------------------------------------------

def _load_manifest() -> dict:
    if MANIFEST_PATH.exists():
        with open(MANIFEST_PATH, encoding="utf-8") as f:
            return json.load(f)
    return {}


def _find_pdf_path(pdf_stem: str, manifest_entry: dict) -> Path | None:
    local = manifest_entry.get("local_path", "")
    if local:
        p = SCRIPTS_DIR / local
        if p.exists():
            return p
    for candidate in (DATA_DIR / "raw_pdfs").rglob(f"{pdf_stem}.pdf"):
        return candidate
    return None


# ---------------------------------------------------------------------------
# Step 1 — Extract page layout from a _ut PDF
# ---------------------------------------------------------------------------

def extract_answer_pdf(
    pdf_stem: str,
    pdf_path: Path,
    log: Callable,
) -> int:
    """
    Extract text layout and embedded images from pdf_path using the same
    logic as 03_extract_pages.py.  Output goes to ANS_EXTRACTED_DIR/{pdf_stem}.

    Returns the number of pages extracted (0 if already done).
    """
    out_dir = ANS_EXTRACTED_DIR / pdf_stem
    existing = sorted(out_dir.glob("page_*.json")) if out_dir.exists() else []
    if existing:
        log(f"    [skip] Már kinyerve ({len(existing)} oldal).")
        return len(existing)

    out_dir.mkdir(parents=True, exist_ok=True)
    step03 = _import_step("03_extract_pages.py", "_step03_extract_pages")
    result = step03.extract_pdf(pdf_path, out_dir, log=log)
    return result["pages"]


# ---------------------------------------------------------------------------
# Step 2 — Compute per-problem page spans from answer PDF
# ---------------------------------------------------------------------------

# Header / footer strip zones (match step-04 constants)
_TOP_SKIP    = 70    # pt — skip page header
_BOTTOM_SKIP = 760   # pt — skip page footer (A4 height ~842)


def compute_problem_page_spans(
    pdf_stem: str,
    log: Callable,
) -> dict[int, tuple[int, float, int, float]]:
    """
    Run the step-04 segmenter on the extracted page JSONs and return the
    full page span for each unique problem number:

        {problem_number: (start_page, y_start, end_page, y_end)}

    Strategy: record only the FIRST detection of each problem number
    (e.g. "1. a)" is the first, "1. b)" is ignored as a boundary).
    The span for problem N ends where problem N+1 first appears.
    This handles sub-part headers and multi-page answers correctly.

    Returns an empty dict if no problem boundaries are detected.
    """
    ext_dir = ANS_EXTRACTED_DIR / pdf_stem
    page_files = sorted(
        ext_dir.glob("page_*.json"),
        key=lambda p: int(p.stem.split("_")[1]),
    )
    if not page_files:
        log(f"    [warn] Nincs page JSON: {ext_dir}")
        return {}

    pages_data: dict[int, dict] = {}
    for pf in page_files:
        d = json.loads(pf.read_text(encoding="utf-8"))
        pages_data[d["page_number"]] = d

    step04 = _import_step("04_segment_problems.py", "_step04_segment_problems")

    all_lines  = []
    all_images = []
    for page_num in sorted(pages_data):
        page_data = pages_data[page_num]
        lines = step04._page_lines(page_data)

        if step04._is_instruction_page(lines):
            continue
        if step04._is_cover_page(lines):
            # Still carry through section-header lines (I. / II.)
            for ln in lines:
                if (ln.max_size >= step04.SECTION_MIN_SIZE
                        and ln.has_bold
                        and step04.SECTION_RE.match(ln.text)):
                    all_lines.append(ln)
            continue

        all_lines.extend(lines)
        all_images.extend(step04._page_images(page_data))

    raw_problems = step04.segment_into_problems(all_lines, all_images)
    log(f"    {len(raw_problems)} szegmens felismerve.")

    if not raw_problems:
        return {}

    # Record the FIRST detection of each problem number (page + y position).
    # raw_problems is already in document order (lines processed top→bottom).
    # "1. a)" appears before "1. b)", so problem 1's start = "1. a)"'s position.
    first_detections: dict[int, tuple[int, float]] = {}
    for prob in raw_problems:
        if prob.problem_number in first_detections:
            continue   # already recorded the first occurrence
        if not prob.lines:
            continue
        first_line = prob.lines[0]
        first_detections[prob.problem_number] = (
            first_line.page_number,
            first_line.y0,
        )

    if not first_detections:
        return {}

    log(f"    {len(first_detections)} egyedi feladatszám.")

    sorted_nums = sorted(first_detections.keys())
    last_page_num = max(pages_data.keys())
    last_page_h   = pages_data[last_page_num]["height"]

    spans: dict[int, tuple[int, float, int, float]] = {}
    for i, pn in enumerate(sorted_nums):
        start_page, y_start = first_detections[pn]

        if i + 1 < len(sorted_nums):
            next_pn = sorted_nums[i + 1]
            end_page, y_end = first_detections[next_pn]
        else:
            # Last problem — extend to end of document
            end_page = last_page_num
            y_end    = last_page_h - CROP_MARGIN_X

        spans[pn] = (start_page, y_start, end_page, y_end)

    return spans


# ---------------------------------------------------------------------------
# Pixmap stitching helper
# ---------------------------------------------------------------------------

def _stitch_pixmaps(pixmaps: list) -> bytes:
    """
    Vertically stitch a list of fitz.Pixmap objects into a single PNG
    (returned as bytes).  Requires Pillow.
    """
    import io
    from PIL import Image

    images = [Image.open(io.BytesIO(pix.tobytes("png"))) for pix in pixmaps]
    total_h = sum(img.height for img in images)
    max_w   = max(img.width  for img in images)

    canvas = Image.new("RGB", (max_w, total_h), (255, 255, 255))
    y_off  = 0
    for img in images:
        canvas.paste(img, (0, y_off))
        y_off += img.height

    buf = io.BytesIO()
    canvas.save(buf, format="PNG")
    return buf.getvalue()


# ---------------------------------------------------------------------------
# Content-aware bottom edge helper
# ---------------------------------------------------------------------------

def _content_bottom(pdf_stem: str, page_num: int) -> float:
    """
    Return the y-coordinate of the bottom edge of the lowest content block
    on the given page, capped at _BOTTOM_SKIP.  Falls back to _BOTTOM_SKIP
    if the page JSON is not available or has no content.

    Uses the extracted page JSONs already on disk so no extra PDF rendering
    is needed.
    """
    page_json = ANS_EXTRACTED_DIR / pdf_stem / f"page_{page_num}.json"
    if not page_json.exists():
        return float(_BOTTOM_SKIP)

    d = json.loads(page_json.read_text(encoding="utf-8"))
    max_y = float(_TOP_SKIP)

    for block in d.get("text_blocks", []):
        y1 = block["bbox"][3]          # bottom of text block
        if y1 < _BOTTOM_SKIP:
            max_y = max(max_y, y1)

    for block in d.get("image_blocks", []):
        y1 = block["bbox"][3]
        if y1 < _BOTTOM_SKIP:
            max_y = max(max_y, y1)

    return min(max_y + CROP_PAD_BOT, float(_BOTTOM_SKIP))


# ---------------------------------------------------------------------------
# Step 3a — Crop per-problem answer regions (multi-page aware)
# ---------------------------------------------------------------------------

def crop_answer_pngs(
    pdf_stem: str,
    pdf_path: Path,
    spans: dict[int, tuple[int, float, int, float]],
    log: Callable,
) -> dict[int, Path]:
    """
    Render one PNG per problem, spanning all pages from start_page to end_page.

    - start_page  : crop from y_start downward
    - intermediate: crop _TOP_SKIP → actual content bottom (no trailing whitespace)
    - end_page    : crop _TOP_SKIP → min(y_end, actual content bottom)

    Multi-page crops are stitched vertically via Pillow.
    Saves to ANSWERS_DIR/{pdf_stem}/crops/{pdf_stem}_ans_{N:03d}.png.
    Returns {problem_number: png_path}.
    """
    crops_dir = ANSWERS_DIR / pdf_stem / "crops"
    crops_dir.mkdir(parents=True, exist_ok=True)

    doc   = fitz.open(str(pdf_path))
    saved: dict[int, Path] = {}

    try:
        for prob_num, (start_page, y_start, end_page, y_end) in sorted(spans.items()):
            pixmaps = []

            for page_num in range(start_page, end_page + 1):
                page  = doc[page_num - 1]
                page_h = page.rect.height

                # Top clip
                if page_num == start_page:
                    clip_top = max(0.0, y_start - CROP_PAD_TOP)
                else:
                    clip_top = float(_TOP_SKIP)

                # Bottom clip — always use actual content bottom to avoid
                # trailing whitespace, then further cap with the problem
                # boundary (y_end) on the last page.
                content_bot = _content_bottom(pdf_stem, page_num)
                if page_num == end_page:
                    clip_bottom = min(content_bot, y_end + CROP_PAD_BOT)
                else:
                    clip_bottom = content_bot

                clip = fitz.Rect(
                    CROP_MARGIN_X, clip_top,
                    page.rect.width - CROP_MARGIN_X, clip_bottom,
                )
                clip = clip & page.rect

                if clip.is_empty or clip.width < 10 or clip.height < 5:
                    continue

                mat = fitz.Matrix(CROP_SCALE, CROP_SCALE)
                pixmaps.append(page.get_pixmap(matrix=mat, clip=clip,
                                               colorspace=fitz.csRGB))

            if not pixmaps:
                log(f"    [warn] Üres terület, kihagyva: feladat {prob_num}")
                continue

            out_path = crops_dir / f"{pdf_stem}_ans_{prob_num:03d}.png"

            if len(pixmaps) == 1:
                pixmaps[0].save(str(out_path))
            else:
                try:
                    out_path.write_bytes(_stitch_pixmaps(pixmaps))
                except ImportError:
                    pixmaps[0].save(str(out_path))
                    log(f"    [warn] Pillow nincs telepítve — csak az első oldal mentve "
                        f"(feladat {prob_num}, {len(pixmaps)} oldal). "
                        f"Telepítsd: pip install Pillow")

            saved[prob_num] = out_path
    finally:
        doc.close()

    return saved


# ---------------------------------------------------------------------------
# Step 3b — Fallback: full-page render
# ---------------------------------------------------------------------------

def render_full_pages(
    pdf_stem: str,
    pdf_path: Path,
    log: Callable,
) -> dict[int, Path]:
    """
    Render every page of the PDF as a full-page PNG.
    Used as a fallback when step-04 segmentation finds no problem boundaries.
    Saves to ANSWERS_DIR/{pdf_stem}/pages/{pdf_stem}_page_{N:03d}.png.
    Returns {page_number: png_path}.
    """
    pages_dir = ANSWERS_DIR / pdf_stem / "pages"
    pages_dir.mkdir(parents=True, exist_ok=True)

    doc   = fitz.open(str(pdf_path))
    saved: dict[int, Path] = {}

    try:
        for i, page in enumerate(doc):
            page_num = i + 1
            mat = fitz.Matrix(CROP_SCALE, CROP_SCALE)
            pix = page.get_pixmap(matrix=mat, colorspace=fitz.csRGB)
            out_path = pages_dir / f"{pdf_stem}_page_{page_num:03d}.png"
            pix.save(str(out_path))
            saved[page_num] = out_path
    finally:
        doc.close()

    log(f"    Teljes oldalak mentve: {len(saved)} db.")
    return saved


# ---------------------------------------------------------------------------
# Step 4 — Upload to Supabase Storage
# ---------------------------------------------------------------------------

def upload_answer_crops(
    pdf_stem: str,
    crop_paths: dict[int, Path],
    log: Callable,
) -> dict[int, str]:
    """
    Upload PNG files to Supabase Storage (bucket: problem-images).

    Storage path per file:
        {pdf_stem}/crops/{filename}
    e.g.:
        k_mat_23maj_ut/crops/k_mat_23maj_ut_ans_005.png
        k_mat_23maj_ut/crops/k_mat_23maj_ut_page_001.png  (fallback mode)

    Returns {number: public_url}.
    """
    try:
        from dotenv import load_dotenv
        load_dotenv(ENV_PATH, override=False)
    except ImportError:
        pass  # rely on env vars already being set

    from supabase import create_client

    url = os.environ.get("NEXT_PUBLIC_SUPABASE_URL", "")
    key = os.environ.get("SUPABASE_SERVICE_ROLE_KEY", "")
    if not url or not key:
        raise RuntimeError(
            "Hiányzó env változók: NEXT_PUBLIC_SUPABASE_URL és/vagy "
            "SUPABASE_SERVICE_ROLE_KEY — ellenőrizd a .env.local fájlt."
        )

    supabase  = create_client(url, key)
    url_map: dict[int, str] = {}

    for num, png_path in sorted(crop_paths.items()):
        storage_path = f"{pdf_stem}/crops/{png_path.name}"
        try:
            data = png_path.read_bytes()
            supabase.storage.from_(STORAGE_BUCKET).upload(
                path=storage_path,
                file=data,
                file_options={"content-type": "image/png", "upsert": "true"},
            )
            public_url = supabase.storage.from_(STORAGE_BUCKET).get_public_url(
                storage_path
            )
            url_map[num] = public_url
        except Exception as exc:
            log(f"    [warn] Feltöltés sikertelen: {png_path.name} — {exc}")

    return url_map


# ---------------------------------------------------------------------------
# Per-PDF pipeline
# ---------------------------------------------------------------------------

def process_answer_pdf(
    pdf_stem: str,
    manifest_entry: dict,
    upload: bool,
    log: Callable,
) -> dict:
    """
    Full pipeline for one _ut PDF:
        1. Extract page layout (step 03 logic)
        2. Segment into answer y-ranges (step 04 logic)
        3. Crop per-answer PNGs  — or fall back to full-page renders
        4. Upload to Supabase (only if upload=True)

    Returns a summary dict.
    """
    pdf_path = _find_pdf_path(pdf_stem, manifest_entry)
    if not pdf_path:
        log(f"    [hiba] PDF nem található: {pdf_stem}.pdf")
        return {"ok": False, "error": "pdf_not_found"}

    # 1. Extract
    log("  1/4  Oldal kinyerés...")
    try:
        extract_answer_pdf(pdf_stem, pdf_path, log)
    except Exception as exc:
        log(f"    [hiba] Kinyerés sikertelen: {exc}")
        return {"ok": False, "error": f"extract: {exc}"}

    # 2. Segment
    log("  2/4  Szegmentálás...")
    try:
        spans = compute_problem_page_spans(pdf_stem, log)
    except Exception as exc:
        log(f"    [warn] Szegmentálás hiba ({exc}) — teljes oldalas fallback")
        spans = {}

    # 3. Crop
    log("  3/4  Vágás...")
    mode = "crops"
    try:
        if spans:
            crop_paths = crop_answer_pngs(pdf_stem, pdf_path, spans, log)
            log(f"    {len(crop_paths)} vágott PNG.")
        else:
            log("    Szegmentálás 0 találat — teljes oldalas fallback.")
            crop_paths = render_full_pages(pdf_stem, pdf_path, log)
            mode = "pages"
    except Exception as exc:
        log(f"    [hiba] Vágás sikertelen: {exc}")
        return {"ok": False, "error": f"crop: {exc}"}

    result: dict = {
        "ok":        True,
        "mode":      mode,
        "segmented": mode == "crops",
        "crops":     len(crop_paths),
    }

    # 4. Upload
    if upload and crop_paths:
        log(f"  4/4  Feltöltés ({len(crop_paths)} PNG)...")
        try:
            url_map = upload_answer_crops(pdf_stem, crop_paths, log)
            result["uploaded"] = len(url_map)
            log(f"    {len(url_map)} PNG feltöltve.")
        except Exception as exc:
            log(f"    [hiba] Feltöltés sikertelen: {exc}")
            result["upload_error"] = str(exc)
    else:
        log("  4/4  Feltöltés kihagyva (--upload nélkül).")

    return result


# ---------------------------------------------------------------------------
# Main entry point
# ---------------------------------------------------------------------------

def run(
    upload: bool = False,
    reset: bool = False,
    log: Callable = print,
) -> dict:
    """
    Process all _ut PDFs found in the manifest.

    upload  — also push PNGs to Supabase Storage after cropping
    reset   — clear saved progress and re-process everything
    """
    log("=== 09 — Megoldókulcs kivágás ===\n")

    manifest = _load_manifest()
    progress = {} if reset else _load_progress()

    if reset and PROGRESS_PATH.exists():
        PROGRESS_PATH.unlink()
        log("Progress törölve — újrakezdés.\n")

    # All classified solution PDFs that haven't been successfully processed yet
    targets = [
        (fname, entry)
        for fname, entry in manifest.items()
        if entry.get("is_solution_pdf")
        and entry.get("classified")
        and not entry.get("skip_reason")
        and not progress.get(Path(entry.get("local_path", fname)).stem, {}).get("ok")
    ]

    if not targets:
        log("Nincs feldolgozandó megoldókulcs PDF (minden kész, vagy nincs manifest).")
        return {"processed": 0, "total": 0, "total_crops": 0}

    log(f"{len(targets)} megoldókulcs PDF feldolgozása...\n")

    total_crops   = 0
    processed     = 0
    fallback_list = []

    for idx, (fname, entry) in enumerate(targets):
        pdf_stem = Path(entry.get("local_path", fname)).stem
        log(f"[{idx + 1}/{len(targets)}] {fname}")

        result = process_answer_pdf(pdf_stem, entry, upload=upload, log=log)

        progress[pdf_stem] = result
        _save_progress(progress)

        if result.get("ok"):
            total_crops += result.get("crops", 0)
            processed   += 1
            mode_label   = "szegmentált" if result.get("segmented") else "FALLBACK (teljes oldalak)"
            log(f"  → OK — {result.get('crops', 0)} PNG [{mode_label}]\n")
            if not result.get("segmented"):
                fallback_list.append(fname)
        else:
            log(f"  → HIBA — {result.get('error', '?')}\n")

    log("=" * 50)
    log(f"Kész: {processed}/{len(targets)} PDF feldolgozva, {total_crops} PNG összesen.")

    if fallback_list:
        log(f"\n[!] {len(fallback_list)} PDF szegmentálása nem sikerült (teljes oldalas fallback):")
        for f in fallback_list:
            log(f"    {f}")
        log("    → Ellenőrizd, hogy a szegmentáló helyesen ismeri-e fel a feladatszámokat.")

    if not upload:
        log("\nFeltöltés kihagyva — futtasd --upload kapcsolóval a Supabase-be töltéshez.")

    return {
        "processed":   processed,
        "total":       len(targets),
        "total_crops": total_crops,
        "fallbacks":   fallback_list,
    }


# ---------------------------------------------------------------------------
# CLI
# ---------------------------------------------------------------------------

if __name__ == "__main__":
    do_upload = "--upload" in sys.argv
    do_reset  = "--reset"  in sys.argv
    run(upload=do_upload, reset=do_reset)
    sys.exit(0)
