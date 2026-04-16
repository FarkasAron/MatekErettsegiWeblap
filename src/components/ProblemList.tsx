"use client";

import { useState, useEffect } from "react";
import Image from "next/image";
import { type Problem, TOPIC_LABELS, SESSION_LABELS } from "@/lib/supabase";
import ZoomableImage from "@/components/ZoomableImage";
import { getAnswerImageUrl } from "@/lib/answers";
import { usePrintCart } from "@/lib/print-cart";

function ProblemRow({ problem }: { problem: Problem }) {
  const [open,        setOpen]        = useState(false);
  const [lightboxOpen, setLightboxOpen] = useState(false);

  const session  = SESSION_LABELS[problem.exam_session] ?? problem.exam_session;
  const examType = problem.exam_type === "kozep" ? "Középszint" : "Emelt szint";
  const subLabel = problem.sub_part ? ` / ${problem.sub_part}` : "";
  const title    = `${problem.year} ${session} · ${examType} · ${problem.problem_number}. feladat${subLabel}`;

  const answerUrl = getAnswerImageUrl(problem);
  const { add, remove, isInCart } = usePrintCart();
  const inCart = isInCart(problem.id);
  const handlePrintToggle = () => {
    if (inCart) { remove(problem.id); return; }
    if (!problem.problem_image_url) return;
    add({
      id:              problem.id,
      title,
      problemImageUrl: problem.problem_image_url,
      answerImageUrl:  answerUrl,
    });
  };

  // Close lightbox on Escape
  useEffect(() => {
    if (!lightboxOpen) return;
    const handler = (e: KeyboardEvent) => { if (e.key === "Escape") setLightboxOpen(false); };
    document.addEventListener("keydown", handler);
    return () => document.removeEventListener("keydown", handler);
  }, [lightboxOpen]);

  // Prevent body scroll while lightbox open
  useEffect(() => {
    document.body.style.overflow = lightboxOpen ? "hidden" : "";
    return () => { document.body.style.overflow = ""; };
  }, [lightboxOpen]);

  return (
    <>
      <div className="border-b border-slate-100 dark:border-slate-800 last:border-0">
        <button
          onClick={() => setOpen((v) => !v)}
          className="w-full flex items-center gap-3 px-4 py-3.5
                     hover:bg-navy-50/50 dark:hover:bg-white/[0.03]
                     text-left transition-colors group"
        >
          {/* Arrow */}
          <span className={`text-slate-300 dark:text-slate-600 transition-transform duration-200 text-xs ${open ? "rotate-90 text-navy-500 dark:text-navy-400" : ""}`}>
            ▶
          </span>

          {/* Title */}
          <span className="flex-1 text-sm font-medium text-slate-800 dark:text-slate-200 group-hover:text-navy-600 dark:group-hover:text-navy-300 transition-colors">
            {title}
          </span>

          {/* Points */}
          {problem.max_points && (
            <span className="badge bg-slate-100 text-slate-500 dark:bg-slate-700 dark:text-slate-400 shrink-0">
              {problem.max_points} pt
            </span>
          )}

          {/* First 2 topic tags */}
          <div className="hidden sm:flex gap-1 shrink-0">
            {problem.topic_tags.slice(0, 2).map((tag) => (
              <span key={tag} className="badge bg-navy-50 text-navy-600 dark:bg-white/10 dark:text-slate-200 border border-navy-100/60 dark:border-white/10">
                {TOPIC_LABELS[tag] ?? tag}
              </span>
            ))}
            {problem.topic_tags.length > 2 && (
              <span className="badge bg-slate-100 text-slate-500 dark:bg-white/10 dark:text-slate-300">
                +{problem.topic_tags.length - 2}
              </span>
            )}
          </div>
        </button>

        {/* Expanded content */}
        {open && (
          <div className="px-4 sm:px-10 pb-6 pt-1 animate-fade-in border-t border-slate-100 dark:border-slate-800">
            {problem.problem_image_url ? (
              <div
                className="relative mt-4 inline-block cursor-zoom-in group/img"
                onClick={() => setLightboxOpen(true)}
              >
                <Image
                  src={problem.problem_image_url}
                  alt={title}
                  width={900}
                  height={500}
                  className="w-full max-w-2xl h-auto rounded-xl border border-slate-200 dark:border-slate-700/60 shadow-md
                             group-hover/img:brightness-95 transition-all duration-200"
                  unoptimized
                />
                {/* Zoom hint */}
                <div className="absolute inset-0 flex items-center justify-center opacity-0 group-hover/img:opacity-100 transition-opacity duration-200">
                  <div className="bg-black/60 rounded-full w-11 h-11 flex items-center justify-center shadow-lg">
                    <svg className="w-5 h-5 text-white" fill="none" viewBox="0 0 24 24" stroke="currentColor" strokeWidth={2}>
                      <path strokeLinecap="round" strokeLinejoin="round" d="M21 21l-4.35-4.35M17 11A6 6 0 1 1 5 11a6 6 0 0 1 12 0zM11 8v6M8 11h6" />
                    </svg>
                  </div>
                </div>
              </div>
            ) : (
              <p className="text-sm text-slate-400 mt-4">Nincs elérhető kép.</p>
            )}
            {problem.topic_tags.length > 0 && (
              <div className="flex flex-wrap gap-1.5 mt-3">
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

            {problem.problem_image_url && (
              <div className="mt-3">
                <button
                  onClick={handlePrintToggle}
                  title={inCart ? "Eltávolítás a nyomtatási listából" : "Hozzáadás a nyomtatási listához"}
                  className={`flex items-center gap-1.5 text-xs font-semibold px-3 py-1.5 rounded-full transition-colors
                    ${inCart
                      ? "bg-navy-100 text-navy-700 hover:bg-navy-200 dark:bg-navy-600/30 dark:text-navy-300 dark:hover:bg-navy-600/50"
                      : "bg-slate-100 text-slate-500 hover:bg-slate-200 dark:bg-white/10 dark:text-slate-400 dark:hover:bg-white/15"
                    }`}
                >
                  <svg className="w-3.5 h-3.5 shrink-0" fill="none" viewBox="0 0 24 24" stroke="currentColor" strokeWidth={2}>
                    <path strokeLinecap="round" strokeLinejoin="round"
                      d="M6 9V2h12v7M6 18H4a2 2 0 0 1-2-2v-5a2 2 0 0 1 2-2h16a2 2 0 0 1 2 2v5a2 2 0 0 1-2 2h-2M6 14h12v8H6z" />
                  </svg>
                  {inCart ? "Hozzáadva a nyomtatási listához" : "Hozzáadás a nyomtatási listához"}
                </button>
              </div>
            )}
          </div>
        )}
      </div>

      {/* Lightbox modal */}
      {lightboxOpen && (
        <div
          className="fixed inset-0 z-50 bg-black/88 backdrop-blur-sm flex items-center justify-center p-4 sm:p-8 animate-fade-in"
          onClick={() => setLightboxOpen(false)}
        >
          <div
            className="relative w-full max-w-4xl animate-fade-up"
            onClick={(e) => e.stopPropagation()}
          >
            {/* Close button */}
            <button
              onClick={() => setLightboxOpen(false)}
              className="absolute -top-11 right-0 text-white/60 hover:text-white transition-colors
                         w-9 h-9 rounded-full bg-white/10 hover:bg-white/20 flex items-center justify-center"
              aria-label="Bezárás"
            >
              <svg className="w-4 h-4" fill="none" viewBox="0 0 24 24" stroke="currentColor" strokeWidth={2.5}>
                <path strokeLinecap="round" strokeLinejoin="round" d="M6 18L18 6M6 6l12 12" />
              </svg>
            </button>

            <ZoomableImage
              src={problem.problem_image_url!}
              alt={title}
            />

            {/* Caption */}
            <div className="mt-3 flex flex-wrap items-center justify-center gap-2 text-sm">
              <span className="text-white/80 font-semibold">{problem.year} {session}</span>
              <span className="text-white/30">·</span>
              <span className={`badge text-white ${problem.exam_type === "emelt" ? "bg-crimson-600" : "bg-navy-600"}`}>
                {examType}
              </span>
              <span className="text-white/30">·</span>
              <span className="text-white/80">{problem.problem_number}. feladat{subLabel}</span>
              {problem.max_points && (
                <>
                  <span className="text-white/30">·</span>
                  <span className="text-white/60">{problem.max_points} pont</span>
                </>
              )}
            </div>

            <p className="mt-1 text-center text-white/50 text-xs">
              Kattints bárhova vagy nyomj Esc-et a bezáráshoz
            </p>
          </div>
        </div>
      )}
    </>
  );
}

export default function ProblemList({ problems }: { problems: Problem[] }) {
  return (
    <div className="bg-white dark:bg-slate-800 border border-slate-200 dark:border-slate-700 rounded-2xl overflow-hidden shadow-sm">
      {problems.map((p) => (
        <ProblemRow key={p.id} problem={p} />
      ))}
    </div>
  );
}
