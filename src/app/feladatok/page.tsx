import { supabase, TOPIC_LABELS, type Problem } from "@/lib/supabase";
import ProblemCard from "@/components/ProblemCard";
import ProblemList from "@/components/ProblemList";
import FilterBar from "@/components/FilterBar";
import ViewToggle from "@/components/ViewToggle";
import PrintButton from "@/components/PrintButton";
import { Suspense } from "react";

const PAGE_SIZE = 50;

interface Props {
  searchParams: { tema?: string; szint?: string; ev?: string; nezet?: string; tipus?: string; oldal?: string };
}

export const revalidate = 300;

function buildPageUrl(filters: Props["searchParams"], page: number): string {
  const params = new URLSearchParams();
  if (filters.tema)  params.set("tema",  filters.tema);
  if (filters.szint) params.set("szint", filters.szint);
  if (filters.ev)    params.set("ev",    filters.ev);
  if (filters.nezet) params.set("nezet", filters.nezet);
  if (filters.tipus) params.set("tipus", filters.tipus);
  if (page > 1)      params.set("oldal", String(page));
  const q = params.toString();
  return `/feladatok${q ? `?${q}` : ""}`;
}

async function getProblems(filters: Props["searchParams"]): Promise<{ problems: Problem[]; total: number }> {
  const page   = Math.max(1, parseInt(filters.oldal ?? "1"));
  const offset = (page - 1) * PAGE_SIZE;

  let dataQuery = supabase
    .from("problems")
    .select("id,year,exam_type,exam_session,exam_part,problem_number,sub_part,problem_image_url,max_points,topic_tags,ocr_used")
    .eq("human_reviewed", true)
    .order("year", { ascending: false })
    .order("exam_session")
    .order("problem_number")
    .order("sub_part")
    .range(offset, offset + PAGE_SIZE - 1);

  let countQuery = supabase
    .from("problems")
    .select("*", { count: "exact", head: true })
    .eq("human_reviewed", true);

  if (filters.szint) {
    dataQuery  = dataQuery.eq("exam_type", filters.szint);
    countQuery = countQuery.eq("exam_type", filters.szint);
  }
  if (filters.tema) {
    dataQuery  = dataQuery.contains("topic_tags", [filters.tema]);
    countQuery = countQuery.contains("topic_tags", [filters.tema]);
  }
  if (filters.ev) {
    dataQuery  = dataQuery.eq("year", parseInt(filters.ev));
    countQuery = countQuery.eq("year", parseInt(filters.ev));
  }
  if (filters.tipus === "rovid") {
    dataQuery  = dataQuery.lte("problem_number", 4);
    countQuery = countQuery.lte("problem_number", 4);
  }
  if (filters.tipus === "hosszu") {
    dataQuery  = dataQuery.gte("problem_number", 5);
    countQuery = countQuery.gte("problem_number", 5);
  }

  const [{ data, error }, { count }] = await Promise.all([dataQuery, countQuery]);
  if (error) throw error;
  return { problems: (data as Problem[]) ?? [], total: count ?? 0 };
}

export default async function FeladatokPage({ searchParams }: Props) {
  const { problems, total } = await getProblems(searchParams);
  const page       = Math.max(1, parseInt(searchParams.oldal ?? "1"));
  const view       = searchParams.nezet === "list" ? "list" : "grid";
  const totalPages = Math.ceil(total / PAGE_SIZE);
  const fromItem   = (page - 1) * PAGE_SIZE + 1;
  const toItem     = Math.min(page * PAGE_SIZE, total);

  const activeFilters = {
    tema:  searchParams.tema,
    szint: searchParams.szint,
    ev:    searchParams.ev,
    nezet: searchParams.nezet,
    tipus: searchParams.tipus,
  };

  const topicLabel = searchParams.tema  ? TOPIC_LABELS[searchParams.tema] : null;
  const examLabel  = searchParams.szint === "kozep" ? "Középszint"
                   : searchParams.szint === "emelt" ? "Emelt szint" : null;
  const tipusLabel = searchParams.tipus === "rovid"  ? "Rövid (1–4)"
                   : searchParams.tipus === "hosszu" ? "Hosszú (5+)" : null;

  const titleParts = [topicLabel, examLabel, tipusLabel, searchParams.ev].filter(Boolean);
  const pageTitle  = titleParts.length > 0 ? titleParts.join(" · ") : "Összes feladat";

  return (
    <div className="space-y-6">
      <div className="flex items-start justify-between gap-4">
        <div>
          <h1 className="text-2xl font-bold text-slate-900 dark:text-white print:text-black">{pageTitle}</h1>
          <p className="text-sm text-slate-500 dark:text-slate-400 mt-1">
            {total} feladat
            {totalPages > 1 && ` · ${fromItem}–${toItem} látható`}
          </p>
        </div>
        <div className="flex items-center gap-2 no-print">
          <Suspense>
            <ViewToggle current={view} />
          </Suspense>
          <PrintButton />
        </div>
      </div>

      <FilterBar active={activeFilters} />

      {problems.length === 0 ? (
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
                href={buildPageUrl(searchParams, page - 1)}
                className="inline-flex items-center gap-1.5 px-4 py-2 rounded-xl text-sm font-medium
                           bg-white dark:bg-slate-800 border border-slate-200 dark:border-slate-700
                           text-slate-700 dark:text-slate-200 hover:border-navy-400 transition-colors"
              >
                ← Előző
              </a>
            )}
            {page < totalPages && (
              <a
                href={buildPageUrl(searchParams, page + 1)}
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
