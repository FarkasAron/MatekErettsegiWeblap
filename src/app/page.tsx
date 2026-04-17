import Link from "next/link";
import Image from "next/image";
import { TOPIC_LABELS } from "@/lib/supabase";
import db from "@/lib/db";
import ScrollReveal from "@/components/ScrollReveal";
import StatCounter from "@/components/StatCounter";

export const revalidate = 300;

// Fixed positions — no Math.random() to avoid hydration mismatch
const MATH_SYMBOLS = [
  { sym: "∑", size: 52, top: 14, left: 74 },
  { sym: "∫", size: 64, top: 62, left:  7 },
  { sym: "π", size: 38, top: 22, left: 43 },
  { sym: "√", size: 46, top: 78, left: 57 },
  { sym: "∂", size: 34, top: 38, left: 88 },
  { sym: "∇", size: 44, top:  8, left: 27 },
  { sym: "∞", size: 30, top: 83, left: 77 },
  { sym: "φ", size: 54, top: 50, left: 17 },
];

const FEATURED_TOPICS = [
  { slug: "geometria-sik",        icon: "△",    wide: true  },
  { slug: "egyenletek",           icon: "=",    wide: false },
  { slug: "fuggvenyek",           icon: "f(x)", wide: false },
  { slug: "valoszinuseg",         icon: "P",    wide: false },
  { slug: "trigonometria",        icon: "sin",  wide: false },
  { slug: "kombinatorika",        icon: "n!",   wide: false },
  { slug: "sorozatok",            icon: "aₙ",   wide: false },
  { slug: "statisztika",          icon: "σ",    wide: false },
  { slug: "exponencialis",        icon: "eˣ",   wide: false },
  { slug: "koordinata-geometria", icon: "xy",   wide: true  },
  { slug: "differencialszamitas", icon: "∂",    wide: false },
  { slug: "szovegfeladas",        icon: "✎",    wide: false },
];

export default async function HomePage() {
  const [countResult, yearResult, sessionResult] = await Promise.all([
    db.query("SELECT COUNT(*) FROM problems WHERE human_reviewed = true"),
    db.query("SELECT year FROM problems WHERE human_reviewed = true"),
    db.query("SELECT exam_session, year, exam_type FROM problems WHERE human_reviewed = true"),
  ]);

  const yearCount    = new Set(yearResult.rows.map((r: { year: number }) => r.year)).size;
  const sessionCount = new Set(sessionResult.rows.map((r: { year: number; exam_type: string; exam_session: string }) => `${r.year}-${r.exam_type}-${r.exam_session}`)).size;
  const total        = parseInt(countResult.rows[0].count) ?? 0;
  const totalStr     = total >= 1000
    ? `${Math.floor(total / 1000)} ${String(total % 1000).padStart(3, "0")}`
    : String(total);

  const STATS = [
    { value: totalStr,          label: "Feladat" },
    { value: "26",              label: "Témakör" },
    { value: String(yearCount), label: "Évjárat" },
    { value: String(sessionCount), label: "Feladatsor" },
  ];
  return (
    <div className="space-y-20">

      {/* ── Hero (full-bleed, aurora background) ──────────────────────── */}
      <section className="relative -mx-4 -mt-10 overflow-hidden min-h-[520px] flex items-center">
        {/* Base — white in light mode, near-black in dark */}
        <div className="absolute inset-0 bg-white dark:bg-[#060d1a]" />

        {/* Aurora orbs — soft navy/lavender tints in light, vivid navy in dark */}
        <div className="absolute -top-40 -right-40 w-[650px] h-[650px] rounded-full bg-navy-100/80 dark:bg-navy-700/70 blur-[120px] animate-aurora-1" />
        <div className="absolute -bottom-32 -left-32 w-[500px] h-[500px] rounded-full bg-crimson-100/60 dark:bg-crimson-700/20 blur-[100px] animate-aurora-2" />
        <div className="absolute top-1/4 left-1/3 w-[420px] h-[420px] rounded-full bg-navy-50/80 dark:bg-navy-500/25 blur-[140px] animate-aurora-3" />
        <div className="absolute bottom-0 right-1/4 w-[300px] h-[300px] rounded-full bg-slate-100/60 dark:bg-navy-900/60 blur-[80px] animate-aurora-1" style={{ animationDelay: "4s" }} />

        {/* Floating math symbol decorations */}
        <div className="absolute inset-0 overflow-hidden pointer-events-none select-none" aria-hidden="true">
          {MATH_SYMBOLS.map(({ sym, size, top, left }, i) => (
            <span
              key={i}
              className="absolute font-bold text-navy-600/[0.05] dark:text-white/[0.035] animate-float"
              style={{ fontSize: size, top: `${top}%`, left: `${left}%`, animationDelay: `${i * 0.7}s` }}
            >
              {sym}
            </span>
          ))}
        </div>

        {/* Left crimson accent stripe */}
        <div className="absolute left-0 top-0 bottom-0 w-1 bg-gradient-to-b from-transparent via-crimson-500/80 to-transparent" />

        {/* Content */}
        <div className="relative z-10 w-full px-5 sm:px-14 py-14 sm:py-20 max-w-6xl mx-auto flex flex-col lg:flex-row items-center gap-8 lg:gap-10">
          <div className="max-w-2xl space-y-7 flex-1">
            {/* Badge */}
            <div className="inline-flex items-center gap-2 bg-navy-50 dark:bg-white/[0.07] border border-navy-100 dark:border-white/[0.10] rounded-full px-4 py-1.5 animate-fade-up">
              <span className="w-2 h-2 rounded-full bg-crimson-500 animate-pulse-slow shrink-0" />
              <span className="text-navy-600 dark:text-white/70 text-xs font-medium tracking-wide uppercase">
                <span className="hidden sm:inline">Boronkay György Technikum · </span>Érettségi felkészítő
              </span>
            </div>

            {/* Heading — crimson/navy in light, white gradient in dark */}
            <h1 className="text-4xl sm:text-5xl lg:text-6xl font-bold leading-tight tracking-tight animate-fade-up stagger-1">
              <span className="text-crimson-600 dark:bg-clip-text dark:text-transparent dark:bg-gradient-to-r dark:from-white dark:via-red-200 dark:to-slate-300">
                Matematika
              </span>
              <br />
              <span className="text-navy-700 dark:text-white">Feladatbank</span>
            </h1>

            <p className="text-slate-600 dark:text-slate-300/80 text-base sm:text-lg leading-relaxed animate-fade-up stagger-2">
              Középszintű és emelt szintű érettségi feladatok az eredeti vizsgalapokról,
              témakör és nehézség szerint szűrve.
            </p>

            <div className="flex flex-wrap gap-3 animate-fade-up stagger-3">
              <Link href="/feladatok" className="btn-primary inline-flex items-center gap-2">
                Feladatok böngészése <span className="text-crimson-200">→</span>
              </Link>
              <Link href="/feladatsor"
                className="inline-flex items-center gap-2
                           bg-navy-600 text-white border border-navy-600
                           dark:bg-white/[0.07] dark:text-white dark:border-white/[0.15]
                           px-6 py-3 rounded-xl font-semibold
                           hover:bg-navy-700 dark:hover:bg-white/[0.14]
                           active:scale-95 transition-all">
                Feladatsorok
              </Link>
            </div>
          </div>

          {/* Logo — stamp in, then float */}
          <div className="hidden lg:flex shrink-0 items-center justify-center animate-stamp" style={{ animationDelay: "0.3s" }}>
            <div className="relative animate-float" style={{ animationDelay: "1s" }}>
              <div className="absolute inset-0 rounded-full bg-crimson-600/20 blur-2xl scale-125" />
              <Image
                src="/boronkay-logo.png"
                alt="Boronkay György Technikum"
                width={200}
                height={200}
                className="relative drop-shadow-2xl hover:scale-105 transition-transform duration-500 cursor-default"
                priority
              />
            </div>
          </div>
        </div>
      </section>

      {/* ── Stats (large typographic numbers, no cards) ────────────────── */}
      <section className="-mx-4 px-4 py-12 border-y border-slate-200/60 dark:border-navy-600/40 bg-slate-100/80 dark:bg-navy-900/50">
        <div className="grid grid-cols-2 sm:grid-cols-4">
          {STATS.map(({ value, label }, i) => (
            <div key={label}
              className={`px-6 py-4 text-center
                ${i % 2 === 1 ? "border-l border-slate-200/80 dark:border-navy-600/40" : ""}
                ${i >= 2 ? "border-t border-slate-200/80 dark:border-navy-600/40 sm:border-t-0" : ""}
                ${i > 0 ? "sm:border-l sm:border-slate-200/80 dark:sm:border-navy-600/40" : ""}
              `}>
              <div className="text-4xl sm:text-5xl font-bold tracking-tight bg-clip-text text-transparent bg-gradient-to-br from-navy-600 to-navy-500 dark:from-white dark:to-slate-300">
                <StatCounter value={value} />
              </div>
              <div className="text-[10px] sm:text-xs text-slate-500 dark:text-slate-400 mt-2 uppercase tracking-widest font-medium">
                {label}
              </div>
            </div>
          ))}
        </div>
      </section>

      {/* ── Level cards ───────────────────────────────────────────────── */}
      <ScrollReveal>
        <section>
          <h2 className="text-2xl font-bold text-slate-900 dark:text-white mb-5">Szint szerint</h2>
          <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
            <Link href="/feladatok?szint=kozep"
              className="card p-6 flex items-center gap-5 group overflow-hidden relative">
              <div className="absolute inset-0 bg-gradient-to-r from-blue-50 to-transparent dark:from-navy-600/10 opacity-0 group-hover:opacity-100 transition-opacity" />
              <div className="relative w-14 h-14 rounded-2xl bg-blue-100 dark:bg-blue-900/30 flex items-center justify-center text-3xl group-hover:scale-110 transition-transform">
                📘
              </div>
              <div className="relative">
                <div className="font-bold text-slate-800 dark:text-slate-100 text-lg">Középszint</div>
                <div className="text-sm text-slate-500 dark:text-slate-400 mt-0.5">Kötelező érettségi, minden évből</div>
              </div>
              <span className="relative ml-auto text-2xl text-slate-200 dark:text-slate-700 group-hover:text-navy-500 dark:group-hover:text-navy-400 group-hover:translate-x-1 transition-all">→</span>
            </Link>

            <Link href="/feladatok?szint=emelt"
              className="card p-6 flex items-center gap-5 group overflow-hidden relative">
              <div className="absolute inset-0 bg-gradient-to-r from-crimson-50 to-transparent dark:from-crimson-900/10 opacity-0 group-hover:opacity-100 transition-opacity" />
              <div className="relative w-14 h-14 rounded-2xl bg-crimson-100 dark:bg-crimson-900/30 flex items-center justify-center text-3xl group-hover:scale-110 transition-transform">
                📗
              </div>
              <div className="relative">
                <div className="font-bold text-slate-800 dark:text-slate-100 text-lg">Emelt szint</div>
                <div className="text-sm text-slate-500 dark:text-slate-400 mt-0.5">Emelt érettségi és felvételi</div>
              </div>
              <span className="relative ml-auto text-2xl text-slate-200 dark:text-slate-700 group-hover:text-crimson-500 group-hover:translate-x-1 transition-all">→</span>
            </Link>
          </div>
        </section>
      </ScrollReveal>

      {/* ── Quick links ───────────────────────────────────────────────── */}
      <ScrollReveal delay={80}>
        <section>
          <h2 className="text-2xl font-bold text-slate-900 dark:text-white mb-5">Gyors elérés</h2>
          <div className="grid grid-cols-1 sm:grid-cols-3 gap-4">
            {[
              { href: "/feladatsor",            icon: "📋", title: "Feladatsorok",    desc: "Teljes érettségi vizsgalapok" },
              { href: "/statisztika",           icon: "📊", title: "Statisztika",     desc: "Adatbázis összetétele" },
              { href: "/feladatok?tipus=rovid", icon: "⚡", title: "Rövid feladatok", desc: "Gyors 1–4. feladatok" },
            ].map(({ href, icon, title, desc }) => (
              <Link key={href} href={href}
                className="card p-5 flex items-center gap-4 group overflow-hidden relative">
                <div className="absolute inset-0 bg-gradient-to-r from-slate-50 to-transparent dark:from-white/5 opacity-0 group-hover:opacity-100 transition-opacity" />
                <div className="relative w-12 h-12 rounded-xl bg-slate-100 dark:bg-white/10 flex items-center justify-center text-2xl group-hover:scale-110 transition-transform shrink-0">
                  {icon}
                </div>
                <div className="relative">
                  <div className="font-semibold text-slate-800 dark:text-slate-100">{title}</div>
                  <div className="text-xs text-slate-500 dark:text-slate-400 mt-0.5">{desc}</div>
                </div>
                <span className="relative ml-auto text-xl text-slate-200 dark:text-slate-700 group-hover:text-navy-500 dark:group-hover:text-navy-400 group-hover:translate-x-1 transition-all shrink-0">→</span>
              </Link>
            ))}
          </div>
        </section>
      </ScrollReveal>

      {/* ── Featured topics (bento grid) ──────────────────────────────── */}
      <ScrollReveal delay={120}>
        <section>
          <h2 className="text-2xl font-bold text-slate-900 dark:text-white mb-6">Témakörök</h2>
          <div className="grid grid-cols-2 sm:grid-cols-4 gap-3">
            {FEATURED_TOPICS.map(({ slug, icon, wide }, i) => (
              <Link
                key={slug}
                href={`/feladatok?tema=${slug}`}
                className={`card group overflow-hidden relative ${wide ? "col-span-2 p-5" : "p-4"}`}
                style={{ animationDelay: `${i * 0.05}s` }}
              >
                {wide ? (
                  <div className="flex items-center gap-4">
                    <div className="w-14 h-14 rounded-2xl bg-navy-50 dark:bg-white/10 border border-navy-100 dark:border-white/10
                                    flex items-center justify-center font-bold text-navy-600 dark:text-slate-200
                                    text-xl shrink-0 group-hover:bg-crimson-50 dark:group-hover:bg-crimson-900/30
                                    group-hover:text-crimson-600 dark:group-hover:text-crimson-300
                                    group-hover:border-crimson-200 dark:group-hover:border-crimson-600/40
                                    transition-all duration-200">
                      {icon}
                    </div>
                    <div className="flex-1 min-w-0">
                      <div className="text-[10px] text-slate-400 dark:text-slate-500 uppercase tracking-widest mb-0.5">Témakör</div>
                      <div className="font-bold text-slate-800 dark:text-slate-100 text-base leading-tight">
                        {TOPIC_LABELS[slug]}
                      </div>
                    </div>
                    <span className="text-xl text-slate-200 dark:text-slate-700 group-hover:text-crimson-500 group-hover:translate-x-1 transition-all shrink-0">→</span>
                  </div>
                ) : (
                  <div className="flex items-center gap-3">
                    <div className="w-10 h-10 rounded-xl bg-navy-50 dark:bg-white/10 border border-navy-100 dark:border-white/10
                                    flex items-center justify-center font-bold text-navy-600 dark:text-slate-200
                                    text-sm shrink-0 group-hover:bg-crimson-50 dark:group-hover:bg-crimson-900/30
                                    group-hover:text-crimson-600 dark:group-hover:text-crimson-300
                                    group-hover:border-crimson-200 dark:group-hover:border-crimson-600/40
                                    transition-all duration-200">
                      {icon}
                    </div>
                    <span className="text-sm font-medium text-slate-700 dark:text-slate-100 leading-tight
                                     group-hover:text-navy-700 dark:group-hover:text-white transition-colors">
                      {TOPIC_LABELS[slug]}
                    </span>
                  </div>
                )}
              </Link>
            ))}

            <Link
              href="/temakoren-kint"
              className="card col-span-2 p-5 flex items-center justify-center gap-3 group relative overflow-hidden"
            >
              <div className="absolute inset-0 bg-gradient-to-r from-crimson-600/[0.04] to-navy-600/[0.04] opacity-0 group-hover:opacity-100 transition-opacity" />
              <span className="relative text-sm font-semibold text-slate-500 dark:text-slate-400 group-hover:text-crimson-600 dark:group-hover:text-crimson-400 transition-colors uppercase tracking-widest">
                Összes témakör
              </span>
              <span className="relative text-slate-300 dark:text-slate-600 group-hover:text-crimson-500 group-hover:translate-x-1 transition-all">→</span>
            </Link>
          </div>
        </section>
      </ScrollReveal>

    </div>
  );
}
