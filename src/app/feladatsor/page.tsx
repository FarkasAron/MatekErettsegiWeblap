import { SESSION_LABELS } from "@/lib/supabase";
import db from "@/lib/db";
import Link from "next/link";
import ScrollReveal from "@/components/ScrollReveal";

export const dynamic = 'force-dynamic';

interface ExamGroup {
  year: number;
  exam_type: "kozep" | "emelt";
  exam_session: string;
  exam_part: string | null;
  count: number;
}

function toSlug(g: ExamGroup): string {
  const base = `${g.year}-${g.exam_type}-${g.exam_session}`;
  return g.exam_part ? `${base}-${g.exam_part.toLowerCase()}` : base;
}

async function getExamGroups(): Promise<{ groups: ExamGroup[]; dbError?: boolean }> {
  try {
    const result = await db.query(
      "SELECT year, exam_type, exam_session, exam_part FROM problems WHERE human_reviewed = true ORDER BY year DESC, exam_session, exam_type LIMIT 2000"
    );

    const map = new Map<string, ExamGroup>();
    for (const row of result.rows) {
      const key = `${row.year}-${row.exam_type}-${row.exam_session}-${row.exam_part ?? ""}`;
      if (map.has(key)) {
        map.get(key)!.count++;
      } else {
        map.set(key, {
          year: row.year,
          exam_type: row.exam_type,
          exam_session: row.exam_session,
          exam_part: row.exam_part,
          count: 1,
        });
      }
    }

    const groups = Array.from(map.values()).sort((a, b) => {
      if (b.year !== a.year) return b.year - a.year;
      const sessOrder = ["majus", "oktober", "februar"];
      const sA = sessOrder.indexOf(a.exam_session);
      const sB = sessOrder.indexOf(b.exam_session);
      if (sA !== sB) return sA - sB;
      if (a.exam_type !== b.exam_type) return a.exam_type === "kozep" ? -1 : 1;
      return (a.exam_part ?? "").localeCompare(b.exam_part ?? "");
    });

    return { groups };
  } catch (err) {
    console.error("[feladatsor] Failed to fetch exam groups:", err);
    return { groups: [], dbError: true };
  }
}

export default async function FeladatsorPage() {
  const { groups, dbError } = await getExamGroups();

  const byYear = new Map<number, ExamGroup[]>();
  for (const g of groups) {
    if (!byYear.has(g.year)) byYear.set(g.year, []);
    byYear.get(g.year)!.push(g);
  }

  return (
    <div className="space-y-10">

      {/* Header */}
      <ScrollReveal>
        <div>
          <h1 className="text-3xl font-bold text-slate-900 dark:text-white">Feladatsorok</h1>
          <p className="text-slate-500 dark:text-slate-400 mt-2">
            Teljes érettségi feladatsorok — az eredeti vizsgalap sorrendjében.
          </p>
        </div>
      </ScrollReveal>

      {dbError && (
        <div className="text-center py-16 text-slate-500 dark:text-slate-400">
          <p className="text-lg font-medium text-red-600 dark:text-red-400">Hiba történt az adatok betöltésekor.</p>
          <p className="text-sm mt-2">Kérjük, töltsd újra az oldalt, vagy próbáld meg később.</p>
        </div>
      )}

      {Array.from(byYear.entries()).map(([year, yearGroups], yearIndex) => (
        <ScrollReveal key={year} delay={Math.min(yearIndex * 40, 200)}>
          <section>
            {/* Year heading with accent */}
            <div className="flex items-center gap-3 mb-4">
              <span className="w-[3px] h-6 bg-crimson-500 rounded-full shrink-0" />
              <h2 className="text-xl font-bold text-slate-800 dark:text-slate-100">{year}</h2>
              <span className="text-xs text-slate-400 dark:text-slate-600 font-medium">
                {yearGroups.length} feladatsor
              </span>
            </div>

            <div className="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 gap-3">
              {yearGroups.map((g) => {
                const sessionLabel = SESSION_LABELS[g.exam_session] ?? g.exam_session;
                const typeLabel    = g.exam_type === "kozep" ? "Középszint" : "Emelt szint";
                const partLabel    = g.exam_part ? ` · ${g.exam_part}. rész` : "";
                const slug         = toSlug(g);
                const isEmelt      = g.exam_type === "emelt";

                return (
                  <Link
                    key={slug}
                    href={`/feladatsor/${slug}`}
                    className="card p-5 flex items-center justify-between gap-3 group overflow-hidden relative"
                  >
                    {/* Left accent */}
                    <div className={`absolute left-0 top-0 bottom-0 w-[3px] ${isEmelt ? "bg-crimson-500" : "bg-navy-500"}`} />

                    <div className="absolute inset-0 bg-gradient-to-r from-navy-50 to-transparent dark:from-navy-900/20 opacity-0 group-hover:opacity-100 transition-opacity" />

                    <div className="relative flex-1 min-w-0">
                      <div className="font-semibold text-slate-800 dark:text-slate-100 leading-snug">
                        {sessionLabel}{partLabel}
                      </div>
                      <div className="flex items-center gap-2 mt-1.5">
                        <span className={`badge text-white text-[10px] ${isEmelt ? "bg-crimson-600" : "bg-navy-600"}`}>
                          {typeLabel}
                        </span>
                        <span className="text-xs text-slate-400 dark:text-slate-500">{g.count} feladat</span>
                      </div>
                    </div>

                    <span className="relative text-xl text-slate-200 dark:text-slate-700 group-hover:text-navy-500 dark:group-hover:text-navy-400 group-hover:translate-x-1 transition-all shrink-0">→</span>
                  </Link>
                );
              })}
            </div>
          </section>
        </ScrollReveal>
      ))}
    </div>
  );
}
