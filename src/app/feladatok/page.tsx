import { TOPIC_LABELS, type Problem } from "@/lib/supabase";
import db from "@/lib/db";
import ProblemCard from "@/components/ProblemCard";
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

async function getProblems(filters: Props["searchParams"]): Promise<{ problems: Problem[]; total: number; dbError?: boolean }> {
  const page   = Math.max(1, parseInt(filters.oldal ?? "1"));
  const offset = (page - 1) * PAGE_SIZE;

  const conditions: string[] = ["human_reviewed = true"];
  const params: unknown[]    = [];

  if (filters.szint) {
    params.push(filters.szint);
    conditions.push(`exam_type = $${params.length}`);
  }
  if (filters.tema) {
    params.push(filters.tema);
    conditions.push(`$${params.length} = ANY(topic_tags)`);
  }
  if (filters.ev) {
    params.push(parseInt(filters.ev));
    conditions.push(`year = $${params.length}`);
  }
  if (filters.q) {
    params.push(`%${filters.q}%`);
    conditions.push(`statement_text ILIKE $${params.length}`);
  }
  if (filters.tipus === "rovid") {
    if (filters.szint === "kozep") {
      conditions.push("problem_number <= 12");
    } else if (filters.szint === "emelt") {
      conditions.push("problem_number <= 4");
    } else {
      conditions.push("((exam_type = 'kozep' AND problem_number <= 12) OR (exam_type = 'emelt' AND problem_number <= 4))");
    }
  }
  if (filters.tipus === "hosszu") {
    if (filters.szint === "kozep") {
      conditions.push("problem_number >= 13");
    } else if (filters.szint === "emelt") {
      conditions.push("problem_number >= 5");
    } else {
      conditions.push("((exam_type = 'kozep' AND problem_number >= 13) OR (exam_type = 'emelt' AND problem_number >= 5))");
    }
  }

  const where = conditions.join(" AND ");

  const rend = filters.rend;
  const orderBy =
    rend === "pont-desc" ? "max_points DESC NULLS LAST, year DESC, problem_number ASC" :
    rend === "pont-asc"  ? "max_points ASC NULLS LAST, year DESC, problem_number ASC"  :
    rend === "ev-asc"    ? "year ASC, exam_session ASC, problem_number ASC, sub_part ASC NULLS LAST" :
                           "year DESC, exam_session ASC, problem_number ASC, sub_part ASC NULLS LAST";

  try {
    const dataParams = [...params, PAGE_SIZE, offset];
    const [dataResult, countResult] = await Promise.all([
      db.query(
        `SELECT id, year, exam_type, exam_session, exam_part, problem_number, sub_part,
                problem_image_url, max_points, topic_tags, ocr_used
         FROM problems WHERE ${where} ORDER BY ${orderBy}
         LIMIT $${params.length + 1} OFFSET $${params.length + 2}`,
        dataParams
      ),
      db.query(`SELECT COUNT(*) FROM problems WHERE ${where}`, params),
    ]);
    return { problems: dataResult.rows as Problem[], total: parseInt(countResult.rows[0].count) };
  } catch (err) {
    console.error("[feladatok] Failed to fetch problems:", err);
    return { problems: [], total: 0, dbError: true };
  }
}

export default async function FeladatokPage({ searchParams }: Props) {
  const filters    = sanitizeFilters(searchParams);
  const { problems, total, dbError } = await getProblems(filters);
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
      ) : problems.length === 0 ? (
        <div className="text-center py-16 text-slate-500 dark:text-slate-400">
          <p className="text-lg">Nincs találat ezekkel a szűrőkkel.</p>
          <p className="text-sm mt-2">Próbálj kevesebb szűrőt alkalmazni.</p>
        </div>
      ) : view === "list" ? (
        <ProblemList problems={problems} />
      ) : (
        <div className="grid grid-cols-1 md:grid-cols-2 xl:grid-cols-3 gap-4">
          {problems.map((p) => (
            <ProblemCard key={p.id} problem={p} />
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
