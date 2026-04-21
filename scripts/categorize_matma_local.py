"""
categorize_matma_local.py
-------------------------
Categorizes all matma problems using Claude, reading crop images directly
from disk (no server or Supabase needed). Writes topic_tags back into each
problem JSON file so that import_matma_pg.py can include them in the SQL.

Run BEFORE import_matma_pg.py.

Usage:
  python scripts/categorize_matma_local.py
  python scripts/categorize_matma_local.py --dry-run    # test without saving
  python scripts/categorize_matma_local.py --reset       # clear progress, restart
  python scripts/categorize_matma_local.py --limit 10   # process only N problems
"""

from __future__ import annotations

import argparse
import base64
import json
import os
import sys
import time
from pathlib import Path

if sys.platform == "win32":
    sys.stdout.reconfigure(encoding="utf-8", errors="replace")
    sys.stderr.reconfigure(encoding="utf-8", errors="replace")

# ---------------------------------------------------------------------------
# Paths
# ---------------------------------------------------------------------------

SCRIPTS_DIR   = Path(__file__).parent
PROBLEMS_DIR  = SCRIPTS_DIR / "data" / "problems"
PROGRESS_FILE = SCRIPTS_DIR / "data" / "matma_categorize_progress.json"
ENV_PATH      = SCRIPTS_DIR.parent / ".env.local"

CLAUDE_MODEL   = "claude-sonnet-4-6"
MAX_PER_MINUTE = 30
SLEEP_BETWEEN  = 60 / MAX_PER_MINUTE  # 2 s between requests

# ---------------------------------------------------------------------------
# Topic taxonomy  (kept in sync with 08_claude_categorize.py)
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

VALID_SLUGS = set(TOPIC_LABELS.keys())

TAXONOMY_TEXT = "\n".join(
    f'  "{slug}" — {label}' for slug, label in TOPIC_LABELS.items()
)

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


def build_user_message(
    exam_type: str,
    year: int,
    max_points: int | None,
    sub_part: str | None = None,
    statement_text: str | None = None,
) -> str:
    level = "Középszint" if exam_type == "kozep" else "Emelt szint"
    pts   = f"{max_points} pont" if max_points else "ismeretlen pontszám"

    msg = f"Level: {level} ({year}) — Max points: {pts}\n"
    if sub_part:
        msg += f"Sub-part: {sub_part})\n"
    if statement_text:
        msg += f"\nProblem text:\n{statement_text.strip()}\n"
    if sub_part:
        msg += f"\nFocus ONLY on sub-part {sub_part}). What are the topic tags for THIS sub-part specifically?"
    else:
        msg += "\nWhat are the topic tags for this problem?"
    return msg


# ---------------------------------------------------------------------------
# Environment
# ---------------------------------------------------------------------------

def load_env() -> None:
    try:
        from dotenv import load_dotenv
        load_dotenv(ENV_PATH, override=False)
    except ImportError:
        pass


def get_claude_client():
    import anthropic
    api_key = os.environ.get("ANTHROPIC_API_KEY", "")
    if not api_key:
        raise RuntimeError("ANTHROPIC_API_KEY not set in .env.local")
    return anthropic.Anthropic(api_key=api_key)


# ---------------------------------------------------------------------------
# Progress (keyed by source_key so it survives re-runs)
# ---------------------------------------------------------------------------

def load_progress() -> set[str]:
    if PROGRESS_FILE.exists():
        with open(PROGRESS_FILE, encoding="utf-8") as f:
            return set(json.load(f).get("done", []))
    return set()


def save_progress(done: set[str]) -> None:
    PROGRESS_FILE.parent.mkdir(parents=True, exist_ok=True)
    with open(PROGRESS_FILE, "w", encoding="utf-8") as f:
        json.dump({"done": sorted(done)}, f, ensure_ascii=False, indent=2)


# ---------------------------------------------------------------------------
# Claude API call  (identical logic to 08_claude_categorize.py)
# ---------------------------------------------------------------------------

def call_claude(
    client,
    image_bytes: bytes,
    exam_type: str,
    year: int,
    max_points: int | None,
    sub_part: str | None = None,
    statement_text: str | None = None,
) -> dict | None:
    import anthropic

    image_b64 = base64.standard_b64encode(image_bytes).decode("utf-8")
    user_text = build_user_message(exam_type, year, max_points, sub_part, statement_text)

    for attempt in range(2):
        try:
            response = client.messages.create(
                model=CLAUDE_MODEL,
                max_tokens=256,
                system=[
                    {
                        "type": "text",
                        "text": SYSTEM_PROMPT,
                        "cache_control": {"type": "ephemeral"},
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
                            {"type": "text", "text": user_text},
                        ],
                    }
                ],
            )

            raw = response.content[0].text.strip()
            if raw.startswith("```"):
                raw = raw.split("```")[1]
                if raw.startswith("json"):
                    raw = raw[4:]
                raw = raw.strip()
            return json.loads(raw)

        except json.JSONDecodeError:
            if attempt == 0:
                print("    [FIGYELEM] Nem JSON válasz, újrapróbálás...", end=" ", flush=True)
                try:
                    followup = client.messages.create(
                        model=CLAUDE_MODEL,
                        max_tokens=128,
                        messages=[
                            {"role": "user",      "content": "Return ONLY the JSON object with topic_tags."},
                            {"role": "assistant", "content": response.content[0].text},
                            {"role": "user",      "content": 'Respond with ONLY: {"topic_tags": ["slug1"]}'},
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
            print(f"    [FIGYELEM] JSON parse hiba: {response.content[0].text[:100]!r}")
            return None

        except anthropic.RateLimitError:
            if attempt == 0:
                print("    [429] Rate limit — várakozás 65s...", end=" ", flush=True)
                time.sleep(65)
                continue
            print("    [HIBA] Rate limit ismételten — kihagyás")
            return None

        except Exception as exc:
            print(f"    [HIBA] Claude API hiba: {exc}")
            return None

    return None


def validate_tags(data: dict) -> list[str]:
    raw = data.get("topic_tags", [])
    if not isinstance(raw, list):
        return []
    return [t for t in raw if isinstance(t, str) and t in VALID_SLUGS]


# ---------------------------------------------------------------------------
# Collect all matma problem JSONs
# ---------------------------------------------------------------------------

def collect_targets() -> list[tuple[Path, dict]]:
    """Return list of (json_path, problem_dict) for all matma problems."""
    targets = []
    for d in sorted(PROBLEMS_DIR.iterdir()):
        if not d.is_dir() or "matma" not in d.name:
            continue
        for jf in sorted(d.glob("problem_*.json")):
            with open(jf, encoding="utf-8") as f:
                p = json.load(f)
            targets.append((jf, p))
    return targets


# ---------------------------------------------------------------------------
# Main
# ---------------------------------------------------------------------------

def run(dry_run: bool = False, reset: bool = False, limit: int | None = None) -> None:
    load_env()

    if reset:
        if PROGRESS_FILE.exists():
            PROGRESS_FILE.unlink()
            print("Progress törölve.")
        # Clear any tags written by previous (incorrect) runs
        cleared = 0
        for d in PROBLEMS_DIR.iterdir():
            if not d.is_dir() or "matma" not in d.name:
                continue
            for jf in d.glob("problem_*.json"):
                p = json.load(open(jf, encoding="utf-8"))
                if p.get("topic_tags"):
                    p["topic_tags"] = []
                    with open(jf, "w", encoding="utf-8") as f:
                        json.dump(p, f, ensure_ascii=False, indent=2)
                    cleared += 1
        if cleared:
            print(f"  {cleared} JSON topic_tags törölve.")

    done = load_progress()

    print(f"=== Matma helyi kategorizálás ({CLAUDE_MODEL}) ===")
    print(f"  Már kész: {len(done)} alrész")
    if dry_run:
        print("  *** DRY RUN — nem ír fájlba ***")
    print()

    client  = get_claude_client()
    targets = collect_targets()

    # One Claude call per JSON (sub-part) — statement_text tells Claude which sub-part to focus on
    pending = [
        (jf, p) for jf, p in targets
        if f"{p['pdf_stem']}__{p['problem_number']:03d}__{p.get('sub_part') or ''}" not in done
        and not p.get("topic_tags")
    ]

    if limit:
        pending = pending[:limit]

    total = len(pending)
    print(f"  Kategorizálandó: {total} alrész\n")

    if not total:
        print("Nincs teendő — minden már kategorizálva.")
        return

    success = skipped = 0

    for i, (jf, p) in enumerate(pending):
        pdf_stem = p["pdf_stem"]
        num      = p["problem_number"]
        sub      = p.get("sub_part")
        key      = f"{pdf_stem}__{num:03d}__{sub or ''}"

        crop_path = PROBLEMS_DIR / pdf_stem / "crops" / f"{pdf_stem}_prob_{num:03d}.png"

        print(f"  [{i+1}/{total}] {key} ", end="", flush=True)

        if not crop_path.exists():
            print("KIHAGYVA (nincs kép)")
            done.add(key)
            save_progress(done)
            skipped += 1
            continue

        image_bytes = crop_path.read_bytes()

        data = call_claude(
            client, image_bytes,
            p["exam_type"], p["year"], p.get("max_points"),
            sub_part=sub,
            statement_text=p.get("statement_text"),
        )
        if data is None:
            print("KIHAGYVA (Claude hiba)")
            skipped += 1
            time.sleep(SLEEP_BETWEEN)
            continue

        tags = validate_tags(data)
        print(f"→ {tags}", end="")

        if not dry_run:
            p["topic_tags"] = tags
            with open(jf, "w", encoding="utf-8") as f:
                json.dump(p, f, ensure_ascii=False, indent=2)
            print(" ✓")
        else:
            print(" (dry run)")

        done.add(key)
        save_progress(done)
        success += 1

        time.sleep(SLEEP_BETWEEN)

    print(f"\nKész: {success} alrész kategorizálva, {skipped} kihagyva.")
    print("Következő lépés: python scripts/import_matma_pg.py > matma_import.sql")


# ---------------------------------------------------------------------------
# CLI
# ---------------------------------------------------------------------------

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Matma helyi kategorizáló")
    parser.add_argument("--dry-run", action="store_true", help="Ne írjon fájlba")
    parser.add_argument("--reset",   action="store_true", help="Progress törlése")
    parser.add_argument("--limit",   type=int,            help="Csak N feladat")
    args = parser.parse_args()

    run(dry_run=args.dry_run, reset=args.reset, limit=args.limit)
    sys.exit(0)
