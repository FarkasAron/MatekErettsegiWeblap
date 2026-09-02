"use client";

import { useState, useEffect } from "react";
import Image from "next/image";
import { SESSION_LABELS } from "@/lib/supabase";
import type { ProblemGroup } from "@/lib/problems";
import ZoomableImage from "@/components/ZoomableImage";
import SubPartList from "@/components/SubPartList";
import { getAnswerImageUrl } from "@/lib/answers";
import { usePrintCart } from "@/lib/print-cart";

/**
 * One collapsible row per problem (decision §8.4 #7): the head shows the problem
 * title and points only. Expanding reveals a single whole-problem image plus the
 * sub-part breakdown with each sub-part's tags — the list-view counterpart of
 * {@link "@/components/ProblemGroupCard"}.
 */
function ProblemGroupRow({ group }: { group: ProblemGroup }) {
  const [open,         setOpen]         = useState(false);
  const [lightboxOpen, setLightboxOpen] = useState(false);
  const [answerOpen,   setAnswerOpen]   = useState(false);
  const [answerMissing, setAnswerMissing] = useState(false);

  const session  = SESSION_LABELS[group.exam_session] ?? group.exam_session;
  const examType = group.exam_type === "kozep" ? "Középszint" : "Emelt szint";
  const isEmelt  = group.exam_type === "emelt";
  const title    = `${group.year} ${session} · ${examType} · ${group.problem_number}. feladat`;

  const answerUrl = getAnswerImageUrl(group);

  const { add, remove, isInCart } = usePrintCart();
  // Phase 4: the print cart is still keyed by a row id — use the representative
  // sub-part, matching ProblemGroupCard. Phase 5 switches the cart to group keys.
  const cartId = group.subParts[0].id;
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
    if (!lightboxOpen && !answerOpen) return;
    const handler = (e: KeyboardEvent) => {
      if (e.key === "Escape") { setLightboxOpen(false); setAnswerOpen(false); }
    };
    document.addEventListener("keydown", handler);
    return () => document.removeEventListener("keydown", handler);
  }, [lightboxOpen, answerOpen]);

  // Prevent body scroll while any lightbox is open.
  useEffect(() => {
    document.body.style.overflow = (lightboxOpen || answerOpen) ? "hidden" : "";
    return () => { document.body.style.overflow = ""; };
  }, [lightboxOpen, answerOpen]);

  return (
    <>
      <div className="border-b border-slate-100 dark:border-slate-800 last:border-0">
        <button
          onClick={() => setOpen((v) => !v)}
          aria-expanded={open}
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
          {group.max_points != null && (
            <span className="badge bg-slate-100 text-slate-500 dark:bg-slate-700 dark:text-slate-400 shrink-0">
              {group.max_points} pt
            </span>
          )}
        </button>

        {/* Expanded content */}
        {open && (
          <div className="px-4 sm:px-10 pb-6 pt-1 animate-fade-in border-t border-slate-100 dark:border-slate-800">
            {group.problem_image_url ? (
              <div
                className="relative mt-4 inline-block cursor-zoom-in group/img"
                onClick={() => setLightboxOpen(true)}
              >
                <Image
                  src={group.problem_image_url}
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

            {/* Sub-part breakdown — tags inline, right of the a)/b) label (decision §8.4 #7) */}
            <div className="mt-4">
              <SubPartList subParts={group.subParts} variant="list" />
            </div>

            {group.problem_image_url && (
              <div className="mt-4 flex items-center gap-2 flex-wrap">
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
                  {inCart ? "Hozzáadva a nyomtatási listához" : "Hozzáadás a nyomtatási listához"}
                </button>
              </div>
            )}
          </div>
        )}
      </div>

      {/* ── Problem lightbox ─────────────────────────────────────────── */}
      {lightboxOpen && group.problem_image_url && (
        <div
          className="fixed inset-0 z-50 bg-black/88 backdrop-blur-sm overflow-y-auto animate-fade-in"
          onClick={() => setLightboxOpen(false)}
        >
          <div className="min-h-full flex items-center justify-center p-4 sm:p-8">
            <div className="relative w-full max-w-4xl animate-fade-up" onClick={(e) => e.stopPropagation()}>
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

              <ZoomableImage src={group.problem_image_url} alt={title} />

              <div className="mt-3 flex flex-wrap items-center justify-center gap-2 text-sm">
                <span className="text-white/80 font-semibold">{group.year} {session}</span>
                <span className="text-white/30">·</span>
                <span className={`badge text-white ${isEmelt ? "bg-crimson-600" : "bg-navy-600"}`}>{examType}</span>
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

export default function ProblemList({ groups }: { groups: ProblemGroup[] }) {
  return (
    <div className="bg-white dark:bg-slate-800 border border-slate-200 dark:border-slate-700 rounded-2xl overflow-hidden shadow-sm">
      {groups.map((g) => (
        <ProblemGroupRow key={g.key} group={g} />
      ))}
    </div>
  );
}
