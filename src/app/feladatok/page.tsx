import { TOPIC_LABELS, type Problem } from "@/lib/supabase";
import { groupProblems, type ProblemGroup } from "@/lib/problems";
import db from "@/lib/db";
import ProblemGroupCard from "@/components/ProblemGroupCard";
import ProblemList from "@/components/ProblemList";
import FilterBar from "@/components/FilterBar";
import ViewToggle from "@/components/ViewToggle";
import PrintButton from "@/components/PrintButton";
import RandomProblemButton from "@/components/RandomProblemButton";
import { Suspense } from "react";

const PAGE_SIZE = 50;
const MIN_YEAR  = 2000;
const MAX_YEAR  = 2035;

const VALID_SZINT = new Set(["kozep", "emelt"]);
const VALID_TIPUS = new Set(["rovid", "hosszu"]);
const VALID_REND  = new Set(["ev-asc", "pont-desc", "pont-asc"]);

interface Props {
  searchParams: { tema?: string; szint?: string; ev?: string; nezet?: string; tipus?: string; oldal?: string; rend?: string; q?: string };
}

function sanitizeFilters(raw: Props["searchParams"]): Props["searchParams"] {
  const rawOldal = parseInt(raw.oldal ?? "1");
  const oldal    = Number.isFinite(rawOldal) && rawOldal > 0 ? rawOldal : 1;

  const rawEv = raw.ev ? parseInt(raw.ev) : NaN;
  const ev    = Number.isFinite(rawEv) && rawEv >= MIN_YEAR && rawEv <= MAX_YEAR
    ? String(rawEv)
    : undefined;

  const q = raw.q ? raw.q.trim().slice(0, 100).replace(/[<>"]/g, "") || undefined : undefined;

  return {
    oldal: String(oldal),
    szint: raw.szint && VALID_SZINT.has(raw.szint) ? raw.szint : undefined,
    tema:  raw.tema  && (raw.tema in TOPIC_LABELS)  ? raw.tema  : undefined,
    tipus: raw.tipus && VALID_TIPUS.has(raw.tipus)  ? raw.tipus : undefined,
    nezet: raw.nezet === "list" ? "list" : undefined,
    rend:  raw.rend  && VALID_REND.has(raw.rend)   ? raw.rend  : undefined,
    ev,
    q,
  };
}

export const dynamic = 'force-dynamic';

function buildPageUrl(filters: Props["searchParams"], page: number): string {
  const params = new URLSearchParams();
  if (filters.tema)  params.set("tema",  filters.tema);
  if (filters.szint) params.set("szint", filters.szint);
  if (filters.ev)    params.set("ev",    filters.ev);
  if (filters.nezet) params.set("nezet", filters.nezet);
  if (filters.tipus) params.set("tipus", filters.tipus);
  if (filters.rend)  params.set("rend",  filters.rend);
  if (filters.q)     params.set("q",     filters.q);
  if (page > 1)      params.set("oldal", String(page));
  const qs = params.toString();
  return `/feladatok${qs ? `?${qs}` : ""}`;
}

async function getProblems(
  filters: Props["searchParams"],
): Promise<{ groups: ProblemGroup[]; total: number; dbError?: boolean }> {
  const page   = Math.max(1, parseInt(filters.oldal ?? "1"));
  const offset = (page - 1) * PAGE_SIZE;

  // Row-level filters — every sub-part of a problem shares these values, so they
  // belong in WHERE (before grouping).
  const whereConds: string[] = ["human_reviewed = true"];
  // Group-level filters — a problem is a match if ANY of its sub-parts matches
  // (decision §8.4 #2). These must run after GROUP BY, in HAVING, otherwise they
  // would drop the non-matching sub-parts from the group.
  const havingConds: string[] = [];
  const params: unknown[] = [];

  if (filters.szint) {
    params.push(filters.szint);
    whereConds.push(`exam_type = $${params.length}`);
  }
  if (filters.ev) {
    params.push(parseInt(filters.ev));
    whereConds.push(`year = $${params.length}`);
  }
  if (filters.tipus === "rovid") {
    if (filters.szint === "kozep") {
      whereConds.push("problem_number <= 12");
    } else if (filters.szint === "emelt") {
      whereConds.push("problem_number <= 4");
    } else {
      whereConds.push("((exam_type = 'kozep' AND problem_number <= 12) OR (exam_type = 'emelt' AND problem_number <= 4))");
    }
  }
  if (filters.tipus === "hosszu") {
    if (filters.szint === "kozep") {
      whereConds.push("problem_number >= 13");
    } else if (filters.szint === "emelt") {
      whereConds.push("problem_number >= 5");
    } else {
      whereConds.push("((exam_type = 'kozep' AND problem_number >= 13) OR (exam_type = 'emelt' AND problem_number >= 5))");
    }
  }
  if (filters.tema) {
    params.push(filters.tema);
    havingConds.push(`bool_or($${params.length} = ANY(topic_tags))`);
  }
  if (filters.q) {
    params.push(`%${filters.q}%`);
    havingConds.push(`bool_or(statement_text ILIKE $${params.length})`);
  }

  const where      = whereConds.join(" AND ");
  const having      = havingConds.length ? `HAVING ${havingConds.join(" AND ")}` : "";
  const GROUP_COLS = "year, exam_type, exam_session, exam_part, is_secondary_language, problem_number";

  const rend = filters.rend;
  // Evaluated over the grouped rows: max_points → MAX(max_points), and sub_part
  // (no longer meaningful at the problem level) drops out.
  const orderBy =
    rend === "pont-desc" ? "MAX(max_points) DESC NULLS LAST, year DESC, problem_number ASC" :
    rend === "pont-asc"  ? "MAX(max_points) ASC NULLS LAST, year DESC, problem_number ASC"  :
    rend === "ev-asc"    ? "year ASC, exam_session ASC, problem_number ASC" :
                           "year DESC, exam_session ASC, problem_number ASC";

  const limitParam  = params.length + 1;
  const offsetParam = params.length + 2;

  // One page of problem groups, then every sub-part row of those groups. The
  // window ordinal `ord` carries the group order through the join so the app
  // side (groupProblems) reassembles them in the requested sort order.
  const dataSql = `
    WITH page_groups AS (
      SELECT ${GROUP_COLS},
             ROW_NUMBER() OVER (ORDER BY ${orderBy}) AS ord
      FROM problems
      WHERE ${where}
      GROUP BY ${GROUP_COLS}
      ${having}
      ORDER BY ord
      LIMIT $${limitParam} OFFSET $${offsetParam}
    )
    SELECT p.id, p.year, p.exam_type, p.exam_session, p.exam_part, p.problem_number,
           p.sub_part, p.problem_image_url, p.max_points, p.topic_tags, p.ocr_used,
           p.is_secondary_language
    FROM problems p
    JOIN page_groups g
      ON  p.year                  = g.year
      AND p.exam_type             = g.exam_type
      AND p.exam_session          = g.exam_session
      AND p.exam_part             IS NOT DISTINCT FROM g.exam_part
      AND p.is_secondary_language = g.is_secondary_language
      AND p.problem_number        = g.problem_number
    WHERE p.human_reviewed = true
    ORDER BY g.ord, p.sub_part ASC NULLS FIRST
  `;

  const countSql = `
    SELECT COUNT(*)::int AS count FROM (
      SELECT 1
      FROM problems
      WHERE ${where}
      GROUP BY ${GROUP_COLS}
      ${having}
    ) t
  `;

  try {
    const [dataResult, countResult] = await Promise.all([
      db.query(dataSql, [...params, PAGE_SIZE, offset]),
      db.query(countSql, params),
    ]);
    return {
      groups: groupProblems(dataResult.rows as Problem[]),
      total: countResult.rows[0].count,
    };
  } catch (err) {
    console.error("[feladatok] Failed to fetch problems:", err);
    return { groups: [], total: 0, dbError: true };
  }
}

export default async function FeladatokPage({ searchParams }: Props) {
  const filters    = sanitizeFilters(searchParams);
  const { groups, total, dbError } = await getProblems(filters);
  const page       = Math.max(1, parseInt(filters.oldal ?? "1"));
  const view       = filters.nezet === "list" ? "list" : "grid";
  const totalPages = Math.ceil(total / PAGE_SIZE);
  const fromItem   = (page - 1) * PAGE_SIZE + 1;
  const toItem     = Math.min(page * PAGE_SIZE, total);

  const activeFilters = {
    tema:  filters.tema,
    szint: filters.szint,
    ev:    filters.ev,
    nezet: filters.nezet,
    tipus: filters.tipus,
    rend:  filters.rend,
    q:     filters.q,
  };

  const topicLabel = filters.tema  ? TOPIC_LABELS[filters.tema] : null;
  const examLabel  = filters.szint === "kozep" ? "Középszint"
                   : filters.szint === "emelt" ? "Emelt szint" : null;
  const tipusLabel = filters.tipus === "rovid"
    ? filters.szint === "kozep" ? "Rövid (1–12)" : filters.szint === "emelt" ? "Rövid (1–4)" : "Rövid"
    : filters.tipus === "hosszu"
    ? filters.szint === "kozep" ? "Hosszú (13–18)" : filters.szint === "emelt" ? "Hosszú (5–9)" : "Hosszú"
    : null;

  const titleParts = [topicLabel, examLabel, tipusLabel, filters.ev].filter(Boolean);
  const pageTitle  = titleParts.length > 0 ? titleParts.join(" · ") : "Összes feladat";

  return (
    <div className="space-y-6">
      <div className="flex flex-col sm:flex-row sm:items-start sm:justify-between gap-3 sm:gap-4">
        <div>
          <h1 className="text-2xl font-bold text-slate-900 dark:text-white print:text-black">{pageTitle}</h1>
          <p className="text-sm text-slate-500 dark:text-slate-400 mt-1">
            {total} feladat
            {totalPages > 1 && ` · ${fromItem}–${toItem} látható`}
          </p>
        </div>
        <div className="flex items-center gap-2 no-print self-start sm:self-auto shrink-0">
          <RandomProblemButton />
          <Suspense>
            <ViewToggle current={view} />
          </Suspense>
          <PrintButton />
        </div>
      </div>

      <FilterBar active={activeFilters} />

      {dbError ? (
        <div className="text-center py-16 text-slate-500 dark:text-slate-400">
          <p className="text-lg font-medium text-red-600 dark:text-red-400">Hiba történt az adatok betöltésekor.</p>
          <p className="text-sm mt-2">Kérjük, töltsd újra az oldalt, vagy próbáld meg később.</p>
        </div>
      ) : groups.length === 0 ? (
        <div className="text-center py-16 text-slate-500 dark:text-slate-400">
          <p className="text-lg">Nincs találat ezekkel a szűrőkkel.</p>
          <p className="text-sm mt-2">Próbálj kevesebb szűrőt alkalmazni.</p>
        </div>
      ) : view === "list" ? (
        <ProblemList groups={groups} />
      ) : (
        <div className="grid grid-cols-1 md:grid-cols-2 xl:grid-cols-3 gap-4">
          {groups.map((g) => (
            <ProblemGroupCard key={g.key} group={g} defaultExpandedTag={filters.tema} />
          ))}
        </div>
      )}

      {totalPages > 1 && (
        <div className="flex items-center justify-between pt-2 no-print">
          <span className="text-sm text-slate-400 dark:text-slate-500">
            {page}. oldal / {totalPages}
          </span>
          <div className="flex gap-2">
            {page > 1 && (
              <a
                href={buildPageUrl(filters, page - 1)}
                className="inline-flex items-center gap-1.5 px-4 py-2 rounded-xl text-sm font-medium
                           bg-white dark:bg-slate-800 border border-slate-200 dark:border-slate-700
                           text-slate-700 dark:text-slate-200 hover:border-navy-400 transition-colors"
              >
                ← Előző
              </a>
            )}
            {page < totalPages && (
              <a
                href={buildPageUrl(filters, page + 1)}
                className="inline-flex items-center gap-1.5 px-4 py-2 rounded-xl text-sm font-medium
                           bg-navy-600 border border-navy-600 text-white hover:bg-navy-700 transition-colors"
              >
                Következő →
              </a>
            )}
          </div>
        </div>
      )}
    </div>
  );
}
