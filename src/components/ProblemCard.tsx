"use client";

import { useState, useEffect } from "react";
import Image from "next/image";
import { type Problem, TOPIC_LABELS, DIFFICULTY_LABELS } from "@/lib/supabase";

const SESSION_LABELS: Record<string, string> = {
  majus:   "május",
  oktober: "október",
  februar: "február",
};

const DIFFICULTY_STYLES: Record<string, string> = {
  konnyu:  "bg-emerald-100 text-emerald-700 dark:bg-emerald-900/40 dark:text-emerald-400",
  kozepes: "bg-amber-100  text-amber-700   dark:bg-amber-900/40   dark:text-amber-400",
  nehez:   "bg-crimson-100 text-crimson-700 dark:bg-crimson-900/40 dark:text-crimson-400",
};

const DIFFICULTY_DOT: Record<string, string> = {
  konnyu:  "bg-emerald-400",
  kozepes: "bg-amber-400",
  nehez:   "bg-crimson-500",
};

export default function ProblemCard({ problem }: { problem: Problem }) {
  const [open, setOpen] = useState(false);

  const session  = SESSION_LABELS[problem.exam_session] ?? problem.exam_session;
  const examType = problem.exam_type === "kozep" ? "Közép" : "Emelt";
  const fullType = problem.exam_type === "kozep" ? "Középszint" : "Emelt szint";
  const subLabel = problem.sub_part ? ` / ${problem.sub_part}` : "";
  const isEmelt  = problem.exam_type === "emelt";

  // Close on Escape key
  useEffect(() => {
    if (!open) return;
    const handler = (e: KeyboardEvent) => { if (e.key === "Escape") setOpen(false); };
    document.addEventListener("keydown", handler);
    return () => document.removeEventListener("keydown", handler);
  }, [open]);

  // Prevent body scroll while open
  useEffect(() => {
    document.body.style.overflow = open ? "hidden" : "";
    return () => { document.body.style.overflow = ""; };
  }, [open]);

  return (
    <>
      <article className="card flex flex-col overflow-hidden group relative">
        {/* Left accent bar */}
        <div className={`absolute left-0 top-0 bottom-0 w-[3px] z-10 ${isEmelt ? "bg-crimson-500" : "bg-navy-500"}`} />

        {/* Image area — clickable */}
        <div
          className="relative bg-slate-50 dark:bg-slate-900/50 overflow-hidden cursor-zoom-in"
          style={{ minHeight: 160 }}
          onClick={() => problem.problem_image_url && setOpen(true)}
        >
          {problem.problem_image_url ? (
            <>
              <Image
                src={problem.problem_image_url}
                alt={`${problem.year} ${session} ${examType} ${problem.problem_number}. feladat${subLabel}`}
                width={800} height={400}
                className="w-full h-auto object-contain group-hover:scale-[1.02] transition-transform duration-500"
                unoptimized
              />
              {/* Zoom hint overlay */}
              <div className="absolute inset-0 bg-black/0 group-hover:bg-black/20 transition-colors duration-300 flex items-center justify-center">
                <div className="opacity-0 group-hover:opacity-100 transition-opacity duration-300 bg-black/60 rounded-full w-11 h-11 flex items-center justify-center shadow-lg">
                  <svg className="w-5 h-5 text-white" fill="none" viewBox="0 0 24 24" stroke="currentColor" strokeWidth={2}>
                    <path strokeLinecap="round" strokeLinejoin="round" d="M21 21l-4.35-4.35M17 11A6 6 0 1 1 5 11a6 6 0 0 1 12 0zM11 8v6M8 11h6" />
                  </svg>
                </div>
              </div>
            </>
          ) : (
            <div className="w-full h-40 flex items-center justify-center text-4xl opacity-20">
              {isEmelt ? "📗" : "📘"}
            </div>
          )}

          {/* Exam type pill */}
          <div className="absolute top-2.5 right-2.5">
            <span className={`badge text-white shadow-sm ${isEmelt ? "bg-crimson-600" : "bg-navy-600"}`}>
              {examType}
            </span>
          </div>

          {/* Bottom gradient */}
          <div className="absolute bottom-0 left-0 right-0 h-8 bg-gradient-to-t from-slate-50 dark:from-slate-900/50 to-transparent pointer-events-none" />
        </div>

        {/* Metadata */}
        <div className="p-4 flex flex-col gap-3 flex-1">
          <div className="flex items-start justify-between gap-2">
            <h3 className="text-sm font-bold text-slate-800 dark:text-slate-100 leading-snug">
              {problem.year}
              <span className="text-slate-400 dark:text-slate-500 font-normal"> {session} · </span>
              {problem.problem_number}. feladat{subLabel}
            </h3>
            {problem.max_points && (
              <span className={`badge shrink-0 text-white ${isEmelt ? "bg-crimson-600/80" : "bg-navy-600/80"}`}>
                {problem.max_points} pt
              </span>
            )}
          </div>

          {problem.difficulty_level && (
            <div className="flex items-center gap-1.5">
              <span className={`w-1.5 h-1.5 rounded-full ${DIFFICULTY_DOT[problem.difficulty_level]}`} />
              <span className={`badge ${DIFFICULTY_STYLES[problem.difficulty_level]}`}>
                {DIFFICULTY_LABELS[problem.difficulty_level]}
              </span>
            </div>
          )}

          {problem.topic_tags.length > 0 && (
            <div className="flex flex-wrap gap-1 mt-auto pt-1">
              {problem.topic_tags.map((tag) => (
                <a key={tag} href={`/feladatok?tema=${tag}`}
                  className="badge bg-navy-50 text-navy-600 hover:bg-navy-100
                             dark:bg-white/10 dark:text-slate-200 dark:hover:bg-white/15
                             transition-colors border border-navy-100/60 dark:border-white/10">
                  {TOPIC_LABELS[tag] ?? tag}
                </a>
              ))}
            </div>
          )}
        </div>
      </article>

      {/* ── Lightbox modal ───────────────────────────────────────────── */}
      {open && (
        <div
          className="fixed inset-0 z-50 bg-black/88 backdrop-blur-sm flex items-center justify-center p-4 sm:p-8 animate-fade-in"
          onClick={() => setOpen(false)}
        >
          <div
            className="relative w-full max-w-4xl animate-fade-up"
            onClick={(e) => e.stopPropagation()}
          >
            {/* Close button */}
            <button
              onClick={() => setOpen(false)}
              className="absolute -top-11 right-0 text-white/60 hover:text-white transition-colors
                         w-9 h-9 rounded-full bg-white/10 hover:bg-white/20 flex items-center justify-center"
              aria-label="Bezárás"
            >
              <svg className="w-4 h-4" fill="none" viewBox="0 0 24 24" stroke="currentColor" strokeWidth={2.5}>
                <path strokeLinecap="round" strokeLinejoin="round" d="M6 18L18 6M6 6l12 12" />
              </svg>
            </button>

            {/* Full-size image */}
            {/* eslint-disable-next-line @next/next/no-img-element */}
            <img
              src={problem.problem_image_url!}
              alt={`${problem.year} ${session} ${fullType} ${problem.problem_number}. feladat${subLabel}`}
              className="w-full h-auto rounded-2xl shadow-2xl bg-white"
            />

            {/* Caption */}
            <div className="mt-4 flex flex-wrap items-center justify-center gap-2 text-sm">
              <span className="text-white/80 font-semibold">
                {problem.year} {session}
              </span>
              <span className="text-white/30">·</span>
              <span className={`badge text-white ${isEmelt ? "bg-crimson-600" : "bg-navy-600"}`}>
                {fullType}
              </span>
              <span className="text-white/30">·</span>
              <span className="text-white/80">
                {problem.problem_number}. feladat{subLabel}
              </span>
              {problem.max_points && (
                <>
                  <span className="text-white/30">·</span>
                  <span className="text-white/60">{problem.max_points} pont</span>
                </>
              )}
              {problem.difficulty_level && (
                <>
                  <span className="text-white/30">·</span>
                  <span className="text-white/60">{DIFFICULTY_LABELS[problem.difficulty_level]}</span>
                </>
              )}
            </div>

            {/* Hint */}
            <p className="mt-2 text-center text-white/30 text-xs">
              Kattints bárhova vagy nyomj Esc-et a bezáráshoz
            </p>
          </div>
        </div>
      )}
    </>
  );
}
