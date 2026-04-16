"use client";

import { useState, useEffect } from "react";
import { supabase, type Problem, TOPIC_LABELS, SESSION_LABELS } from "@/lib/supabase";
import { getAnswerImageUrl } from "@/lib/answers";
import { usePrintCart } from "@/lib/print-cart";
import ZoomableImage from "@/components/ZoomableImage";

export default function RandomProblemButton() {
  const [loading,     setLoading]     = useState(false);
  const [problem,     setProblem]     = useState<Problem | null>(null);
  const [answerOpen,  setAnswerOpen]  = useState(false);
  const [answerMissing, setAnswerMissing] = useState(false);

  const { add, remove, isInCart } = usePrintCart();

  const answerUrl   = problem ? getAnswerImageUrl(problem) : null;
  const inCart      = problem ? isInCart(problem.id) : false;

  async function fetchRandom() {
    setLoading(true);
    setAnswerOpen(false);
    setAnswerMissing(false);
    try {
      // Count problems that have an image
      const { count } = await supabase
        .from("problems")
        .select("id", { count: "exact", head: true })
        .eq("human_reviewed", true)
        .not("problem_image_url", "is", null);

      if (!count) return;
      const offset = Math.floor(Math.random() * count);

      const { data, error } = await supabase
        .from("problems")
        .select("id,year,exam_type,exam_session,exam_part,problem_number,sub_part,problem_image_url,max_points,topic_tags,ocr_used")
        .eq("human_reviewed", true)
        .not("problem_image_url", "is", null)
        .range(offset, offset)
        .single();

      if (error) throw error;
      setProblem(data as Problem);
    } catch (err) {
      console.error("[random] fetch failed:", err);
    } finally {
      setLoading(false);
    }
  }

  // Escape closes the modal
  useEffect(() => {
    if (!problem) return;
    const handler = (e: KeyboardEvent) => {
      if (e.key === "Escape") { setProblem(null); setAnswerOpen(false); }
    };
    document.addEventListener("keydown", handler);
    return () => document.removeEventListener("keydown", handler);
  }, [problem]);

  // Lock body scroll while open
  useEffect(() => {
    document.body.style.overflow = problem ? "hidden" : "";
    return () => { document.body.style.overflow = ""; };
  }, [problem]);

  const handlePrintToggle = () => {
    if (!problem?.problem_image_url) return;
    if (inCart) { remove(problem.id); return; }
    const session  = SESSION_LABELS[problem.exam_session] ?? problem.exam_session;
    const fullType = problem.exam_type === "kozep" ? "Középszint" : "Emelt szint";
    const subLabel = problem.sub_part ? ` / ${problem.sub_part}` : "";
    add({
      id:              problem.id,
      title:           `${problem.year} ${session} · ${fullType} · ${problem.problem_number}. feladat${subLabel}`,
      problemImageUrl: problem.problem_image_url!,
      answerImageUrl:  answerUrl,
    });
  };

  return (
    <>
      {/* ── Trigger button ─────────────────────────────────────────── */}
      <button
        onClick={fetchRandom}
        disabled={loading}
        title="Véletlenszerű feladat"
        className="flex items-center gap-1.5 px-3 py-2 rounded-xl text-sm font-medium
                   bg-white dark:bg-slate-800 border border-slate-200 dark:border-slate-700/60
                   text-slate-700 dark:text-slate-200
                   hover:border-navy-300 dark:hover:border-navy-600
                   disabled:opacity-50 disabled:cursor-wait
                   shadow-sm transition-all"
      >
        {loading ? (
          <svg className="w-4 h-4 animate-spin text-navy-500" fill="none" viewBox="0 0 24 24">
            <circle className="opacity-25" cx="12" cy="12" r="10" stroke="currentColor" strokeWidth="4"/>
            <path className="opacity-75" fill="currentColor" d="M4 12a8 8 0 018-8v4l3-3-3-3v4a8 8 0 100 16v-4l-3 3 3 3v-4a8 8 0 01-8-8z"/>
          </svg>
        ) : (
          <svg className="w-4 h-4 shrink-0" fill="none" viewBox="0 0 24 24" stroke="currentColor" strokeWidth={2}>
            <path strokeLinecap="round" strokeLinejoin="round"
              d="M19.5 12c0-4.14-3.36-7.5-7.5-7.5S4.5 7.86 4.5 12s3.36 7.5 7.5 7.5 7.5-3.36 7.5-7.5z
                 M9 9.5h.01M15 9.5h.01M9.5 14.5s.75 1.5 2.5 1.5 2.5-1.5 2.5-1.5" />
          </svg>
        )}
        <span className="hidden sm:inline">{loading ? "Töltés…" : "Véletlen"}</span>
      </button>

      {/* ── Problem modal ───────────────────────────────────────────── */}
      {problem && (
        <div
          className="fixed inset-0 z-50 bg-black/88 backdrop-blur-sm flex items-center justify-center p-4 sm:p-8 animate-fade-in"
          onClick={() => { setProblem(null); setAnswerOpen(false); }}
        >
          <div
            className="relative w-full max-w-4xl animate-fade-up flex flex-col gap-3"
            onClick={e => e.stopPropagation()}
          >
            {/* Close */}
            <button
              onClick={() => { setProblem(null); setAnswerOpen(false); }}
              className="absolute -top-11 right-0 text-white/60 hover:text-white transition-colors
                         w-9 h-9 rounded-full bg-white/10 hover:bg-white/20 flex items-center justify-center"
              aria-label="Bezárás"
            >
              <svg className="w-4 h-4" fill="none" viewBox="0 0 24 24" stroke="currentColor" strokeWidth={2.5}>
                <path strokeLinecap="round" strokeLinejoin="round" d="M6 18L18 6M6 6l12 12" />
              </svg>
            </button>

            {/* Image */}
            {!answerOpen ? (
              <ZoomableImage
                src={problem.problem_image_url!}
                alt={`${problem.year} véletlenszerű feladat`}
              />
            ) : (
              <ZoomableImage
                src={answerUrl!}
                alt="Megoldás"
                onError={() => { setAnswerMissing(true); setAnswerOpen(false); }}
              />
            )}

            {/* Metadata */}
            <div className="flex flex-wrap items-center justify-center gap-2 text-sm">
              <span className="text-white/80 font-semibold">
                {problem.year} {SESSION_LABELS[problem.exam_session] ?? problem.exam_session}
              </span>
              <span className="text-white/30">·</span>
              <span className={`badge text-white ${problem.exam_type === "emelt" ? "bg-crimson-600" : "bg-navy-600"}`}>
                {problem.exam_type === "kozep" ? "Középszint" : "Emelt szint"}
              </span>
              <span className="text-white/30">·</span>
              <span className="text-white/80">
                {problem.problem_number}. feladat{problem.sub_part ? ` / ${problem.sub_part}` : ""}
              </span>
              {problem.max_points && (
                <>
                  <span className="text-white/30">·</span>
                  <span className="text-white/60">{problem.max_points} pont</span>
                </>
              )}
            </div>

            {/* Topic tags */}
            {problem.topic_tags.length > 0 && (
              <div className="flex flex-wrap justify-center gap-1.5">
                {problem.topic_tags.map(tag => (
                  <span key={tag} className="badge bg-white/10 text-white/70 border border-white/10">
                    {TOPIC_LABELS[tag] ?? tag}
                  </span>
                ))}
              </div>
            )}

            {/* Action buttons */}
            <div className="flex flex-wrap items-center justify-center gap-2 pt-1">
              {/* Next random */}
              <button
                onClick={fetchRandom}
                disabled={loading}
                className="flex items-center gap-1.5 px-4 py-2 rounded-xl text-sm font-semibold
                           bg-navy-600 hover:bg-navy-700 text-white transition-colors
                           disabled:opacity-50 disabled:cursor-wait"
              >
                <svg className="w-4 h-4" fill="none" viewBox="0 0 24 24" stroke="currentColor" strokeWidth={2}>
                  <path strokeLinecap="round" strokeLinejoin="round" d="M4 4v5h.582m15.356 2A8.001 8.001 0 004.582 9m0 0H9m11 11v-5h-.581m0 0a8.003 8.003 0 01-15.357-2m15.357 2H15" />
                </svg>
                Következő
              </button>

              {/* Show solution */}
              {answerUrl && !answerMissing && (
                <button
                  onClick={() => setAnswerOpen(v => !v)}
                  className={`flex items-center gap-1.5 px-4 py-2 rounded-xl text-sm font-semibold transition-colors
                    ${answerOpen
                      ? "bg-white/20 text-white hover:bg-white/30"
                      : "bg-white/10 text-white/70 hover:bg-white/20"}`}
                >
                  {answerOpen ? "Feladat" : "Megoldás"}
                </button>
              )}

              {/* Add to print cart */}
              <button
                onClick={handlePrintToggle}
                className={`flex items-center gap-1.5 px-4 py-2 rounded-xl text-sm font-semibold transition-colors
                  ${inCart
                    ? "bg-navy-500/40 text-navy-200 hover:bg-navy-500/50"
                    : "bg-white/10 text-white/70 hover:bg-white/20"}`}
              >
                <svg className="w-3.5 h-3.5" fill="none" viewBox="0 0 24 24" stroke="currentColor" strokeWidth={2}>
                  <path strokeLinecap="round" strokeLinejoin="round"
                    d="M6 9V2h12v7M6 18H4a2 2 0 0 1-2-2v-5a2 2 0 0 1 2-2h16a2 2 0 0 1 2 2v5a2 2 0 0 1-2 2h-2M6 14h12v8H6z" />
                </svg>
                {inCart ? "Hozzáadva" : "Nyomtatási lista"}
              </button>
            </div>

            <p className="text-center text-white/40 text-xs">Esc vagy kattints a háttérre a bezáráshoz</p>
          </div>
        </div>
      )}
    </>
  );
}
