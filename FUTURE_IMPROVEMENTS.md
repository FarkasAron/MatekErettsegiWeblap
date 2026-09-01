# Future Improvements

Backlog of deferred enhancements. Each entry records *what* the change is, *why*
it was deferred, and a rough *scope* so it can be picked up later without
re-deriving the context.

---

## Per-sub-part point scoring

**What:** Store and display the individual point value of each sub-part
(a / b / c / …), instead of only the whole-problem `max_points`.

**Current behaviour:** Every `problems` row for a given problem number carries the
same `max_points` value — the total for the whole problem. The sub-part list
shows sub-parts without their own point values, and the displayed point badge is
always the whole-problem total.

**Why deferred:** It requires, in order:
1. A pipeline / extraction change to detect and record per-sub-part points from
   the source exam PDFs (accuracy risk — points are not always cleanly laid out).
2. A schema change (new nullable column) plus a data backfill across the
   ~2,500 existing problems.
3. UI work in the sub-part list and in the worksheet PDF export.

That is a meaningful amount of work and extraction-accuracy risk for a secondary
benefit. Whole-problem point values are adequate for current classroom and
self-study use.

**Rough scope:**
- Pipeline: `scripts/04_segment_problems.py` (or the categorization step) to
  capture per-sub-part points.
- Schema: new nullable `sub_part_points smallint` on `problems`.
- Importer: populate the new column; backfill script for existing rows.
- Frontend: render per-sub-part points in the sub-part list; keep the
  whole-problem total on the card head.
- Worksheet PDF: optional per-sub-part point column in the export layout.

**Added:** 2026-09-01

---

# Known bugs

## Lightbox zoom does not visually scale the image

**What:** In the problem / answer lightbox (`ZoomableImage`), Ctrl+scroll (and
the +/- buttons / pinch) update the zoom-percent indicator, but the image itself
does not visibly grow — panning by scroll also has nothing larger to pan over.

**Status:** Pre-existing — present before the §8 grouping refactor. Not caused by
`ProblemGroupCard`; the same `ZoomableImage` component is used by the old
`ProblemCard`.

**Likely area:** `src/components/ZoomableImage.tsx` — the `scale` state updates
(the indicator reads from it) but the image's `width: ${scale * 100}%` /
container `overflow-auto` is not producing a visible size change. Possibly the
`max-h-[70vh]` container + `height: auto` image interaction, or the flex/`max-w`
wrapper clipping the scaled width.

**Added:** 2026-09-01

## Topic taxonomy in `TOPIC_LABELS` is out of sync with the DB

**What:** `src/lib/supabase.ts` `TOPIC_LABELS` and the `topic_tags` values
actually stored in the database do not match.

- In the DB but missing a label: `algebra`, `bizonyitasok`,
  `penzugyi-matematika`, `szamok-muveletek`, `szamrendszerek`, `transzformacio`,
  `hatarertek` (and `koordinata-geometria` is present as that slug).
- In `TOPIC_LABELS` but never used in the DB: `komplex`, `bizonyitas`,
  `penzugy`, `informalis`, `egyeb`, `matrixok`.

**Impact:**
- `/feladatok?tema=<unmapped slug>` is silently dropped by `sanitizeFilters`
  (`raw.tema in TOPIC_LABELS` fails) → the filter does nothing.
- Cards / stats fall back to showing the raw slug (`TOPIC_LABELS[tag] ?? tag`).
- Homepage / `temakoren-kint` topic tiles link to slugs that may not filter.

**Status:** Pre-existing, unrelated to the §8 grouping refactor. Needs a pass to
reconcile the label map (and possibly the pipeline categoriser's tag set and
`PROJECT_PLAN.md` §2 canonical taxonomy) with reality, then a data check.

**Added:** 2026-09-01

## Sub-part segmentation misses (missing b/c rows)

**What:** Some problems show a `b)` (or `c)`, …) part in the crop image but have
no corresponding `sub_part` row in the DB — the segmenter merged or dropped it.
Only obvious since the §8 grouping refactor made the sub-part list explicit
(before, every sub-part rendered the same whole image, so a missing row just
meant one fewer duplicate card).

**Scale (of 1453 problem groups, `human_reviewed = true`):**
- 76 groups whose only sub-part is `a` — a real single-part problem should be
  `sub_part = NULL`, so these are almost all misses or mislabels.
- 10 lone `b`, 7 lone `c`, 3 lone `d` — impossible without earlier letters →
  definite misses.
- ~81 groups with a letter gap (`a,c`; `b,c`; `a,d`; …).
- The **matma** (secondary-language) variants are hit harder — e.g.
  2025 emelt máj II #9: the regular paper has `a,b,c`, the matma variant has
  only `a`. The matma import pipeline under-segments relative to the main one.

**Detection query:** group by the six key columns, `string_agg(sub_part)` per
group, flag signatures that are a lone letter or have gaps.

**Status:** Pipeline / data-quality issue, out of scope for §8 (grouping shows
the DB faithfully). Fix options: improve `scripts/04_segment_problems.py`
sub-part detection (and the matma path specifically); or a targeted manual
review pass over the ~100 flagged groups via the review app; or a one-off
correction script. Recommend a dedicated "sub-part audit" task after §8 ships.

**Added:** 2026-09-02
