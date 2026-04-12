import Link from "next/link";

export default function NotFound() {
  return (
    <div className="min-h-[60vh] flex flex-col items-center justify-center text-center px-4 py-20 select-none">
      {/* Big decorative number */}
      <div className="relative mb-8">
        <span className="text-[10rem] sm:text-[14rem] font-bold leading-none
                         bg-clip-text text-transparent
                         bg-gradient-to-br from-navy-100 to-slate-200
                         dark:from-navy-800 dark:to-slate-700">
          404
        </span>
        {/* Floating math symbol overlay */}
        <span className="absolute top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2
                         text-5xl sm:text-6xl font-bold
                         text-navy-600 dark:text-navy-300 animate-float">
          ∅
        </span>
      </div>

      <h1 className="text-2xl sm:text-3xl font-bold text-slate-800 dark:text-white mb-3">
        Ez az oldal nem található
      </h1>
      <p className="text-slate-500 dark:text-slate-400 max-w-md mb-8 text-base">
        A keresett feladat vagy oldal nem létezik, vagy az URL megváltozott.
      </p>

      <div className="flex flex-wrap gap-3 justify-center">
        <Link href="/"
          className="btn-primary inline-flex items-center gap-2">
          ← Főoldal
        </Link>
        <Link href="/feladatok"
          className="inline-flex items-center gap-2 px-6 py-3 rounded-xl font-semibold
                     border border-slate-200 dark:border-slate-700
                     text-slate-700 dark:text-slate-300
                     hover:border-navy-300 dark:hover:border-navy-600
                     hover:text-navy-600 dark:hover:text-white
                     transition-all">
          Feladatok böngészése →
        </Link>
      </div>
    </div>
  );
}
