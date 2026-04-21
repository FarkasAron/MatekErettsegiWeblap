import { Suspense } from "react";
import { type Problem, SESSION_LABELS } from "@/lib/supabase";
import db from "@/lib/db";
import ProblemCard from "@/components/ProblemCard";
import ProblemList from "@/components/ProblemList";
import ViewToggle from "@/components/ViewToggle";
import PrintButton from "@/components/PrintButton";
import Link from "next/link";

export const dynamic = 'force-dynamic';

function parseSlug(slug: string) {
  const parts = slug.split("-");
  const is_secondary_language = parts[parts.length - 1] === "matma";
  const core = is_secondary_language ? parts.slice(0, -1) : parts;
  // core[0] = year, core[1] = exam_type, core[2] = exam_session, core[3] = exam_part (optional)
  const year         = parseInt(core[0]);
  const exam_type    = core[1] as "kozep" | "emelt";
  const exam_session = core[2];
  const exam_part    = core[3] ? core[3].toUpperCase() : null;
  return { year, exam_type, exam_session, exam_part, is_secondary_language };
}

async function getProblems(slug: string): Promise<{ problems: Problem[]; dbError?: boolean }> {
  const { year, exam_type, exam_session, exam_part, is_secondary_language } = parseSlug(slug);

  try {
    const result = exam_part
      ? await db.query(
          `SELECT id, year, exam_type, exam_session, exam_part, problem_number, sub_part,
                  problem_image_url, max_points, topic_tags, ocr_used
           FROM problems WHERE human_reviewed = true AND year = $1 AND exam_type = $2
             AND exam_session = $3 AND exam_part = $4 AND is_secondary_language = $5
           ORDER BY problem_number, sub_part NULLS LAST`,
          [year, exam_type, exam_session, exam_part, is_secondary_language]
        )
      : await db.query(
          `SELECT id, year, exam_type, exam_session, exam_part, problem_number, sub_part,
                  problem_image_url, max_points, topic_tags, ocr_used
           FROM problems WHERE human_reviewed = true AND year = $1 AND exam_type = $2
             AND exam_session = $3 AND exam_part IS NULL AND is_secondary_language = $4
           ORDER BY problem_number, sub_part NULLS LAST`,
          [year, exam_type, exam_session, is_secondary_language]
        );
    return { problems: result.rows as Problem[] };
  } catch (err) {
    console.error("[feladatsor/slug] Failed to fetch problems:", err);
    return { problems: [], dbError: true };
  }
}

export default async function FeladatsorDetailPage({
  params,
  searchParams,
}: {
  params: { slug: string };
  searchParams: { nezet?: string };
}) {
  const { slug } = params;
  const { year, exam_type, exam_session, exam_part, is_secondary_language } = parseSlug(slug);
  const { problems, dbError } = await getProblems(slug);
  const view = searchParams.nezet === "list" ? "list" : "grid";

  const sessionLabel = SESSION_LABELS[exam_session] ?? exam_session;
  const typeLabel    = exam_type === "kozep" ? "Középszint" : "Emelt szint";
  const partLabel    = exam_part ? ` · ${exam_part}. rész` : "";
  const matmaLabel   = is_secondary_language ? " · Kisebbségi változat" : "";
  const title        = `${year} ${sessionLabel} · ${typeLabel}${partLabel}${matmaLabel}`;

  const isEmelt = exam_type === "emelt";

  return (
    <div className="space-y-8">

      {/* Back link */}
      <Link
        href="/feladatsor"
        className="no-print inline-flex items-center gap-1.5 text-sm text-slate-400 dark:text-slate-500
                   hover:text-navy-600 dark:hover:text-white transition-colors group"
      >
        <span className="group-hover:-translate-x-0.5 transition-transform">←</span>
        Vissza a feladatsorokhoz
      </Link>

      {/* Header card */}
      <div className={`relative rounded-2xl overflow-hidden p-6 sm:p-8
        ${isEmelt
          ? "bg-gradient-to-br from-crimson-700 to-crimson-900 dark:from-crimson-900 dark:to-[#1a0505]"
          : "bg-gradient-to-br from-navy-600 to-navy-800 dark:from-navy-800 dark:to-[#060d1a]"
        }`}>
        {/* Subtle dot grid */}
        <div className="absolute inset-0 dot-grid opacity-20" />
        <div className="relative z-10 flex flex-col sm:flex-row sm:items-start sm:justify-between gap-4">
          <div>
            <div className="text-white/50 text-xs font-medium uppercase tracking-widest mb-2">{year}</div>
            <h1 className="text-2xl sm:text-3xl font-bold text-white print:text-black">{title}</h1>
            <p className="text-white/60 text-sm mt-2">{problems.length} feladat</p>
          </div>
          <div className="no-print flex items-center gap-2 mt-1">
            <Suspense>
              <ViewToggle current={view} />
            </Suspense>
            <PrintButton />
          </div>
        </div>
      </div>

      {dbError ? (
        <div className="text-center py-16 text-slate-500 dark:text-slate-400">
          <p className="text-lg font-medium text-red-600 dark:text-red-400">Hiba történt az adatok betöltésekor.</p>
          <p className="text-sm mt-2">Kérjük, töltsd újra az oldalt, vagy próbáld meg később.</p>
        </div>
      ) : problems.length === 0 ? (
        <div className="text-center py-16 text-slate-500 dark:text-slate-400">
          <p className="text-lg">Nincs elérhető feladat ehhez a feladatsorhoz.</p>
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
    </div>
  );
}
