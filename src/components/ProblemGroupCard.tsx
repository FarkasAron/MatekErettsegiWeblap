"use client";

import { useEffect, useState } from "react";
import Image from "next/image";
import { SESSION_LABELS } from "@/lib/supabase";
import type { ProblemGroup } from "@/lib/problems";
import ZoomableImage from "@/components/ZoomableImage";
import SubPartList from "@/components/SubPartList";
import { getAnswerImageUrl } from "@/lib/answers";
import { usePrintCart } from "@/lib/print-cart";

interface Props {
  group: ProblemGroup;
  /** Forwarded to SubPartList: matching sub-part rows start expanded. */
  defaultExpandedTag?: string;
}

/**
 * One card per problem: a single whole-problem image plus the collapsible
 * sub-part breakdown. Replaces the per-sub-part {@link "@/components/ProblemCard"}
 * for grouped views.
 */
export default function ProblemGroupCard({ group, defaultExpandedTag }: Props) {
  const [open, setOpen] = useState(false);
  const [answerOpen, setAnswerOpen] = useState(false);
  const [answerMissing, setAnswerMissing] = useState(false);
  const answerUrl = getAnswerImageUrl(group);

  const session  = SESSION_LABELS[group.exam_session] ?? group.exam_session;
  const examType = group.exam_type === "kozep" ? "Közép" : "Emelt";
  const fullType = group.exam_type === "kozep" ? "Középszint" : "Emelt szint";
  const isEmelt  = group.exam_type === "emelt";
  const title    = `${group.year} ${session} · ${fullType} · ${group.problem_number}. feladat`;

  const { add, remove, isInCart } = usePrintCart();
  // The cart is keyed by the problem-group key (§8.4 #9): the same problem is one
  // entry whether added here, from a list row, or the random dialog.
  const cartId = group.key;
  const inCart = isInCart(cartId);
  const handlePrintToggle = () => {
    if (inCart) { remove(cartId); return; }
    if (!group.problem_image_url) return;
    add({
      id:              cartId,
      title,
      problemImageUrl: group.problem_image_url,
      answerImageUrl:  answerUrl,
    });
  };

  // Escape closes whichever lightbox is open.
  useEffect(() => {
    if (!open && !answerOpen) return;
    const handler = (e: KeyboardEvent) => {
      if (e.key === "Escape") { setOpen(false); setAnswerOpen(false); }
    };
    document.addEventListener("keydown", handler);
    return () => document.removeEventListener("keydown", handler);
  }, [open, answerOpen]);

  // Prevent body scroll while any lightbox is open.
  useEffect(() => {
    document.body.style.overflow = (open || answerOpen) ? "hidden" : "";
    return () => { document.body.style.overflow = ""; };
  }, [open, answerOpen]);

  return (
    <>
      <article className="card flex flex-col overflow-hidden group relative">
        {/* Left accent bar */}
        <div className={`absolute left-0 top-0 bottom-0 w-[3px] z-10 ${isEmelt ? "bg-crimson-500" : "bg-navy-500"}`} />

        {/* Image area — click to open the lightbox */}
        <div
          className="relative bg-slate-50 dark:bg-slate-900/50 overflow-hidden cursor-zoom-in"
          style={{ minHeight: 160 }}
          onClick={() => group.problem_image_url && setOpen(true)}
        >
          {group.problem_image_url ? (
            <>
              <Image
                src={group.problem_image_url}
                alt={title}
                width={800} height={400}
                className="w-full h-auto object-contain group-hover:scale-[1.02] transition-transform duration-500"
                unoptimized
              />
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
              {group.year}
              <span className="text-slate-400 dark:text-slate-500 font-normal"> {session} · </span>
              {group.problem_number}. feladat
            </h3>
            {group.max_points != null && (
              <span className={`badge shrink-0 text-white ${isEmelt ? "bg-crimson-600/80" : "bg-navy-600/80"}`}>
                {group.max_points} pt
              </span>
            )}
          </div>

          {/* Sub-part breakdown with topic tags */}
          <SubPartList subParts={group.subParts} defaultExpandedTag={defaultExpandedTag} />

          {/* Footer actions */}
          {group.problem_image_url && (
            <div className="mt-auto pt-2 border-t border-slate-100 dark:border-slate-700/50 flex items-center gap-2 flex-wrap">
              {answerUrl && !answerMissing && (
                <button
                  onClick={() => setAnswerOpen(true)}
                  className="text-xs font-semibold px-3 py-1.5 rounded-full transition-colors
                             bg-slate-100 text-slate-500 hover:bg-slate-200
                             dark:bg-white/10 dark:text-slate-400 dark:hover:bg-white/15"
                >
                  Megoldás
                </button>
              )}
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
                {inCart ? "Hozzáadva" : "Nyomtatás"}
              </button>
            </div>
          )}
        </div>
      </article>

      {/* ── Problem lightbox ─────────────────────────────────────────── */}
      {open && group.problem_image_url && (
        <div
          className="fixed inset-0 z-50 bg-black/88 backdrop-blur-sm overflow-y-auto animate-fade-in"
          onClick={() => setOpen(false)}
        >
          <div className="min-h-full flex items-center justify-center p-4 sm:p-8">
            <div className="relative w-full max-w-4xl animate-fade-up" onClick={(e) => e.stopPropagation()}>
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

              <ZoomableImage src={group.problem_image_url} alt={title} />

              <div className="mt-3 flex flex-wrap items-center justify-center gap-2 text-sm">
                <span className="text-white/80 font-semibold">{group.year} {session}</span>
                <span className="text-white/30">·</span>
                <span className={`badge text-white ${isEmelt ? "bg-crimson-600" : "bg-navy-600"}`}>{fullType}</span>
                <span className="text-white/30">·</span>
                <span className="text-white/80">{group.problem_number}. feladat</span>
                {group.max_points != null && (
                  <>
                    <span className="text-white/30">·</span>
                    <span className="text-white/60">{group.max_points} pont</span>
                  </>
                )}
              </div>

              <p className="mt-1 text-center text-white/50 text-xs">
                Kattints bárhova vagy nyomj Esc-et a bezáráshoz
              </p>
            </div>
          </div>
        </div>
      )}

      {/* ── Answer lightbox ──────────────────────────────────────────── */}
      {answerOpen && answerUrl && (
        <div
          className="fixed inset-0 z-50 bg-black/88 backdrop-blur-sm overflow-y-auto animate-fade-in"
          onClick={() => setAnswerOpen(false)}
        >
          <div className="min-h-full flex items-center justify-center p-4 sm:p-8">
            <div className="relative w-full max-w-4xl animate-fade-up" onClick={(e) => e.stopPropagation()}>
              <button
                onClick={() => setAnswerOpen(false)}
                className="absolute -top-11 right-0 text-white/60 hover:text-white transition-colors
                           w-9 h-9 rounded-full bg-white/10 hover:bg-white/20 flex items-center justify-center"
                aria-label="Bezárás"
              >
                <svg className="w-4 h-4" fill="none" viewBox="0 0 24 24" stroke="currentColor" strokeWidth={2.5}>
                  <path strokeLinecap="round" strokeLinejoin="round" d="M6 18L18 6M6 6l12 12" />
                </svg>
              </button>

              <ZoomableImage
                src={answerUrl}
                alt={`Megoldás – ${title}`}
                onError={() => { setAnswerMissing(true); setAnswerOpen(false); }}
              />

              <div className="mt-3 flex flex-wrap items-center justify-center gap-2 text-sm">
                <span className={`badge text-white ${isEmelt ? "bg-crimson-600" : "bg-navy-600"}`}>Megoldás</span>
                <span className="text-white/30">·</span>
                <span className="text-white/80 font-semibold">{group.year} {session}</span>
                <span className="text-white/30">·</span>
                <span className="text-white/80">{group.problem_number}. feladat</span>
              </div>

              <p className="mt-1 text-center text-white/50 text-xs">
                Kattints bárhova vagy nyomj Esc-et a bezáráshoz
              </p>
            </div>
          </div>
        </div>
      )}
    </>
  );
}
