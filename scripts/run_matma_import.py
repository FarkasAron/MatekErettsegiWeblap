"""
run_matma_import.py
-------------------
Imports all matma problems directly into PostgreSQL on 192.168.0.52.
Reads the same local JSONs as import_matma_pg.py, connects via DATABASE_URL.

Usage:
  python scripts/run_matma_import.py
  python scripts/run_matma_import.py --dry-run   # print SQL only, no DB write
"""

from __future__ import annotations

import argparse
import json
import os
import sys
import uuid
from pathlib import Path

if sys.platform == "win32":
    sys.stdout.reconfigure(encoding="utf-8", errors="replace")
    sys.stderr.reconfigure(encoding="utf-8", errors="replace")

SCRIPTS_DIR  = Path(__file__).parent
PROBLEMS_DIR = SCRIPTS_DIR / "data" / "problems"
ENV_PATH     = SCRIPTS_DIR.parent / ".env.local"


def load_env() -> None:
    try:
        from dotenv import load_dotenv
        load_dotenv(ENV_PATH, override=False)
    except ImportError:
        pass


def collect_rows() -> list[dict]:
    rows = []
    for d in sorted(PROBLEMS_DIR.iterdir()):
        if not d.is_dir() or "matma" not in d.name:
            continue
        for jf in sorted(d.glob("problem_*.json")):
            p = json.load(open(jf, encoding="utf-8"))
            num = p["problem_number"]
            sub = p.get("sub_part")
            rows.append({
                "id":                   str(uuid.uuid4()),
                "source_key":           f"{d.name}__{num:03d}__{sub or ''}",
                "pdf_stem":             d.name,
                "pdf_filename":         p.get("pdf_filename", d.name + ".pdf"),
                "year":                 p["year"],
                "exam_type":            p["exam_type"],
                "exam_session":         p["exam_session"],
                "is_secondary_language": True,
                "exam_part":            p.get("exam_part"),
                "problem_number":       num,
                "sub_part":             sub,
                "statement_text":       p.get("statement_text", ""),
                "max_points":           p.get("max_points"),
                "problem_image_url":    f"/images/{d.name}/crops/{d.name}_prob_{num:03d}.png",
                "topic_tags":           p.get("topic_tags", []),
                "ocr_used":             bool(p.get("ocr_used")),
                "notes":                p.get("notes", ""),
                "human_reviewed":       True,
            })
    return rows


def main(dry_run: bool = False) -> None:
    load_env()

    rows = collect_rows()
    print(f"Feladatok: {len(rows)}")

    if dry_run:
        for r in rows[:5]:
            print(r)
        print("... (dry run, nem ír az adatbázisba)")
        return

    db_url = os.environ.get("DATABASE_URL", "")
    if not db_url:
        print("[HIBA] DATABASE_URL nincs beállítva a .env.local-ban", file=sys.stderr)
        sys.exit(1)

    try:
        import psycopg2
        import psycopg2.extras
    except ImportError:
        print("[HIBA] Hiányzó csomag: pip install psycopg2-binary", file=sys.stderr)
        sys.exit(1)

    conn = psycopg2.connect(db_url)
    conn.set_client_encoding("UTF8")
    cur  = conn.cursor()

    # Remove any previously imported matma rows so re-runs are safe
    cur.execute("DELETE FROM problems WHERE pdf_stem LIKE '%matma%'")
    deleted = cur.rowcount
    if deleted:
        print(f"  {deleted} korábbi matma sor törölve (újraimport).")

    inserted = 0
    for r in rows:
        cur.execute(
            """
            INSERT INTO problems (
                id, source_key, pdf_stem, pdf_filename, year, exam_type, exam_session,
                is_secondary_language, exam_part, problem_number, sub_part,
                statement_text, max_points, problem_image_url,
                topic_tags, ocr_used, notes, human_reviewed
            ) VALUES (
                %(id)s, %(source_key)s, %(pdf_stem)s, %(pdf_filename)s, %(year)s,
                %(exam_type)s, %(exam_session)s, %(is_secondary_language)s,
                %(exam_part)s, %(problem_number)s, %(sub_part)s,
                %(statement_text)s, %(max_points)s, %(problem_image_url)s,
                %(topic_tags)s, %(ocr_used)s, %(notes)s, %(human_reviewed)s
            )
            """,
            r,
        )
        inserted += 1

    conn.commit()
    cur.close()
    conn.close()

    print(f"Kész: {inserted} sor beszúrva.")
    print("Következő lépés: másold a képeket a .52-es szerverre.")


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--dry-run", action="store_true")
    args = parser.parse_args()
    main(dry_run=args.dry_run)
