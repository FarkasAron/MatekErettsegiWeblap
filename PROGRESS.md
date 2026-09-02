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
| 4 — list view (`ProblemList`) grouped | ✅ done, committed `84d6ada`, user-tested |
| 5 — print cart → group keys | ✅ done, committed `1669289`, user-tested |
| **6 — random endpoint + homepage stat** | **NEXT** |
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

---

## 2026-09-02 — Phase 4: list view grouped by problem

**Phase:** PROJECT_PLAN §8.5 Phase 4 — List view (`ProblemList` v2)
**Branch:** `feature/problem-grouping`
**Commit:** `84d6ada`

### What changed
- **`src/components/ProblemList.tsx` — rewritten to consume `ProblemGroup[]`**
  instead of a flat `Problem[]`. `ProblemRow` → `ProblemGroupRow`: **one
  collapsible row per problem**, not per sub-part. Row head shows the problem
  title + points badge only (decision §8.4 #7) — the old head's first-two
  topic-tag chips are gone (a problem's tags live per sub-part now). Expanding
  reveals a single whole-problem image (click → `ZoomableImage` lightbox, carried
  over unchanged) and `SubPartList` in its new `"list"` variant. `aria-expanded`
  added to the row toggle.
- **Parity with `ProblemGroupCard`:** the expanded row gained the **"Megoldás"**
  answer-key button + lightbox (`getAnswerImageUrl(group)`), which the
  pre-grouping list never had. Print-toggle button kept; still keyed by the
  representative sub-part row id (`group.subParts[0].id`), matching the card —
  Phase 5 moves the whole cart to group keys.
- **`src/components/SubPartList.tsx` — `variant?: "grid" | "list"` prop.**
  `"grid"` (default) is the unchanged space-constrained layout (each sub-part its
  own collapsible row). `"list"` renders every sub-part as a static row — `a)`
  label left, topic chips right-aligned (`TagChips` gained a `className`
  passthrough for `justify-end`), no second collapse level, per decision §8.4 #7
  ("list view has more horizontal room"). Single-part problems still render tags
  directly in both variants.
- **`src/app/feladatok/page.tsx`** — list branch `<ProblemList problems={groups.flatMap(g => g.subParts)} />`
  → `<ProblemList groups={groups} />`.
- **`src/app/feladatsor/[slug]/page.tsx`** — list branch `<ProblemList problems={problems} />`
  → `<ProblemList groups={groups} />` (`groups` was already computed for the grid).

### Why
- Last view still rendering one card per sub-part row. Decision §8.4 #7: the
  list's outer collapsible unit becomes the problem; sub-parts move inside it
  with their tags shown inline, exploiting the horizontal room the grid card
  lacks. Brings list/grid to visual parity (one image per problem, sub-part
  breakdown, solution + print actions).
- `variant` prop on `SubPartList` rather than a second component: the two layouts
  differ only in whether each sub-part row self-collapses.

### Files touched
- `src/components/ProblemList.tsx` — rewrite: group-based `ProblemGroupRow`,
  answer lightbox added.
- `src/components/SubPartList.tsx` — `variant` prop + `"list"` layout;
  `TagChips` `className` passthrough.
- `src/app/feladatok/page.tsx` — list-branch prop.
- `src/app/feladatsor/[slug]/page.tsx` — list-branch prop.

### Verification (automated, `npm run dev` probes)
- `npm test` — 14/14 (grouping core untouched).
- `npm run build` — clean, 8/8 pages, types valid.
- `/feladatok?nezet=list&szint=emelt&ev=2025` → header **27 feladat**, **27**
  collapsed problem rows (`aria-expanded="false"`), no `". feladat / a"`
  sub-part-style titles. Matches Phase 3's grouped count for the same filter.
- `/feladatsor/2025-emelt-majus-ii?nezet=list` → header **5 feladat**, **5**
  collapsed rows (problems 5–9). Matches Phase 2's grid.
- Grid unchanged: `/feladatok?szint=emelt&ev=2025` → 27 `<article>` cards, 71
  sub-part collapsible rows (`SubPartList` `"grid"` variant intact).
- No server errors in the dev log.
- **Manual walk-through by the user — PASSED.** Lista nézet on `/feladatok` and
  `/feladatsor/<slug>`: one row per problem, expand → image + `a) b) c)` rows
  with right-aligned chips, single-part rows show tags directly. Image lightbox,
  Megoldás lightbox, print toggle, dark mode, narrow viewport all fine.

### Notes surfaced (out of scope, pre-existing — both already logged)
- **Print button** feeds `window.print()` of the styled page, not an images-only
  PDF. Known; that is Phase 8's whole job. Button wiring itself works.
- **Lightbox zoom** still only moves the zoom-% readout without visually scaling
  the image. Pre-existing bug, unrelated to grouping — first seen in Phase 2,
  already in `FUTURE_IMPROVEMENTS.md` → "Known bugs".

### Manual test plan (for the user)
1. `/feladatok`, switch to **Lista** view. Expect one row per problem (title +
   `pt` badge only, no tag chips on the row). Row count = header count.
2. Expand a **multi-part** problem (e.g. an emelt Part II problem): one image,
   then `a) b) c)` rows with topic chips to the right of each label. Expand a
   **single-part** problem: one image, tags shown directly, no `a)` rows.
3. Click the image → lightbox opens, scroll/zoom works, Esc + click-outside
   close it. **Megoldás** button → answer image lightbox (or the button is
   absent when no answer key exists). **Nyomtatás** toggle → adds/removes;
   re-render the page and confirm the state persists (localStorage).
4. Add the same problem from the **grid** card and from the **list** row —
   confirm it is the *same* cart item (not duplicated). [Cart still row-keyed
   until Phase 5.]
5. `/feladatsor/<any exam>?nezet=list` — same checks; középszint sets should be
   mostly single-part rows.
6. Dark mode: row hover, chips, divider lines, lightbox captions all readable.
7. Print (`Ctrl+P` / Nyomtatás): expanded rows' images print; collapsed rows
   contribute nothing. `no-print` chrome hidden. [Whole-set image-only PDF is
   Phase 8.]
8. Narrow viewport (~375px): row head wraps gracefully; chips wrap under the
   `a)` label without overflow.

---

## 2026-09-02 — Phase 5: print cart keyed by problem group

**Phase:** PROJECT_PLAN §8.5 Phase 5 — Print cart → problem granularity
**Branch:** `feature/problem-grouping`
**Commit:** `1669289`

### What changed
- **`src/lib/print-cart.tsx`**:
  - `STORAGE_KEY` bumped `veglesine-print-cart-v1` → `-v2`. The persisted cart
    shape didn't change, but its item ids did (row id → group key), so any old
    `-v1` cart is structurally stale. Per decision §8.4 #9 it is **discarded, not
    migrated** — the cart is ephemeral. The old key is also `removeItem`-ed on
    load so it doesn't linger in `localStorage`.
  - `PrintItem.id` doc rewritten: it is now the
    `ProblemGroup.key`, not a DB row id. One cart entry per problem.
  - No logic change to `add` / `remove` / `isInCart` / `reorder` /
    `toggleSolution` — all were already plain string-id operations and are
    identity-agnostic.
- **`src/components/ProblemGroupCard.tsx`**, **`src/components/ProblemList.tsx`**
  — `cartId` switched from `group.subParts[0].id` (representative sub-part row)
  to `group.key`. Add payload was already whole-problem (`group.problem_image_url`,
  sub-part-free `title`), so only the id changed. Stale "Phase 5 will…" comments
  replaced.
- **`src/components/RandomProblemButton.tsx`** — cart id switched from
  `problem.id` to `groupKey(problem)`; cart `title` dropped its ` / a` sub-part
  suffix to match `ProblemGroupCard`. This keeps the cart coherent (a random
  problem now dedupes against the same problem added from a browse card/row).
  The random **endpoint** and its "return a distinct group" / homepage-stat
  work remain Phase 6 — only the cart-identity half is done here, because
  leaving one add-to-cart surface on raw row ids would break cross-surface
  de-duplication (§8.2 hard constraint: print cart must not regress).
- **`src/components/ProblemCard.tsx`** — untouched. Still uses `problem.id`, but
  it is dead code (rendered on no page since Phase 3) and is deleted in Phase 7.

### Why
- Decision §8.4 #9: the cart and the PDF export operate per problem, not per
  sub-part row. With the card/list/random surfaces all keyed by `group.key`,
  adding "2025 emelt máj II / 9. feladat" is one cart item regardless of which
  view or how many sub-parts it has.
- `PrintCartWidget`'s jsPDF path (`generatePdf`) consumes only `title`,
  `problemImageUrl`, `answerImageUrl`, `includeSolution` and matches items by
  string id equality — it never assumed the id was a UUID, so it needed no
  change. Verified by reading: `reorder`/`remove`/`toggleSolution`/`key={item.id}`
  all work unchanged with `|`-delimited group keys.

### Files touched
- `src/lib/print-cart.tsx` — `STORAGE_KEY` → `-v2`; legacy-key cleanup on load;
  `PrintItem.id` doc.
- `src/components/ProblemGroupCard.tsx` — `cartId = group.key`.
- `src/components/ProblemList.tsx` — `cartId = group.key`.
- `src/components/RandomProblemButton.tsx` — `cartId = groupKey(problem)`;
  sub-part-free cart title; `groupKey` import.

### Verification
- `npm test` — 14/14 (grouping core untouched).
- `npm run build` — clean, 8/8 pages, types valid (`groupKey` imports fine in a
  client component — `problems.ts` has no server-only deps).
- **Manual walk-through by the user — PASSED.** Old `-v1` cart dropped on load;
  cross-view dedup (grid ↔ list) and random-dialog dedup against browse all give
  one cart entry; matma twin stays a separate entry; `PrintCartWidget` reorder /
  remove / clear and both PDF exports (problems, solutions-only) intact.

### Manual test plan (for the user)
1. **Old cart is dropped.** If you have items in the print cart from before this
   change: reload `/feladatok`. The floating "Nyomtatási lista" button should be
   **gone** (cart empty). In devtools → Application → Local Storage: no
   `veglesine-print-cart-v1` key; a `-v2` key appears once you add something.
2. **Grid add.** `/feladatok`, add a **multi-part** problem from its card
   ("Nyomtatás" → "Hozzáadva"). Cart count = 1. Open the widget: one thumbnail,
   title is the whole problem (no `/ a`).
3. **Cross-view dedup.** Switch to **Lista**, expand the *same* problem, add it.
   Cart count stays **1** (not 2). Remove it from the list row → the grid card
   flips back to "Nyomtatás" too.
4. **Random dedup.** Homepage → "Véletlen" until you get a problem you can also
   find in the browse list (or just add a random one, note the year/session/
   number). Add it to the cart from the random dialog. Go to `/feladatok`, find
   that same problem, and confirm its card already shows "Hozzáadva" and the
   cart count did not increase.
5. **Matma stays separate.** Find a problem that has a "matek II" / secondary-
   language twin (e.g. 2025 emelt május II. #9). Add the regular one, then the
   matma one — cart count = **2**, two distinct rows.
6. **PDF export intact.** With 3–4 items in the cart: "Elrendezés beállítása" →
   toggle a page break and one "Megoldás is" → "PDF generálása". The PDF opens
   with one problem image per item, page breaks honoured, the solution image
   inlined where ticked. "Megoldókulcs" button (if any item has a solution)
   produces the solutions-only PDF.
7. **Reorder / remove / clear** in the widget all still work.
8. **`/feladatsor/<slug>`** — same add / dedup / export checks from that page.

---

## 2026-09-02 — Lightbox: dark action buttons + print/solution actions in the zoom view

**Phase:** n/a — UX polish, outside the §8 phase list (user-requested during Phase 5 testing)
**Branch:** `feature/problem-grouping`
**Commit:** `pending`

### What changed
- **`src/components/LightboxButton.tsx` (new)** — one shared button for the
  fullscreen image lightboxes. Three variants: `default` (solid near-black,
  `bg-black/70` + `ring-white/25`), `primary` (navy), `active` (navy tint for
  a toggled-on state — in cart / solution shown). Solid dark on purpose: the
  buttons sit on the dimmed backdrop but a light problem image bleeds through
  right behind them, and the previous translucent-white styling washed out
  against it.
- **`src/components/ProblemGroupCard.tsx`**, **`src/components/ProblemList.tsx`**
  — the plain problem-zoom lightbox gained an action row (**Megoldás** +
  **Nyomtatás / Hozzáadva**), mirroring the card footer / expanded row, so the
  user no longer has to close the lightbox to add the problem or open its
  solution. Uses the existing `handlePrintToggle` (already group-keyed) and
  `answerUrl` / `answerMissing`. `Megoldás` swaps the problem overlay for the
  answer overlay. Lightbox close buttons restyled to the same dark chrome.
- **`src/components/RandomProblemButton.tsx`** — the three modal buttons
  (Következő / Megoldás / Nyomtatási lista) swapped to `LightboxButton`
  (`primary` / `active` / `default`); close button restyled to match. Behaviour
  unchanged.
- **`src/components/ProblemCard.tsx`** — deliberately **not** touched. It is dead
  code (rendered on no page since Phase 3) and is removed in Phase 7; adding
  the same actions there would be throwaway work.

### Why
- User feedback: in any fullscreen view (random problem, or just zooming a
  problem) the bottom buttons were light/translucent and nearly invisible when a
  light image sat behind them. And the plain zoom view had no quick way to
  print or see the solution — only the random-problem modal did.
- Shared component instead of copy-pasting a 4-class string into 3 files, and so
  Phase 7's "extract shared lightbox chrome" note is already half-done.

### Not addressed (still deferred)
- `ZoomableImage` zoom does not visually scale the image — pre-existing, logged
  in `FUTURE_IMPROVEMENTS.md` → "Known bugs". Explicitly out of scope here.

### Files touched
- `src/components/LightboxButton.tsx` — new.
- `src/components/ProblemGroupCard.tsx` — lightbox action row; `LightboxButton`
  import; close-button restyle.
- `src/components/ProblemList.tsx` — same.
- `src/components/RandomProblemButton.tsx` — buttons → `LightboxButton`;
  close-button restyle.

### Verification
- `npm test` — 14/14.
- `npm run build` — `✓ Compiled successfully`, types valid, 8/8 pages.
- Not yet exercised in the browser — see manual test plan below.

### Manual test plan (for the user)
1. `/feladatok` (light mode), click a problem image → lightbox. Below the image:
   **Megoldás** + **Nyomtatás** buttons, both solid dark and clearly readable
   even over a white problem image. Repeat in dark mode.
2. **Nyomtatás** in the lightbox → button flips to "Hozzáadva" (navy tint), cart
   count goes up. Close the lightbox → the card footer shows "Hozzáadva" too
   (same item). Click **Nyomtatás** again in the lightbox → removed everywhere.
3. **Megoldás** in the lightbox → swaps to the answer image; click background /
   Esc closes it. If a problem has no answer key, the button is absent.
4. Same two checks in **Lista** view (expand a row → open the image → lightbox
   actions).
5. Homepage → **Véletlen**: the Következő / Megoldás / Nyomtatási lista buttons
   are the same dark style; "Megoldás" still toggles to the solution and back,
   "Következő" still loads a new one, cart toggle still dedupes against browse.
6. `/feladatsor/<slug>` grid + list — same lightbox action checks.
7. Narrow viewport (~375px): the lightbox button row wraps, doesn't overflow.
