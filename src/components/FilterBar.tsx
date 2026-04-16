"use client";

import { useState, useEffect } from "react";
import { useRouter, usePathname } from "next/navigation";
import { TOPIC_LABELS } from "@/lib/supabase";

interface ActiveFilters {
  tema?: string; szint?: string; ev?: string; nezet?: string;
  tipus?: string; rend?: string; q?: string;
}

const YEARS = Array.from({ length: 20 }, (_, i) => 2025 - i);

const BASE_CLS = `
  border rounded-xl px-3 py-2 text-sm font-medium
  focus:outline-none focus:ring-2 focus:ring-navy-400 dark:focus:ring-navy-500
  transition-all cursor-pointer shadow-sm appearance-none
`.replace(/\s+/g, " ").trim();

const INACTIVE_CLS = `${BASE_CLS}
  bg-white dark:bg-slate-800
  border-slate-200 dark:border-slate-700/60
  text-slate-700 dark:text-slate-200
  hover:border-navy-300 dark:hover:border-navy-600
`.replace(/\s+/g, " ").trim();

const ACTIVE_CLS = `${BASE_CLS}
  bg-navy-600 dark:bg-navy-600
  border-navy-600 dark:border-navy-500
  text-white dark:text-white
  hover:bg-navy-700 dark:hover:bg-navy-700
`.replace(/\s+/g, " ").trim();

export default function FilterBar({ active }: { active: ActiveFilters }) {
  const router   = useRouter();
  const pathname = usePathname();

  // Local search state so the input doesn't jump to URL on every keystroke
  const [searchVal, setSearchVal] = useState(active.q ?? "");

  // Keep local state in sync when URL changes (e.g. browser back/forward)
  useEffect(() => {
    setSearchVal(active.q ?? "");
  }, [active.q]);

  function update(key: string, value: string) {
    const params = new URLSearchParams();
    if (active.tema)  params.set("tema",  active.tema);
    if (active.szint) params.set("szint", active.szint);
    if (active.ev)    params.set("ev",    active.ev);
    if (active.nezet) params.set("nezet", active.nezet);
    if (active.tipus) params.set("tipus", active.tipus);
    if (active.rend)  params.set("rend",  active.rend);
    if (active.q)     params.set("q",     active.q);
    if (value) params.set(key, value); else params.delete(key);
    router.push(`${pathname}?${params.toString()}`);
  }

  function commitSearch(val: string) {
    const params = new URLSearchParams();
    if (active.tema)  params.set("tema",  active.tema);
    if (active.szint) params.set("szint", active.szint);
    if (active.ev)    params.set("ev",    active.ev);
    if (active.nezet) params.set("nezet", active.nezet);
    if (active.tipus) params.set("tipus", active.tipus);
    if (active.rend)  params.set("rend",  active.rend);
    const trimmed = val.trim();
    if (trimmed) params.set("q", trimmed); else params.delete("q");
    router.push(`${pathname}?${params.toString()}`);
  }

  const cls = (val: string | undefined) => val ? ACTIVE_CLS : INACTIVE_CLS;
  const hasFilters  = [active.tema, active.szint, active.ev, active.tipus, active.q].some(Boolean);
  const activeCount = [active.tema, active.szint, active.ev, active.tipus].filter(Boolean).length;

  return (
    <div className="flex flex-col gap-2">

      {/* ── Search row ───────────────────────────────────────────── */}
      <div className="relative w-full">
        <svg
          className="absolute left-3 top-1/2 -translate-y-1/2 w-4 h-4 text-slate-400 pointer-events-none"
          fill="none" viewBox="0 0 24 24" stroke="currentColor" strokeWidth={2}
        >
          <path strokeLinecap="round" strokeLinejoin="round" d="M21 21l-4.35-4.35M17 11A6 6 0 1 1 5 11a6 6 0 0 1 12 0z" />
        </svg>
        <input
          type="search"
          placeholder="Keresés a feladatszövegekben… (Enter)"
          value={searchVal}
          onChange={e => setSearchVal(e.target.value)}
          onKeyDown={e => { if (e.key === "Enter") commitSearch(searchVal); }}
          className="w-full pl-9 pr-10 py-2 text-sm rounded-xl border shadow-sm
                     bg-white dark:bg-slate-800
                     border-slate-200 dark:border-slate-700/60
                     text-slate-700 dark:text-slate-200
                     placeholder:text-slate-400 dark:placeholder:text-slate-500
                     focus:outline-none focus:ring-2 focus:ring-navy-400 dark:focus:ring-navy-500
                     transition-all"
        />
        {searchVal && (
          <button
            onClick={() => { setSearchVal(""); commitSearch(""); }}
            className="absolute right-2.5 top-1/2 -translate-y-1/2 w-5 h-5 rounded-full
                       bg-slate-200 dark:bg-slate-600 hover:bg-slate-300 dark:hover:bg-slate-500
                       flex items-center justify-center transition-colors"
            aria-label="Keresés törlése"
          >
            <svg className="w-3 h-3 text-slate-500 dark:text-slate-300" fill="none" viewBox="0 0 24 24" stroke="currentColor" strokeWidth={2.5}>
              <path strokeLinecap="round" strokeLinejoin="round" d="M6 18L18 6M6 6l12 12" />
            </svg>
          </button>
        )}
      </div>

      {/* ── Filter dropdowns row ─────────────────────────────────── */}
      <div className="flex flex-wrap gap-2 items-center">
        <select value={active.szint ?? ""}  onChange={e => update("szint", e.target.value)} className={cls(active.szint)}>
          <option value="">Minden szint</option>
          <option value="kozep">Középszint</option>
          <option value="emelt">Emelt szint</option>
        </select>

        <select value={active.tema ?? ""}   onChange={e => update("tema", e.target.value)}  className={cls(active.tema)}>
          <option value="">Minden témakör</option>
          {Object.entries(TOPIC_LABELS).map(([slug, label]) => (
            <option key={slug} value={slug}>{label}</option>
          ))}
        </select>

        <select value={active.ev ?? ""}     onChange={e => update("ev", e.target.value)}    className={cls(active.ev)}>
          <option value="">Minden év</option>
          {YEARS.map(y => <option key={y} value={y}>{y}</option>)}
        </select>

        <select value={active.tipus ?? ""}  onChange={e => update("tipus", e.target.value)} className={cls(active.tipus)}>
          <option value="">Minden típus</option>
          {active.szint === "kozep" ? (
            <>
              <option value="rovid">Rövid (1–12)</option>
              <option value="hosszu">Hosszú (13–18)</option>
            </>
          ) : active.szint === "emelt" ? (
            <>
              <option value="rovid">Rövid (1–4)</option>
              <option value="hosszu">Hosszú (5–9)</option>
            </>
          ) : (
            <>
              <option value="rovid">Rövid</option>
              <option value="hosszu">Hosszú</option>
            </>
          )}
        </select>

        <select value={active.rend ?? ""}   onChange={e => update("rend", e.target.value)}  className={cls(active.rend)}>
          <option value="">Legújabb előre</option>
          <option value="ev-asc">Legrégebbi előre</option>
          <option value="pont-desc">Legtöbb pont előre</option>
          <option value="pont-asc">Legkevesebb pont előre</option>
        </select>

        {hasFilters && (
          <a href="/feladatok"
            className="inline-flex items-center gap-1.5 px-3 py-2 rounded-xl text-sm font-semibold
                       text-crimson-600 dark:text-crimson-400 border border-crimson-200 dark:border-crimson-800
                       hover:bg-crimson-50 dark:hover:bg-crimson-900/20 transition-colors">
            {activeCount > 0 && (
              <span className="w-4 h-4 rounded-full bg-crimson-500 text-white text-[10px] flex items-center justify-center font-bold shrink-0">
                {activeCount}
              </span>
            )}
            Törlés
          </a>
        )}
      </div>

      {/* Search query indicator */}
      {active.q && (
        <p className="text-xs text-slate-500 dark:text-slate-400">
          Keresés: <span className="font-semibold text-navy-600 dark:text-navy-400">&ldquo;{active.q}&rdquo;</span>
          {" — "}az eredmények az OCR-szövegen alapulnak, hibás felismerés előfordulhat.
        </p>
      )}
    </div>
  );
}
