"use client";

import { useState } from "react";
import { usePrintCart, type PrintItem } from "@/lib/print-cart";

// ── Image fetching ───────────────────────────────────────────────────────────

async function fetchImgData(
  url: string,
): Promise<{ b64: string; format: string; w: number; h: number }> {
  const resp = await fetch(url);
  if (!resp.ok) throw new Error(`Image fetch failed: ${url}`);
  const blob = await resp.blob();
  const format = blob.type.includes("jpeg") || blob.type.includes("jpg") ? "JPEG" : "PNG";

  // Dimensions via Object URL + Image element (no CORS canvas needed)
  const objUrl = URL.createObjectURL(blob);
  const { w, h } = await new Promise<{ w: number; h: number }>((res, rej) => {
    const img = new Image();
    img.onload = () => { URL.revokeObjectURL(objUrl); res({ w: img.naturalWidth, h: img.naturalHeight }); };
    img.onerror = () => { URL.revokeObjectURL(objUrl); rej(new Error("Image load failed")); };
    img.src = objUrl;
  });

  // Base64 data URL via FileReader
  const b64 = await new Promise<string>((res, rej) => {
    const reader = new FileReader();
    reader.onload  = () => res(reader.result as string);
    reader.onerror = rej;
    reader.readAsDataURL(blob);
  });

  return { b64, format, w, h };
}

// ── PDF generation ───────────────────────────────────────────────────────────

async function generatePdf(
  items: PrintItem[],
  pageBreaks: boolean[],
  showTitles: boolean,
  headerText: string,
  solutionsOnly: boolean,
  setStatus: (s: string) => void,
): Promise<void> {
  const { jsPDF } = await import("jspdf");
  const doc = new jsPDF({ unit: "mm", format: "a4" });

  const PW = 210, PH = 297, M = 15, CW = PW - 2 * M;
  let y = M;

  // Helper: render the page header (once per PDF page when headerText is set)
  function renderPageHeader() {
    if (!headerText) return;
    doc.setFontSize(10);
    doc.setTextColor(80, 80, 80);
    doc.text(headerText, M, y + 4);
    y += 7;
    doc.setDrawColor(180, 180, 180);
    doc.line(M, y, PW - M, y);
    y += 5;
  }

  renderPageHeader(); // First page

  for (let i = 0; i < items.length; i++) {
    const item       = items[i];
    const newPage    = i > 0 && pageBreaks[i - 1];

    if (newPage) {
      doc.addPage();
      y = M;
      renderPageHeader();
    } else if (i > 0) {
      y += 6;
    }

    // Problem / solution title
    if (showTitles) {
      doc.setFontSize(8);
      doc.setTextColor(130, 130, 130);
      doc.text(solutionsOnly ? `${item.title} — Megoldás` : item.title, M, y + 3);
      y += 5;
      doc.setDrawColor(220, 220, 220);
      doc.line(M, y, PW - M, y);
      y += 4;
    }

    // Main image
    const imgUrl = solutionsOnly ? item.answerImageUrl : item.problemImageUrl;

    if (!imgUrl) {
      if (solutionsOnly) {
        doc.setFontSize(9);
        doc.setTextColor(180, 180, 180);
        doc.text("(nincs megoldáskép)", M, y + 4);
        y += 10;
      }
      continue;
    }

    setStatus(`${i + 1} / ${items.length} kép betöltése…`);
    const { b64, format, w, h } = await fetchImgData(imgUrl);

    const maxH = Math.max(PH - y - M, 20);
    let iw = CW, ih = (h / w) * CW;
    if (ih > maxH) { ih = maxH; iw = (w / h) * ih; }
    doc.addImage(b64, format, M, y, iw, ih);
    y += ih;

    // Inline solution (only in problems mode)
    if (!solutionsOnly && item.includeSolution && item.answerImageUrl) {
      y += 4;
      doc.setDrawColor(200, 200, 200);
      doc.setLineDashPattern([2, 2], 0);
      doc.line(M, y, PW - M, y);
      doc.setLineDashPattern([], 0);
      y += 4;
      doc.setFontSize(7);
      doc.setTextColor(160, 160, 160);
      doc.text("MEGOLDÁS", M, y + 3);
      y += 5;

      setStatus(`${i + 1} / ${items.length} megoldás betöltése…`);
      const { b64: sb, format: sf, w: sw, h: sh } = await fetchImgData(item.answerImageUrl);
      const smH = Math.max(PH - y - M, 20);
      let siw = CW, sih = (sh / sw) * CW;
      if (sih > smH) { sih = smH; siw = (sw / sh) * sih; }
      doc.addImage(sb, sf, M, y, siw, sih);
      y += sih;
    }
  }

  setStatus("PDF megnyitása…");
  const blob    = doc.output("blob");
  const blobUrl = URL.createObjectURL(blob);
  const opened  = window.open(blobUrl, "_blank");
  if (!opened) {
    // Popup blocked → fall back to download
    const a = document.createElement("a");
    a.href     = blobUrl;
    a.download = solutionsOnly ? "megoldokulcs.pdf" : "feladatok.pdf";
    document.body.appendChild(a);
    a.click();
    document.body.removeChild(a);
  }
  setTimeout(() => URL.revokeObjectURL(blobUrl), 60_000);
}

// ── Widget ───────────────────────────────────────────────────────────────────

export default function PrintCartWidget() {
  const { items, remove, toggleSolution, reorder, clear } = usePrintCart();

  const [open,       setOpen]       = useState(false);
  const [step,       setStep]       = useState<1 | 2>(1);
  // pageBreaks[i] = true → page break AFTER items[i] (before items[i+1])
  const [pageBreaks, setPageBreaks] = useState<boolean[]>([]);
  const [showTitles, setShowTitles] = useState(true);
  const [headerText, setHeaderText] = useState("");
  const [genStatus,  setGenStatus]  = useState("");   // "" = idle

  const anyWithSolution = items.some(item => item.includeSolution && !!item.answerImageUrl);

  const isGenerating = genStatus !== "";

  const closeModal = () => { setOpen(false); setStep(1); };

  const goToStep2 = () => {
    setPageBreaks(Array(items.length - 1).fill(true));
    setStep(2);
  };

  const toggleBreak      = (i: number) => setPageBreaks(prev => prev.map((v, j) => j === i ? !v : v));
  const setAllBreaks     = (val: boolean) => setPageBreaks(Array(items.length - 1).fill(val));
  const setAllSolutions  = (val: boolean) => {
    items.filter(i => i.includeSolution !== val && !!i.answerImageUrl).forEach(i => toggleSolution(i.id));
  };

  // Derive page groups for the preview
  const pages: PrintItem[][] = [];
  let current: PrintItem[] = [];
  items.forEach((item, i) => {
    current.push(item);
    if (i < items.length - 1 && pageBreaks[i]) { pages.push(current); current = []; }
  });
  if (current.length) pages.push(current);

  async function handleGenerate(solutionsOnly: boolean) {
    setGenStatus("Előkészítés…");
    try {
      let pdfItems = items;
      let pdfBreaks = pageBreaks;
      if (solutionsOnly) {
        pdfItems = items.filter(item => item.includeSolution && !!item.answerImageUrl);
        pdfBreaks = Array(Math.max(0, pdfItems.length - 1)).fill(true);
      }
      await generatePdf(pdfItems, pdfBreaks, showTitles, headerText, solutionsOnly, setGenStatus);
    } catch (err) {
      console.error("PDF generation error:", err);
      alert("Hiba történt a PDF generálása során. Ellenőrizd az internetkapcsolatot és próbáld újra.");
    } finally {
      setGenStatus("");
    }
  }

  if (items.length === 0 && !open) return null;

  return (
    <>
      {/* ── Floating trigger ─────────────────────────────────────── */}
      {items.length > 0 && !open && (
        <button
          onClick={() => { setOpen(true); setStep(1); }}
          className="fixed bottom-6 right-4 sm:right-6 z-40 flex items-center gap-2 px-4 py-3
                     bg-navy-600 hover:bg-navy-700 text-white rounded-2xl shadow-2xl
                     transition-all duration-200 hover:scale-105 active:scale-95 no-print"
        >
          <svg className="w-5 h-5 shrink-0" fill="none" viewBox="0 0 24 24" stroke="currentColor" strokeWidth={2}>
            <path strokeLinecap="round" strokeLinejoin="round"
              d="M6 9V2h12v7M6 18H4a2 2 0 0 1-2-2v-5a2 2 0 0 1 2-2h16a2 2 0 0 1 2 2v5a2 2 0 0 1-2 2h-2M6 14h12v8H6z" />
          </svg>
          <span className="text-sm font-semibold">Nyomtatási lista</span>
          <span className="w-5 h-5 rounded-full bg-white text-navy-700 text-xs font-bold flex items-center justify-center shrink-0">
            {items.length}
          </span>
        </button>
      )}

      {/* ── Modal ───────────────────────────────────────────────── */}
      {open && (
        <div className="fixed inset-0 z-50 bg-black/60 backdrop-blur-sm flex items-end sm:items-center justify-center p-3 sm:p-8 no-print">
          <div className="w-full max-w-lg bg-white dark:bg-slate-800 rounded-2xl shadow-2xl overflow-hidden flex flex-col max-h-[90vh] sm:max-h-[85vh]">

            {/* ── STEP 1: Task list ─────────────────────────────── */}
            {step === 1 && (
              <>
                <div className="flex items-center justify-between px-5 py-4 border-b border-slate-200 dark:border-slate-700 shrink-0">
                  <div>
                    <h2 className="text-base font-bold text-slate-900 dark:text-white">Nyomtatási lista</h2>
                    <p className="text-xs text-slate-400 mt-0.5">{items.length} feladat kiválasztva</p>
                  </div>
                  <div className="flex items-center gap-3">
                    {items.length > 0 && (
                      <button onClick={clear} className="text-xs text-crimson-500 hover:text-crimson-600 font-medium transition-colors">
                        Összes törlése
                      </button>
                    )}
                    <button onClick={closeModal}
                      className="w-8 h-8 rounded-full bg-slate-100 dark:bg-slate-700 hover:bg-slate-200 dark:hover:bg-slate-600 flex items-center justify-center transition-colors">
                      <svg className="w-4 h-4 text-slate-600 dark:text-slate-300" fill="none" viewBox="0 0 24 24" stroke="currentColor" strokeWidth={2.5}>
                        <path strokeLinecap="round" strokeLinejoin="round" d="M6 18L18 6M6 6l12 12" />
                      </svg>
                    </button>
                  </div>
                </div>

                <div className="overflow-y-auto flex-1 divide-y divide-slate-100 dark:divide-slate-700/50">
                  {items.length === 0 ? (
                    <p className="text-sm text-slate-400 text-center py-12">A lista üres.</p>
                  ) : items.map((item, idx) => (
                    <div key={item.id} className="flex items-start gap-3 px-5 py-3">
                      {/* Reorder */}
                      <div className="flex flex-col gap-0.5 shrink-0 mt-1">
                        <button onClick={() => reorder(item.id, -1)} title="Feljebb" disabled={idx === 0}
                          className="w-7 h-7 rounded-full flex items-center justify-center hover:bg-slate-100 dark:hover:bg-slate-700 disabled:opacity-20 disabled:cursor-default transition-colors">
                          <svg className="w-3 h-3 text-slate-400" fill="none" viewBox="0 0 24 24" stroke="currentColor" strokeWidth={2.5}>
                            <path strokeLinecap="round" strokeLinejoin="round" d="M5 15l7-7 7 7" />
                          </svg>
                        </button>
                        <button onClick={() => reorder(item.id, 1)} title="Lejjebb" disabled={idx === items.length - 1}
                          className="w-7 h-7 rounded-full flex items-center justify-center hover:bg-slate-100 dark:hover:bg-slate-700 disabled:opacity-20 disabled:cursor-default transition-colors">
                          <svg className="w-3 h-3 text-slate-400" fill="none" viewBox="0 0 24 24" stroke="currentColor" strokeWidth={2.5}>
                            <path strokeLinecap="round" strokeLinejoin="round" d="M19 9l-7 7-7-7" />
                          </svg>
                        </button>
                      </div>
                      {/* Thumbnail */}
                      {/* eslint-disable-next-line @next/next/no-img-element */}
                      <img src={item.problemImageUrl} alt={item.title}
                        className="w-16 h-12 object-cover rounded-lg border border-slate-200 dark:border-slate-700 shrink-0 bg-slate-100 dark:bg-slate-900" />
                      {/* Info */}
                      <div className="flex-1 min-w-0">
                        <p className="text-xs font-medium text-slate-700 dark:text-slate-200 leading-snug">{item.title}</p>
                      </div>
                      {/* Remove */}
                      <button onClick={() => remove(item.id)} title="Eltávolítás"
                        className="shrink-0 w-7 h-7 rounded-full hover:bg-slate-100 dark:hover:bg-slate-700 flex items-center justify-center transition-colors">
                        <svg className="w-3.5 h-3.5 text-slate-400 hover:text-crimson-500 transition-colors" fill="none" viewBox="0 0 24 24" stroke="currentColor" strokeWidth={2.5}>
                          <path strokeLinecap="round" strokeLinejoin="round" d="M6 18L18 6M6 6l12 12" />
                        </svg>
                      </button>
                    </div>
                  ))}
                </div>

                <div className="px-5 py-4 border-t border-slate-200 dark:border-slate-700 shrink-0 flex justify-end">
                  <button onClick={goToStep2} disabled={items.length === 0}
                    className="flex items-center gap-2 px-5 py-2.5 bg-navy-600 hover:bg-navy-700 disabled:opacity-40
                               text-white text-sm font-semibold rounded-xl transition-colors">
                    Elrendezés beállítása
                    <svg className="w-4 h-4" fill="none" viewBox="0 0 24 24" stroke="currentColor" strokeWidth={2}>
                      <path strokeLinecap="round" strokeLinejoin="round" d="M9 5l7 7-7 7" />
                    </svg>
                  </button>
                </div>
              </>
            )}

            {/* ── STEP 2: Layout + print ─────────────────────────── */}
            {step === 2 && (
              <>
                <div className="flex items-center justify-between px-5 py-4 border-b border-slate-200 dark:border-slate-700 shrink-0">
                  <div>
                    <h2 className="text-base font-bold text-slate-900 dark:text-white">Elrendezés</h2>
                    <p className="text-xs text-slate-400 mt-0.5">
                      {pages.length} oldal · kattints az elválasztókra
                    </p>
                  </div>
                  <button onClick={closeModal}
                    className="w-8 h-8 rounded-full bg-slate-100 dark:bg-slate-700 hover:bg-slate-200 dark:hover:bg-slate-600 flex items-center justify-center transition-colors">
                    <svg className="w-4 h-4 text-slate-600 dark:text-slate-300" fill="none" viewBox="0 0 24 24" stroke="currentColor" strokeWidth={2.5}>
                      <path strokeLinecap="round" strokeLinejoin="round" d="M6 18L18 6M6 6l12 12" />
                    </svg>
                  </button>
                </div>

                {/* Quick options */}
                <div className="px-5 pt-3 pb-2 shrink-0 flex flex-col gap-2 border-b border-slate-100 dark:border-slate-700/50">
                  {/* Page break buttons */}
                  <div className="flex items-center gap-2 flex-wrap">
                    <span className="text-xs text-slate-400 mr-1">Oldaltörések:</span>
                    <button onClick={() => setAllBreaks(true)}
                      className="text-xs px-2.5 py-1 rounded-lg bg-slate-100 dark:bg-slate-700 hover:bg-navy-50 dark:hover:bg-navy-900/30
                                 text-slate-600 dark:text-slate-300 hover:text-navy-700 dark:hover:text-navy-300 transition-colors font-medium">
                      Mindenhova
                    </button>
                    <button onClick={() => setAllBreaks(false)}
                      className="text-xs px-2.5 py-1 rounded-lg bg-slate-100 dark:bg-slate-700 hover:bg-slate-200 dark:hover:bg-slate-600
                                 text-slate-600 dark:text-slate-300 transition-colors font-medium">
                      Egyik sem
                    </button>

                    <div className="flex items-center gap-3 ml-auto flex-wrap justify-end">
                      <label className="flex items-center gap-1.5 cursor-pointer">
                        <input type="checkbox" checked={showTitles} onChange={e => setShowTitles(e.target.checked)}
                          className="w-3.5 h-3.5 rounded accent-navy-600 cursor-pointer" />
                        <span className="text-xs text-slate-500 dark:text-slate-400 select-none">Feladatcím</span>
                      </label>
                    </div>
                  </div>

                  {/* Solution toggle buttons */}
                  <div className="flex items-center gap-2 flex-wrap">
                    <span className="text-xs text-slate-400 mr-1">Megoldások:</span>
                    <button onClick={() => setAllSolutions(true)}
                      className="text-xs px-2.5 py-1 rounded-lg bg-slate-100 dark:bg-slate-700 hover:bg-navy-50 dark:hover:bg-navy-900/30
                                 text-slate-600 dark:text-slate-300 hover:text-navy-700 dark:hover:text-navy-300 transition-colors font-medium">
                      Mindenhova
                    </button>
                    <button onClick={() => setAllSolutions(false)}
                      className="text-xs px-2.5 py-1 rounded-lg bg-slate-100 dark:bg-slate-700 hover:bg-slate-200 dark:hover:bg-slate-600
                                 text-slate-600 dark:text-slate-300 transition-colors font-medium">
                      Egyik sem
                    </button>
                  </div>

                  {/* Header text input */}
                  <input
                    type="text"
                    placeholder="Fejléc (pl. 10.B osztály · 2026. április 16.)"
                    value={headerText}
                    onChange={e => setHeaderText(e.target.value)}
                    maxLength={120}
                    className="w-full px-3 py-1.5 text-xs rounded-lg border
                               bg-white dark:bg-slate-700/50
                               border-slate-200 dark:border-slate-600
                               text-slate-700 dark:text-slate-200
                               placeholder:text-slate-400 dark:placeholder:text-slate-500
                               focus:outline-none focus:ring-1 focus:ring-navy-400 dark:focus:ring-navy-500
                               transition-all"
                  />
                </div>

                {/* Interactive preview */}
                <div className="overflow-y-auto flex-1 px-4 py-3">
                  {items.map((item, i) => {
                    const hasBreakAfter  = i < items.length - 1 && pageBreaks[i];
                    const isFirstOnPage  = i === 0 || (i > 0 && pageBreaks[i - 1]);
                    let pageNum = 1;
                    for (let j = 0; j < i; j++) if (pageBreaks[j]) pageNum++;

                    return (
                      <div key={item.id}>
                        {isFirstOnPage && (
                          <div className="flex items-center gap-2 mb-2 mt-1">
                            <span className="text-[10px] font-bold text-slate-400 dark:text-slate-500 uppercase tracking-widest shrink-0">
                              {pageNum}. oldal
                            </span>
                            <div className="flex-1 h-px bg-slate-200 dark:bg-slate-700" />
                          </div>
                        )}

                        <div className="flex items-center gap-3 py-2 px-2 rounded-xl hover:bg-slate-50 dark:hover:bg-slate-700/30 transition-colors">
                          {/* eslint-disable-next-line @next/next/no-img-element */}
                          <img src={item.problemImageUrl} alt={item.title}
                            className="w-20 h-14 object-cover rounded-lg border border-slate-200 dark:border-slate-600 shrink-0 bg-slate-100 dark:bg-slate-900" />
                          <div className="flex-1 min-w-0">
                            <p className="text-xs font-medium text-slate-700 dark:text-slate-200 leading-snug truncate">{item.title}</p>
                            {item.answerImageUrl && (
                              <label className="flex items-center gap-1.5 mt-1.5 cursor-pointer">
                                <input type="checkbox" checked={item.includeSolution} onChange={() => toggleSolution(item.id)}
                                  className="w-3.5 h-3.5 rounded accent-navy-600 cursor-pointer" />
                                <span className="text-[10px] text-slate-400 dark:text-slate-500 select-none">Megoldás is</span>
                              </label>
                            )}
                          </div>
                        </div>

                        {i < items.length - 1 && (
                          <button
                            onClick={() => toggleBreak(i)}
                            className={`w-full flex items-center gap-2 py-2 px-2 rounded-lg transition-colors group
                              ${hasBreakAfter
                                ? "text-navy-500 dark:text-navy-400 hover:bg-navy-50 dark:hover:bg-navy-900/20"
                                : "text-slate-300 dark:text-slate-600 hover:text-slate-500 dark:hover:text-slate-400 hover:bg-slate-50 dark:hover:bg-slate-700/30"
                              }`}
                          >
                            <div className={`flex-1 border-t transition-colors ${
                              hasBreakAfter ? "border-navy-300 dark:border-navy-600 border-dashed" : "border-slate-200 dark:border-slate-700"
                            }`} />
                            <span className="text-[10px] font-semibold uppercase tracking-wide shrink-0 select-none">
                              {hasBreakAfter ? "✓ Oldaltörés" : "+ Oldaltörés"}
                            </span>
                            <div className={`flex-1 border-t transition-colors ${
                              hasBreakAfter ? "border-navy-300 dark:border-navy-600 border-dashed" : "border-slate-200 dark:border-slate-700"
                            }`} />
                          </button>
                        )}
                      </div>
                    );
                  })}
                </div>

                {/* Footer */}
                <div className="px-5 py-4 border-t border-slate-200 dark:border-slate-700 shrink-0">
                  {/* Progress bar during generation */}
                  {isGenerating && (
                    <div className="mb-3 flex items-center gap-2">
                      <svg className="w-4 h-4 animate-spin text-navy-500 shrink-0" fill="none" viewBox="0 0 24 24">
                        <circle className="opacity-25" cx="12" cy="12" r="10" stroke="currentColor" strokeWidth="4"/>
                        <path className="opacity-75" fill="currentColor" d="M4 12a8 8 0 018-8v4l3-3-3-3v4a8 8 0 100 16v-4l-3 3 3 3v-4a8 8 0 01-8-8z"/>
                      </svg>
                      <span className="text-xs text-slate-500 dark:text-slate-400 truncate">{genStatus}</span>
                    </div>
                  )}

                  <div className="flex flex-wrap items-center justify-between gap-2">
                    <button onClick={() => setStep(1)} disabled={isGenerating}
                      className="flex items-center gap-1.5 text-sm text-slate-500 hover:text-slate-700 dark:hover:text-slate-200 transition-colors disabled:opacity-40">
                      <svg className="w-4 h-4" fill="none" viewBox="0 0 24 24" stroke="currentColor" strokeWidth={2}>
                        <path strokeLinecap="round" strokeLinejoin="round" d="M15 19l-7-7 7-7" />
                      </svg>
                      Vissza
                    </button>

                    <div className="flex items-center gap-2 flex-wrap justify-end">
                      {anyWithSolution && (
                        <button
                          onClick={() => handleGenerate(true)}
                          disabled={isGenerating}
                          className="flex items-center gap-2 px-4 py-2.5
                                     bg-slate-100 dark:bg-slate-700 hover:bg-slate-200 dark:hover:bg-slate-600
                                     text-slate-700 dark:text-slate-200
                                     text-sm font-semibold rounded-xl transition-colors disabled:opacity-40"
                        >
                          <svg className="w-4 h-4" fill="none" viewBox="0 0 24 24" stroke="currentColor" strokeWidth={2}>
                            <path strokeLinecap="round" strokeLinejoin="round"
                              d="M6 9V2h12v7M6 18H4a2 2 0 0 1-2-2v-5a2 2 0 0 1 2-2h16a2 2 0 0 1 2 2v5a2 2 0 0 1-2 2h-2M6 14h12v8H6z" />
                          </svg>
                          Megoldókulcs
                        </button>
                      )}

                      <button
                        onClick={() => handleGenerate(false)}
                        disabled={isGenerating}
                        className="flex items-center gap-2 px-5 py-2.5 bg-navy-600 hover:bg-navy-700
                                   text-white text-sm font-semibold rounded-xl transition-colors disabled:opacity-40"
                      >
                        <svg className="w-4 h-4" fill="none" viewBox="0 0 24 24" stroke="currentColor" strokeWidth={2}>
                          <path strokeLinecap="round" strokeLinejoin="round"
                            d="M6 9V2h12v7M6 18H4a2 2 0 0 1-2-2v-5a2 2 0 0 1 2-2h16a2 2 0 0 1 2 2v5a2 2 0 0 1-2 2h-2M6 14h12v8H6z" />
                        </svg>
                        {isGenerating ? "Generálás…" : "PDF generálása"}
                      </button>
                    </div>
                  </div>
                </div>
              </>
            )}
          </div>
        </div>
      )}
    </>
  );
}
