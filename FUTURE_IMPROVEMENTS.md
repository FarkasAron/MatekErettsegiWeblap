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
