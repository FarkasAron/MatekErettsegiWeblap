# Progress Log

Development journal for the Matematika Feladatbank web app. One entry per change
set, appended in chronological order (oldest first). Written in English.

Entry template:

    ## YYYY-MM-DD — <short title>
    **Phase:** <PROJECT_PLAN section / phase, or "n/a">
    **Commit:** <hash or "pending">

    ### What changed
    - ...

    ### Why
    - ...

    ### Files touched
    - `path` — note

    ### Verification
    - <manual test performed / tests run / not yet verified>

---

## 2026-09-01 — Repo relocation, docs scaffolding, grouping refactor planned

**Phase:** n/a (setup)
**Commit:** pending

### What changed
- Repository moved off OneDrive to `E:\Programming\MatekErettsegiWeblap`. The old
  OneDrive working copy has been deleted by the user.
- Added `FUTURE_IMPROVEMENTS.md` — backlog of deferred work. First entry:
  per-sub-part point scoring.
- Added this `PROGRESS.md`.
- `PROJECT_PLAN.md`: header status note updated; added **Section 8 — Refactor:
  Problem-Level Grouping (Sub-part Consolidation)** with the decision table and a
  7-phase plan. This is the active work item from here on.
- Added `.env.example` (committed template documenting every variable) and a
  local `.env.local` skeleton (git-ignored) for the user to populate — the real
  secrets were lost with the deleted OneDrive copy and must be reconstructed.

### Why
- OneDrive + `.git` in a Controlled-Folder-Access-protected folder was blocking
  Git and editor writes (access denied on `.git/*.lock`, `.gitignore.tmp.*`) and
  producing whole-tree phantom diffs from CRLF/placeholder churn. The E: drive is
  outside OneDrive and outside Controlled Folder Access — Git and file writes now
  work normally.
- The grouping refactor is a significant multi-phase change; it belongs in the
  plan and must be tracked per-change from the start.

### Files touched
- `FUTURE_IMPROVEMENTS.md` — new.
- `PROGRESS.md` — new.
- `PROJECT_PLAN.md` — new Section 8; header "Last updated" and status note.
- `.env.example` — new (committed).
- `.env.local` — new (local only, not committed).

### Verification
- `git status` was clean before this change set; repo at tag `v1.3.1`, in sync
  with `origin/main` (`github.com/FarkasAron/MatekErettsegiWeblap.git`).
- Documentation and env scaffolding only — no application code paths touched.
- `npm install` run (was a fresh checkout with no `node_modules`).
- **Dev DB connection verified** against `192.168.0.52:5432` — PostgreSQL 14.22.
  Correct values (recovered from the Next.js LXC, not the repo): database
  `matek_erettsegi_web`, user `postgres`. `problems` table: 2559 rows, all
  `human_reviewed = true`. `.env.example` corrected to match (earlier guesses of
  `veglesine` / `veglesine_user` were wrong).

---

## 2026-09-01 — Phase 1: grouping core

**Phase:** PROJECT_PLAN §8.5 Phase 1 — Grouping core
**Branch:** `feature/problem-grouping`
**Commit:** pending

### What changed
- **`src/lib/problems.ts` (new)** — the consolidation layer:
  - `ProblemGroup` type — one problem, its sub-part rows folded together.
  - `groupKey(p)` — stable id from
    `year | exam_type | exam_session | exam_part | matma-flag | problem_number`.
  - `groupProblems(rows)` — buckets rows by key (group order = first-seen in
    input, so a pre-sorted query stays sorted), sorts each group's sub-parts
    (`NULL` first, then `a < b < c`), and derives: representative image (first
    non-null), `max_points` (max across sub-parts), `allTags` (de-duplicated
    union, first-seen order).
- **`src/lib/problems.test.ts` (new)** — 14 vitest cases: key identity/splitting
  (matma twin, exam part), sub-part merge & ordering, single-part (`NULL`)
  handling, representative image/points, tag union, group-order preservation,
  empty input.
- **`src/lib/supabase.ts`** — added `is_secondary_language: boolean` to the
  `Problem` type.
- **`src/app/feladatok/page.tsx`**, **`src/app/feladatsor/[slug]/page.tsx`**,
  **`src/app/api/random-problem/route.ts`** — added `is_secondary_language` to
  the problem `SELECT` lists so the grouping key can be built. No behaviour
  change yet.
- **`src/app/api/random-problem/route.ts`** — added
  `export const dynamic = "force-dynamic"`. Without it, `next build` tried to
  pre-evaluate the route, and in the build export worker the `pg` Pool was
  constructed before `@next/env` had injected `DATABASE_URL`, so it fell back to
  a passwordless `postgres` connection and logged `28P01`. A random endpoint
  must be dynamic anyway; this removes the build-time DB hit.
- **Tooling:** added `vitest` (dev dep), `vitest.config.mts` (mirrors the `@/*`
  path alias, node environment), and `test` / `test:watch` scripts in
  `package.json`.

### Why
- Foundation for §8: the DB stays one-row-per-sub-part; the UI needs a single
  place that folds those rows into one card's worth of data. Building and
  testing it in isolation first keeps the later UI phases small.
- `is_secondary_language` must be selected now because the grouping key depends
  on it (regular vs. matma twin must not merge).

### Files touched
- `src/lib/problems.ts` — new.
- `src/lib/problems.test.ts` — new.
- `src/lib/supabase.ts` — `Problem` type +1 field.
- `src/app/feladatok/page.tsx` — SELECT +1 column.
- `src/app/feladatsor/[slug]/page.tsx` — SELECT +1 column (both query variants).
- `src/app/api/random-problem/route.ts` — SELECT +1 column; `force-dynamic`.
- `package.json` — `vitest` dev dep, `test` / `test:watch` scripts.
- `package-lock.json` — vitest and its transitive deps.
- `vitest.config.mts` — new.

### Verification
- `npm test` — 14/14 passing.
- `npm run build` — clean (`✓ Compiled successfully`, types valid, 8/8 pages,
  no `28P01`). `- Environments: .env.local` confirms env loading.
- `npm run dev` — `GET /api/random-problem` returns a real row **including the
  new `is_secondary_language` field**; `/feladatok` renders with no DB-error
  banner.
- `npm run lint` — skipped: `next lint` is not configured in this repo (no
  eslint config; it prompts interactively). `next build` still type-checks.
- **No visible change on the site** — this phase is data-layer only.

---

## 2026-09-01 — Phase 2: grouped cards on /feladatsor/[slug]

**Phase:** PROJECT_PLAN §8.5 Phase 2 — `/feladatsor/[slug]`
**Branch:** `feature/problem-grouping`
**Commit:** pending

### What changed
- **`src/components/SubPartList.tsx` (new)** — the sub-part breakdown shown
  beneath a problem card. Single-part problems (one row, NULL `sub_part`) render
  their topic-tag chips directly; multi-part problems render a collapsible list,
  one row per sub-part (`a)` header + "N témakör", expands to the tag chips).
  Chips link to `/feladatok?tema=<slug>`. `defaultExpandedTag` prop (unused this
  phase) will let Phase 3 auto-expand rows matching an active topic filter.
- **`src/components/ProblemGroupCard.tsx` (new)** — one card per `ProblemGroup`:
  a single whole-problem image (lightbox, zoom, answer lightbox, print button —
  all carried over from `ProblemCard` unchanged) plus `SubPartList` below it. No
  topic chips on the card head (decision §8.4 #6). Adapted from `ProblemCard`.
- **`src/lib/answers.ts`** — `getAnswerImageUrl` param widened from `Problem` to
  `Pick<Problem, "exam_type" | "year" | "exam_session" | "problem_number">` so it
  accepts a `ProblemGroup` too. Behaviour identical.
- **`src/app/feladatsor/[slug]/page.tsx`** — grid view now groups the rows
  (`groupProblems`) and renders `ProblemGroupCard` per group; the header count
  is `groups.length` (problems) instead of `problems.length` (sub-part rows).
  List view still renders the old `ProblemList` unchanged — that is Phase 4.

### Why
- First consumer of the grouping layer, and the simplest one: no pagination, no
  filters. Removes the 3×-repeated image for multi-part problems here first,
  keeping the `/feladatok` query rework (Phase 3) as a separate step.
- New component rather than editing `ProblemCard` in place: `/feladatok` still
  passes `Problem` rows to `ProblemCard`, so it must keep working until Phase 3.

### Files touched
- `src/components/SubPartList.tsx` — new.
- `src/components/ProblemGroupCard.tsx` — new.
- `src/lib/answers.ts` — widened param type.
- `src/app/feladatsor/[slug]/page.tsx` — group + render `ProblemGroupCard`;
  header count in problems.

### Verification
- `npm test` — 14/14 (grouping core unchanged).
- `npm run build` — clean, 8/8 pages, types valid.
- `npm run dev` probe of `/feladatsor/2025-emelt-majus-ii` (5 problems, 13
  sub-part rows in the DB): the page renders **5 distinct `_prob_` images**
  (was 13 before — one per sub-part), **13 collapsible sub-part rows**, no
  DB-error banner, no server errors.
- List view (`?nezet=list`) unchanged — deferred to Phase 4.
- **Manual walk-through by the user — PASSED.** `/feladatsor` (emelt): 5 cards /
  5 images with working a) b) rows. Cards expand correctly. Középszint: single
  fully-standalone problems (no sub-part list), as intended. Image click / scroll
  / Esc-close fine. Print menu opens. Solution lightbox fine. Dark mode fine and
  readable.
- Two items noted, both out of scope for this phase:
  - List view does nothing useful yet — expected, that is Phase 4 (user flagged
    it as required).
  - Lightbox zoom indicator moves but the image does not visually scale —
    **pre-existing** bug, unrelated to this change. Logged in
    `FUTURE_IMPROVEMENTS.md` → "Known bugs".

### Also in this change set
- `FUTURE_IMPROVEMENTS.md` — added a "Known bugs" section with the lightbox-zoom
  bug.
