import Link from "next/link";
import { TOPIC_LABELS } from "@/lib/supabase";
import ScrollReveal from "@/components/ScrollReveal";

const TOPIC_ICONS: Record<string, string> = {
  "geometria-sik":        "△",
  "egyenletek":           "=",
  "fuggvenyek":           "f(x)",
  "valoszinuseg":         "P",
  "trigonometria":        "sin",
  "kombinatorika":        "n!",
  "sorozatok":            "aₙ",
  "statisztika":          "σ",
  "exponencialis":        "eˣ",
  "koordinata-geometria": "xy",
  "differencialszamitas": "∂",
  "szovegfeladas":        "✎",
  "geometria-ter":        "△△",
  "komplex":              "i",
  "matrixok":             "M",
  "vektorok":             "v",
  "szamelmelet":          "ℕ",
  "halmazok":             "∩",
  "logika":               "∧",
  "abszolutErtek":        "|x|",
};

export default function TemakorokPage() {
  const entries = Object.entries(TOPIC_LABELS);

  return (
    <div className="space-y-8">

      <ScrollReveal>
        <div>
          <h1 className="text-3xl font-bold text-slate-900 dark:text-white">Témakörök</h1>
          <p className="text-slate-500 dark:text-slate-400 mt-2">
            Válassz témakört a feladatok szűréséhez.
          </p>
        </div>
      </ScrollReveal>

      <ScrollReveal delay={60}>
        <div className="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 gap-3">
          {entries.map(([slug, label]) => (
            <Link
              key={slug}
              href={`/feladatok?tema=${slug}`}
              className="card px-5 py-4 flex items-center gap-4 group overflow-hidden relative"
            >
              <div className="absolute inset-0 bg-gradient-to-r from-crimson-50 to-transparent dark:from-crimson-900/10 opacity-0 group-hover:opacity-100 transition-opacity" />

              {/* Icon badge */}
              <div className="relative w-10 h-10 rounded-xl bg-navy-50 dark:bg-white/10 border border-navy-100 dark:border-white/10
                              flex items-center justify-center font-bold text-navy-600 dark:text-slate-200
                              text-sm shrink-0
                              group-hover:bg-crimson-50 dark:group-hover:bg-crimson-900/30
                              group-hover:text-crimson-600 dark:group-hover:text-crimson-300
                              group-hover:border-crimson-200 dark:group-hover:border-crimson-600/40
                              transition-all duration-200">
                {TOPIC_ICONS[slug] ?? "∑"}
              </div>

              <span className="relative flex-1 font-medium text-slate-700 dark:text-slate-200
                               group-hover:text-navy-700 dark:group-hover:text-white transition-colors">
                {label}
              </span>

              <span className="relative text-slate-200 dark:text-slate-700 group-hover:text-crimson-500 group-hover:translate-x-1 transition-all shrink-0">→</span>
            </Link>
          ))}
        </div>
      </ScrollReveal>

    </div>
  );
}
