"""
import_matma_pg.py
-----------------
Generates SQL INSERT statements for every matma problem found under
scripts/data/problems/*matma*/ and prints them to stdout.

Usage — pipe directly into psql on .52:

  python scripts/import_matma_pg.py | ssh user@192.168.0.52 ^
      "sudo -u postgres psql -d matek_erettsegi_web"

Or save to a file first and review it:

  python scripts/import_matma_pg.py > matma_import.sql
  # review matma_import.sql, then:
  ssh user@192.168.0.52 "sudo -u postgres psql -d matek_erettsegi_web" < matma_import.sql
"""

from __future__ import annotations

import json
import sys
import uuid
from pathlib import Path

if sys.platform == "win32":
    sys.stdout.reconfigure(encoding="utf-8", errors="replace")
    sys.stderr.reconfigure(encoding="utf-8", errors="replace")

PROBLEMS_DIR = Path(__file__).parent / "data" / "problems"


def _esc(v: str | None) -> str:
    """Escape a Python value for SQL."""
    if v is None:
        return "NULL"
    return "'" + str(v).replace("'", "''") + "'"


def main() -> None:
    matma_dirs = sorted(d for d in PROBLEMS_DIR.iterdir() if d.is_dir() and "matma" in d.name)

    if not matma_dirs:
        print("-- No matma directories found under", PROBLEMS_DIR, file=sys.stderr)
        sys.exit(1)

    print("BEGIN;")
    print("DELETE FROM problems WHERE pdf_stem LIKE '%matma%';")
    total = 0

    for d in matma_dirs:
        pdf_stem = d.name
        json_files = sorted(d.glob("problem_*.json"))
        if not json_files:
            continue

        print(f"\n-- {pdf_stem} ({len(json_files)} problems)")

        for jf in json_files:
            with open(jf, encoding="utf-8") as f:
                p = json.load(f)

            num: int      = p["problem_number"]
            sub: str|None = p.get("sub_part")

            source_key   = f"{pdf_stem}__{num:03d}__{sub or ''}"
            crop_file    = f"{pdf_stem}_prob_{num:03d}.png"
            image_url    = f"/images/{pdf_stem}/crops/{crop_file}"

            tags = p.get("topic_tags", [])
            tags_sql = ("ARRAY[" + ",".join(f"'{t}'" for t in tags) + "]::text[]"
                        if tags else "ARRAY[]::text[]")

            max_pts = p.get("max_points")
            max_pts_sql = str(max_pts) if max_pts is not None else "NULL"

            row_id = str(uuid.uuid4())
            print(
                f"INSERT INTO problems "
                f"(id, created_at, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session, "
                f"is_secondary_language, exam_part, problem_number, sub_part, "
                f"statement_text, max_points, problem_image_url, "
                f"topic_tags, has_figure, ocr_used, notes, human_reviewed) VALUES ("
                f"{_esc(row_id)}, "
                f"NOW(), "
                f"{_esc(source_key)}, "
                f"{_esc(pdf_stem)}, "
                f"{_esc(p.get('pdf_filename', pdf_stem + '.pdf'))}, "
                f"{p['year']}, "
                f"{_esc(p['exam_type'])}, "
                f"{_esc(p['exam_session'])}, "
                f"true, "
                f"{_esc(p.get('exam_part'))}, "
                f"{num}, "
                f"{_esc(sub)}, "
                f"{_esc(p.get('statement_text', ''))}, "
                f"{max_pts_sql}, "
                f"{_esc(image_url)}, "
                f"{tags_sql}, "
                f"false, "
                f"{'true' if p.get('ocr_used') else 'false'}, "
                f"{_esc(p.get('notes', ''))}, "
                f"true"
                f");"
            )
            total += 1

    print("\nCOMMIT;")
    print(f"-- Done: {total} INSERT statements generated", file=sys.stderr)


if __name__ == "__main__":
    main()
