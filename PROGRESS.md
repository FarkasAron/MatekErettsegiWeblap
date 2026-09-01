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

## Current status

**Refactor:** PROJECT_PLAN §8 — Problem-Level Grouping. **Branch:**
`feature/problem-grouping` (not pushed; `main` at `v1.3.1`).

| Phase | State |
|---|---|
| 1 — grouping core | ✅ done, committed `32eda3d`, manual test n/a |
| 2 — `/feladatsor/[slug]` grouped cards | ✅ done, committed `265beb9`, user-tested |
| 3 — `/feladatok` grouped query + pagination | ✅ done, committed `ec724d0`, user-tested |
| **4 — list view (`ProblemList`) grouped** | **NEXT** |
| 5 — print cart → group keys | pending |
| 6 — random endpoint + homepage stat | pending |
| 7 — review, delete `ProblemCard`, `.gitattributes`, `v1.4.0` | pending |
| 8 — whole-set print → images-only PDF | pending |

To resume: read this file top-to-bottom plus `PROJECT_PLAN.md` §8, then start
the phase marked NEXT. Working rules (dev-server cleanup, env, testing) are in
the session memory `dev-workflow-lessons`.

---

## 2026-09-01 — Repo relocation, docs scaffolding, grouping refactor planned

**Phase:** n/a (setup)
**Commit:** `7e1457e`

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
**Commit:** `32eda3d`

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
**Commit:** `265beb9`

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

---

## 2026-09-02 — Phase 3: grouped query + pagination on /feladatok

**Phase:** PROJECT_PLAN §8.5 Phase 3 — `/feladatok` grouped query + pagination
**Branch:** `feature/problem-grouping`
**Commit:** `ec724d0`

### What changed
- **`src/app/feladatok/page.tsx` — `getProblems` rewritten**:
  - Filters split by level. `szint` / `ev` / `tipus` (problem-number range) stay
    in `WHERE` (every sub-part of a problem shares them). `tema` and `q` move to
    `HAVING bool_or(...)` so a problem matches if *any* sub-part matches, and the
    non-matching sub-parts stay in the group (decision §8.4 #2).
  - Single CTE (`page_groups`): `GROUP BY` the six key columns,
    `ROW_NUMBER() OVER (ORDER BY <sort>)` as `ord`, `LIMIT 50 OFFSET n`. Outer
    query joins every sub-part row of those groups back on the key and orders by
    `ord, sub_part`. `groupProblems` on the result restores the sorted groups.
  - `ORDER BY` adapted for the grouped context: `max_points` → `MAX(max_points)`,
    `sub_part` dropped.
  - Count query = `COUNT(*)` over the grouped/HAVING subquery → number of
    **problems**, not sub-part rows.
  - Return shape: `{ groups: ProblemGroup[]; total; dbError? }`.
- **Render**: grid → `ProblemGroupCard` per group, with
  `defaultExpandedTag={filters.tema}` so an active topic filter auto-expands the
  matching sub-part rows. List view → `ProblemList` fed
  `groups.flatMap(g => g.subParts)` (unchanged output; real conversion is
  Phase 4). Empty-state check on `groups.length`.
- Removed the now-unused `ProblemCard` import from this page (component still
  used elsewhere until Phase 4; deleted in Phase 7).

### Why
- `/feladatok` is the filtered, paginated browse — the one page where grouping
  has to happen in SQL, not just in JS, so a page is 50 problems and the count
  is honest. The CTE keeps it to two queries with the sort order preserved
  across the group→row join.

### Files touched
- `src/app/feladatok/page.tsx` — `getProblems` rewrite; grouped render.
- `PROJECT_PLAN.md` — added Phase 8 (whole-set print → images-only PDF), from a
  user request.
- `FUTURE_IMPROVEMENTS.md` — logged the `TOPIC_LABELS` ↔ DB tag mismatch.

### Verification (automated, via `npm run dev` probes vs. DB-computed truth)
- `npm test` 14/14; `npm run build` clean.
- No filter: header **1453 feladat**, 50 cards, pager **1 / 30**. Page 30 → 3
  cards (1453 = 29·50 + 3). Page 31 → empty-state, no crash.
- `?tema=trigonometria` → **173** (DB: 173), `?tema=geometria-sik` → **254**
  (DB: 254); matching sub-part rows render with `aria-expanded="true"`
  (auto-expand works).
- `?szint=emelt&ev=2025` → **27** (DB: 27); `+&tipus=rovid` → **12**.
- Sort: default first card year 2025, `rend=ev-asc` → 2005, `rend=pont-desc` →
  first cards all 17 pt (DB max is 17).
- `?nezet=list` still renders the flat per-sub-part list; `+filters` narrow it
  (header 27 for emelt+2025).
- No server errors.
- **Manual walk-through by the user — PASSED.** Pagination, filters, topic
  filter + auto-expand, sort, grid/list toggle, print / solution / dark mode /
  responsive all fine.

### Notes surfaced (out of scope, pre-existing)
- `?tema=algebra` does nothing — `algebra` is a real DB tag but not a key in
  `TOPIC_LABELS`, so `sanitizeFilters` drops it. Several DB tags are unmapped.
- Some problems show a `b)` part in the image but have no `b` sub-part row
  (~76 lone-`a` groups, more with gaps; matma variants worst). Segmentation
  data-quality issue, not a grouping bug — the list faithfully shows the DB.
- Both logged in `FUTURE_IMPROVEMENTS.md`.

### Also
- `util._extend` DEP0060 deprecation warning during `npm run dev` — emitted by a
  Next.js dev-server dependency, not project code; harmless, no action.
