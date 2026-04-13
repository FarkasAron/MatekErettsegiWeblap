"""
08_claude_categorize.py
-----------------------
Auto-categorizes uncategorized problems using the Claude claude-sonnet-4-6 API.

For each problem where topic_tags is empty and human_reviewed is false:
  1. Downloads the problem image from Supabase Storage (public URL)
  2. Sends it to Claude with the full topic taxonomy
  3. Writes back topic_tags to the DB
     (human_reviewed stays FALSE — the review app is used to verify AI output)

Rate limits (pay-as-you-go, Tier 1):
  - 30 req/min (conservative — safe under the 50 RPM limit)
  - No daily cap — run as many as you need
  - Resumes where it left off via scripts/data/claude_progress.json

Install dependencies (once):
  pip install anthropic requests python-dotenv supabase

Add your API key to .env.local:
  ANTHROPIC_API_KEY=sk-ant-...

Run:
  python scripts/08_claude_categorize.py
  python scripts/08_claude_categorize.py --dry-run        # test without writing to DB
  python scripts/08_claude_categorize.py --reset           # clear progress and restart
  python scripts/08_claude_categorize.py --limit 10        # process only N problems
"""

from __future__ import annotations

import argparse
import base64
import json
import os
import sys
import time
from datetime import datetime, timezone
from pathlib import Path

import requests

if sys.platform == "win32":
    sys.stdout.reconfigure(encoding="utf-8", errors="replace")
    sys.stderr.reconfigure(encoding="utf-8", errors="replace")

# ---------------------------------------------------------------------------
# Config
# ---------------------------------------------------------------------------

SCRIPTS_DIR    = Path(__file__).parent
ENV_PATH       = SCRIPTS_DIR.parent / ".env.local"
PROGRESS_FILE  = SCRIPTS_DIR / "data" / "claude_progress.json"

CLAUDE_MODEL   = "claude-sonnet-4-6"
MAX_PER_MINUTE = 30          # conservative — free to raise if no 429s appear
SLEEP_BETWEEN  = 60 / MAX_PER_MINUTE  # 2 seconds between requests

# ---------------------------------------------------------------------------
# Topic taxonomy  (must match 07_review_app.py)
# ---------------------------------------------------------------------------

TOPIC_LABELS: dict[str, str] = {
    "halmazok":              "Halmazok",
    "logika":                "Matematikai logika",
    "kombinatorika":         "Kombinatorika",
    "grafelmelet":           "Gráfelmélet",
    "valoszinuseg":          "Valószínűség-számítás",
    "statisztika":           "Statisztika",
    "szamok-muveletek":      "Számok és műveletek",
    "szamrendszerek":        "Számrendszerek",
    "szamelmelet":           "Számelmélet",
    "algebra":               "Algebra",
    "egyenletek":            "Egyenletek és egyenlőtlenségek",
    "fuggvenyek":            "Függvények és grafikonok",
    "exponencialis":         "Exponenciális és logaritmikus függvények",
    "trigonometria":         "Trigonometria",
    "sorozatok":             "Sorozatok",
    "penzugyi-matematika":   "Pénzügyi matematika",
    "geometria-sik":         "Síkgeometria",
    "geometria-ter":         "Térgeometria",
    "koordinata-geometria":  "Koordinátageometria",
    "vektorok":              "Vektorok",
    "transzformacio":        "Geometriai transzformációk",
    "hatarertek":            "Határérték és folytonosság",
    "differencialszamitas":  "Differenciálszámítás",
    "integralszamitas":      "Integrálszámítás",
    "bizonyitasok":          "Bizonyítások és elmélet",
    "szovegfeladas":         "Szöveges feladat",
}

VALID_SLUGS      = set(TOPIC_LABELS.keys())
VALID_DIFFICULTY = {"konnyu", "kozepes", "nehez"}

TAXONOMY_TEXT = "\n".join(
    f'  "{slug}" — {label}' for slug, label in TOPIC_LABELS.items()
)

# ---------------------------------------------------------------------------
# Prompts
# The system prompt is static (same for every call) — Claude caches it
# automatically after the first request, so you only pay for it once.
# ---------------------------------------------------------------------------

SYSTEM_PROMPT = f"""You are an expert Hungarian high school mathematics teacher. \
Your job is to analyze Érettségi Matematika exam problem images and assign topic tags.

Respond with ONLY a valid JSON object — no markdown, no explanation, nothing else:

{{
  "topic_tags": ["slug1", "slug2"]
}}

━━━ TOPIC TAGS ━━━
Use EXACTLY as many tags as the problem genuinely requires — no more, no less.
Do NOT pad with vague tags. But do NOT omit a topic just because the problem is mostly about something else.
If a sub-part requires a clearly different math skill, tag it.

Choose slugs ONLY from this list:
{TAXONOMY_TEXT}

━━━ DISAMBIGUATION RULES ━━━
- "valoszinuseg": ONLY when the problem asks for a probability or expected value (dice, defect rates, drawing from a set). NOT for percentages or ratios alone.
- "kombinatorika": ONLY for pure counting problems (how many arrangements/selections exist). Do NOT add just because probability uses counting internally.
- "grafelmelet": ONLY when the problem explicitly uses graph theory concepts (vertices, edges, paths, trees, or graph diagrams). A round-robin tournament IS grafelmelet (complete graph). A job/seat assignment problem where people are just counted or arranged is NOT grafelmelet — that is kombinatorika.
- "exponencialis": use for a^x functions, logarithms, compound growth/decay, repeated percentage change year-over-year.
- "sorozatok": use when the problem has an explicit arithmetic or geometric sequence (n-th term, sum, quotient).
- "penzugyi-matematika": ONLY for problems explicitly about loans, instalment plans, savings, or financial products. Requires a financial context, not just money mentioned in passing.
- "algebra": ONLY as the PRIMARY topic for general algebraic manipulation. Do NOT add as a filler tag when a more specific tag fits.
- "szamok-muveletek": ONLY as PRIMARY topic for basic arithmetic. Do NOT add as a filler.
- "vektorok": ONLY when the problem explicitly involves vector operations (dot product, cross product, vector addition). A coordinate geometry problem is NOT vektorok.
- "egyenletek": ONLY when the problem explicitly asks to solve an equation or inequality.
- "szovegfeladas": ONLY when the problem has a real narrative with named characters or a real-world scenario (e.g. Anna buys coffee, a car depreciates, 3 friends apply for jobs). Do NOT add for simple computations phrased as sentences or for chart/data-reading tasks.
- "geometria-ter": 3D shapes — cone, cylinder, sphere, frustum, pyramid, prism, volume, surface area.
- "geometria-sik": 2D shapes — triangles, circles, polygons, area, perimeter, angles.
- "koordinata-geometria": problems using coordinate system, equations of lines/circles, distances, midpoints.

━━━ VERIFIED EXAMPLES ━━━
- Car depreciates 6%/year for 5 years, find value and insurance cost → ["exponencialis", "penzugyi-matematika", "szovegfeladas"]
- Capsule geometry (frustum volume, hemisphere) + defect probability → ["geometria-ter", "valoszinuseg", "szovegfeladas"]
- How many 3-digit numbers have all different digits? → ["kombinatorika"]
- Standard deviation of school grades → ["statisztika"]
- Absolute value equation |x − 2| = 7 → ["egyenletek"]
- Round-robin tournament, count games played → ["grafelmelet", "kombinatorika", "szovegfeladas"]
- 3 people each apply to different jobs, count valid assignments → ["kombinatorika", "szovegfeladas"]  (NOT grafelmelet)
- Solve 9^(x+1) + 78·3^(x-1) − 3 = 0, AND find n in geometric sequence → ["exponencialis", "egyenletek", "sorozatok"]
- Quadrilateral logic problem (truth values of geometric statements) → ["logika", "geometria-sik"]
- Points A and B given, find angle AB makes with x-axis, midpoint, circle equation → ["koordinata-geometria"]
- Triangle inequality: can third side be 9 cm or 10 cm? → ["geometria-sik"]
- Bar chart with misleading y-axis + solve a^(1/2) = 4 → ["statisztika", "egyenletek"]
"""


def build_user_message(exam_type: str, year: int, max_points: int | None) -> str:
    level = "Középszint" if exam_type == "kozep" else "Emelt szint"
    pts   = f"{max_points} pont" if max_points else "ismeretlen pontszám"
    return f"Level: {level} ({year}) — Max points: {pts}\n\nWhat are the topic tags for this problem?"


# ---------------------------------------------------------------------------
# Environment
# ---------------------------------------------------------------------------

def load_env() -> None:
    try:
        from dotenv import load_dotenv
        load_dotenv(ENV_PATH, override=False)
    except ImportError:
        pass


def get_supabase():
    from supabase import create_client
    url = os.environ["NEXT_PUBLIC_SUPABASE_URL"]
    key = os.environ["SUPABASE_SERVICE_ROLE_KEY"]
    return create_client(url, key)


def get_claude_client():
    import anthropic
    api_key = os.environ.get("ANTHROPIC_API_KEY", "")
    if not api_key:
        raise RuntimeError("ANTHROPIC_API_KEY not found in .env.local")
    return anthropic.Anthropic(api_key=api_key)


# ---------------------------------------------------------------------------
# Progress file  (tracks processed IDs so runs can be resumed)
# ---------------------------------------------------------------------------

def load_progress() -> dict:
    if PROGRESS_FILE.exists():
        with open(PROGRESS_FILE, encoding="utf-8") as f:
            return json.load(f)
    return {"processed": []}


def save_progress(progress: dict) -> None:
    PROGRESS_FILE.parent.mkdir(parents=True, exist_ok=True)
    with open(PROGRESS_FILE, "w", encoding="utf-8") as f:
        json.dump(progress, f, ensure_ascii=False, indent=2)


# ---------------------------------------------------------------------------
# Image download
# ---------------------------------------------------------------------------

def fetch_image_bytes(url: str) -> bytes | None:
    try:
        r = requests.get(url, timeout=20)
        r.raise_for_status()
        return r.content
    except Exception as exc:
        print(f"    [FIGYELEM] Kép letöltése sikertelen: {exc}")
        return None


# ---------------------------------------------------------------------------
# Claude API call
# ---------------------------------------------------------------------------

def call_claude(client, image_bytes: bytes, exam_type: str, year: int, max_points: int | None) -> dict | None:
    """
    Sends the image + context to Claude and returns parsed JSON dict.
    Retries once on 429 rate-limit errors.
    Returns None if the response can't be parsed.
    """
    import anthropic

    image_b64   = base64.standard_b64encode(image_bytes).decode("utf-8")
    user_text   = build_user_message(exam_type, year, max_points)

    for attempt in range(2):
        try:
            response = client.messages.create(
                model=CLAUDE_MODEL,
                max_tokens=256,
                system=[
                    {
                        "type": "text",
                        "text": SYSTEM_PROMPT,
                        "cache_control": {"type": "ephemeral"},  # cached after 1st call
                    }
                ],
                messages=[
                    {
                        "role": "user",
                        "content": [
                            {
                                "type": "image",
                                "source": {
                                    "type": "base64",
                                    "media_type": "image/png",
                                    "data": image_b64,
                                },
                            },
                            {
                                "type": "text",
                                "text": user_text,
                            },
                        ],
                    }
                ],
            )

            raw = response.content[0].text.strip()

            # Strip markdown code fences if present
            if raw.startswith("```"):
                raw = raw.split("```")[1]
                if raw.startswith("json"):
                    raw = raw[4:]
                raw = raw.strip()

            return json.loads(raw)

        except json.JSONDecodeError:
            # Claude returned plain text instead of JSON — ask it to reformat
            if attempt == 0:
                print(f"    [FIGYELEM] Nem JSON válasz, újrapróbálás...", end=" ", flush=True)
                try:
                    followup = client.messages.create(
                        model=CLAUDE_MODEL,
                        max_tokens=128,
                        messages=[
                            {
                                "role": "user",
                                "content": "Return ONLY the JSON object with topic_tags. No explanation.",
                            },
                            {
                                "role": "assistant",
                                "content": response.content[0].text,
                            },
                            {
                                "role": "user",
                                "content": 'Respond with ONLY this format: {"topic_tags": ["slug1", "slug2"]}',
                            },
                        ],
                    )
                    raw2 = followup.content[0].text.strip()
                    if raw2.startswith("```"):
                        raw2 = raw2.split("```")[1]
                        if raw2.startswith("json"):
                            raw2 = raw2[4:]
                        raw2 = raw2.strip()
                    return json.loads(raw2)
                except Exception:
                    pass
            print(f"    [FIGYELEM] JSON parse hiba — nyers válasz: {response.content[0].text[:200]!r}")
            return None

        except anthropic.RateLimitError:
            if attempt == 0:
                wait = 65
                print(f"    [429] Rate limit — várakozás {wait}s...", end=" ", flush=True)
                time.sleep(wait)
                continue
            print("    [HIBA] Rate limit ismételten — kihagyás")
            return None

        except Exception as exc:
            print(f"    [HIBA] Claude API hiba: {exc}")
            return None

    return None


def validate_response(data: dict) -> list[str]:
    raw_tags = data.get("topic_tags", [])
    if not isinstance(raw_tags, list):
        raw_tags = []
    return [t for t in raw_tags if isinstance(t, str) and t in VALID_SLUGS]


# ---------------------------------------------------------------------------
# Main loop
# ---------------------------------------------------------------------------

def run(dry_run: bool = False, reset: bool = False, limit: int | None = None, mark_reviewed: bool = False) -> None:
    load_env()

    if reset and PROGRESS_FILE.exists():
        PROGRESS_FILE.unlink()
        print("Progress file törölve. Újrakezdjük az elejéről.")

    progress = load_progress()
    already_done: set[str] = set(progress["processed"])

    print(f"=== 08 - Claude auto-kategorizálás ({CLAUDE_MODEL}) ===")
    print(f"  Már feldolgozva: {len(already_done)} feladat")
    if dry_run:
        print("  *** DRY RUN — nem ír az adatbázisba ***")
    if limit:
        print(f"  Limit: {limit} feladat")
    print()

    supabase = get_supabase()
    client   = get_claude_client()

    # Fetch all uncategorized, unreviewed problems (paginated)
    print("  Feladatok lekérdezése...")
    all_rows: list[dict] = []
    page_size = 1000
    offset = 0
    while True:
        result = (
            supabase.table("problems")
            .select("id,exam_type,year,max_points,problem_image_url,topic_tags")
            .eq("human_reviewed", False)
            .range(offset, offset + page_size - 1)
            .execute()
        )
        batch = result.data or []
        all_rows.extend(batch)
        if len(batch) < page_size:
            break
        offset += page_size

    # Filter: no tags yet, not yet processed, has an image
    targets = [
        r for r in all_rows
        if not r.get("topic_tags")
        and r["id"] not in already_done
        and r.get("problem_image_url")
    ]

    if limit:
        targets = targets[:limit]

    print(f"  Kategorizálandó feladatok: {len(targets)}")
    print()

    if not targets:
        print("Nincs feldolgozandó feladat — minden kategorizálva vagy nincs kép.")
        return

    success = 0
    skipped = 0

    for i, row in enumerate(targets):
        pid       = row["id"]
        img_url   = row["problem_image_url"]
        exam_type = row.get("exam_type", "kozep")
        year      = row.get("year", 0)
        max_pts   = row.get("max_points")

        print(f"  [{i+1}/{len(targets)}] {pid[:8]}... ", end="", flush=True)

        # Download image
        image_bytes = fetch_image_bytes(img_url)
        if not image_bytes:
            print("KIHAGYVA (kép letöltése sikertelen)")
            already_done.add(pid)
            progress["processed"].append(pid)
            save_progress(progress)
            skipped += 1
            continue

        # Call Claude
        data = call_claude(client, image_bytes, exam_type, year, max_pts)

        if data is None:
            print("KIHAGYVA (Claude hiba)")
            skipped += 1
            time.sleep(SLEEP_BETWEEN)
            continue

        tags = validate_response(data)
        print(f"tags={tags}", end="")

        if not dry_run:
            try:
                update_payload = {
                    "topic_tags": tags,
                    "notes":      f"[AI:{CLAUDE_MODEL}]",
                    "updated_at": datetime.now(timezone.utc).isoformat(),
                }
                if mark_reviewed:
                    update_payload["human_reviewed"] = True
                supabase.table("problems").update(update_payload).eq("id", pid).execute()
                reviewed_marker = " ✓ [human_reviewed=true]" if mark_reviewed else " ✓"
                print(reviewed_marker)
            except Exception as exc:
                print(f"  [DB HIBA] {exc}")
                skipped += 1
                time.sleep(SLEEP_BETWEEN)
                continue
        else:
            print("  (dry run)")

        already_done.add(pid)
        progress["processed"].append(pid)
        save_progress(progress)
        success += 1

        time.sleep(SLEEP_BETWEEN)

    print()
    print(f"Kész: {success} sikeresen kategorizálva, {skipped} kihagyva.")


# ---------------------------------------------------------------------------
# CLI
# ---------------------------------------------------------------------------

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Claude auto-kategorizáló")
    parser.add_argument("--dry-run",       action="store_true", help="Ne írjon az adatbázisba")
    parser.add_argument("--reset",         action="store_true", help="Törli a haladást és újrakezdi")
    parser.add_argument("--limit",         type=int,            help="Csak N feladatot dolgozzon fel")
    parser.add_argument("--mark-reviewed", action="store_true", help="human_reviewed=true is beállít (megjelenik a weboldalon)")
    args = parser.parse_args()

    run(dry_run=args.dry_run, reset=args.reset, limit=args.limit, mark_reviewed=args.mark_reviewed)
    sys.exit(0)
