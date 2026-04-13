import { supabase, TOPIC_LABELS } from "@/lib/supabase";
import Link from "next/link";
import ScrollReveal from "@/components/ScrollReveal";
import AnimatedBar from "@/components/AnimatedBar";
import StatCounter from "@/components/StatCounter";

export const revalidate = 300;

async function getTopicCounts(): Promise<{ slug: string; label: string; count: number }[]> {
  const { data, error } = await supabase
    .from("problems")
    .select("topic_tags")
    .eq("human_reviewed", true)
    .limit(5000);
  if (error) throw error;

  const counts: Record<string, number> = {};
  for (const row of data ?? []) {
    for (const tag of row.topic_tags ?? []) {
      counts[tag] = (counts[tag] || 0) + 1;
    }
  }

  return Object.entries(TOPIC_LABELS)
    .map(([slug, label]) => ({ slug, label, count: counts[slug] ?? 0 }))
    .sort((a, b) => b.count - a.count);
}

async function getSummary() {
  const { data } = await supabase
    .from("problems")
    .select("exam_type")
    .eq("human_reviewed", true)
    .limit(5000);

  const rows  = data ?? [];
  const total = rows.length;
  const kozep = rows.filter((r) => r.exam_type === "kozep").length;
  const emelt = rows.filter((r) => r.exam_type === "emelt").length;

  return { total, kozep, emelt };
}

export default async function StatisztikaPage() {
  const [topics, summary] = await Promise.all([getTopicCounts(), getSummary()]);
  const maxCount = topics[0]?.count ?? 1;

  const summaryItems = [
    { label: "Összes feladat", value: summary.total, color: "text-navy-600 dark:text-navy-200" },
    { label: "Középszint",     value: summary.kozep, color: "text-blue-600 dark:text-blue-300" },
    { label: "Emelt szint",    value: summary.emelt, color: "text-crimson-600 dark:text-crimson-300" },
  ];

  return (
    <div className="space-y-10">

      {/* Header */}
      <ScrollReveal>
        <div>
          <h1 className="text-3xl font-bold text-slate-900 dark:text-white">Statisztika</h1>
          <p className="text-slate-500 dark:text-slate-400 mt-2">
            Az adatbázis összetétele témakör, szint és nehézség szerint.
          </p>
        </div>
      </ScrollReveal>

      {/* Summary cards — numbers count up on scroll */}
      <ScrollReveal delay={60}>
        <section>
          <h2 className="text-lg font-semibold text-slate-700 dark:text-slate-300 mb-4">Összesítés</h2>
          <div className="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-6 gap-3">
            {summaryItems.map(({ label, value, color }) => (
              <div key={label} className="card p-4 text-center">
                <div className={`text-2xl font-extrabold ${color}`}>
                  <StatCounter value={String(value)} duration={1200} />
                </div>
                <div className="text-xs text-slate-500 dark:text-slate-400 mt-1 font-medium">{label}</div>
              </div>
            ))}
          </div>
        </section>
      </ScrollReveal>

      {/* Level ratio — bars animate in on scroll */}
      <ScrollReveal delay={80}>
        <section>
          <h2 className="text-lg font-semibold text-slate-700 dark:text-slate-300 mb-4">Szint arány</h2>
          <div className="card p-5 space-y-4">
            {[
              {
                label: "Középszint",
                value: summary.kozep,
                pct: (summary.kozep / summary.total) * 100,
                barClass: "bg-navy-500",
              },
              {
                label: "Emelt szint",
                value: summary.emelt,
                pct: (summary.emelt / summary.total) * 100,
                barClass: "bg-crimson-500",
              },
            ].map(({ label, value, pct, barClass }, i) => (
              <div key={label} className="flex items-center gap-3">
                <span className="w-28 text-sm font-medium text-slate-600 dark:text-slate-400 shrink-0">{label}</span>
                <AnimatedBar pct={pct} barClass={barClass} height="h-3" delay={i * 120} />
                <span className="text-sm font-semibold text-slate-700 dark:text-slate-300 w-10 text-right shrink-0">{value}</span>
                <span className="text-xs text-slate-400 w-10 shrink-0">{Math.round(pct)}%</span>
              </div>
            ))}
          </div>
        </section>
      </ScrollReveal>

      {/* Topic bars — staggered animation */}
      <ScrollReveal delay={100}>
        <section>
          <h2 className="text-lg font-semibold text-slate-700 dark:text-slate-300 mb-4">Feladatok témakörönként</h2>
          <div className="card divide-y divide-slate-100 dark:divide-slate-700/50">
            {topics.map(({ slug, label, count }, i) => (
              <Link
                key={slug}
                href={`/feladatok?tema=${slug}`}
                className="flex items-center gap-3 px-5 py-3 hover:bg-slate-50 dark:hover:bg-slate-700/30 transition-colors group"
              >
                <span className="w-6 text-xs text-slate-400 dark:text-slate-600 font-mono shrink-0">{i + 1}</span>

                <span className="w-52 text-sm font-medium text-slate-700 dark:text-slate-300 group-hover:text-navy-600 dark:group-hover:text-white transition-colors shrink-0 truncate">
                  {label}
                </span>

                <AnimatedBar
                  pct={count > 0 ? (count / maxCount) * 100 : 0}
                  barClass="bg-gradient-to-r from-navy-500 to-navy-400 dark:from-navy-400 dark:to-navy-300 group-hover:from-crimson-500 group-hover:to-crimson-400"
                  height="h-2.5"
                  delay={i * 30}
                />

                <span className="text-sm font-semibold text-slate-600 dark:text-slate-400 w-10 text-right shrink-0">
                  {count}
                </span>
              </Link>
            ))}
          </div>
        </section>
      </ScrollReveal>

    </div>
  );
}
