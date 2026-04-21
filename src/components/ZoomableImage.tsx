"use client";

import { useState, useRef, useEffect, useCallback } from "react";

interface Props {
  src: string;
  alt: string;
  onError?: () => void;
}

const MAX_SCALE = 5;
const MAX_H_VH  = 0.75; // 75 % of viewport height

function clamp(v: number, lo: number, hi: number) {
  return Math.max(lo, Math.min(hi, v));
}

function applyZoom(
  prev: { scale: number; x: number; y: number },
  factor: number,
  cx: number, cy: number,
  rect: { width: number; height: number },
): { scale: number; x: number; y: number } {
  const newScale = clamp(prev.scale * factor, 1, MAX_SCALE);
  const nx = prev.x + cx * (1 - newScale / prev.scale);
  const ny = prev.y + cy * (1 - newScale / prev.scale);
  const bx = (rect.width  * (newScale - 1)) / 2;
  const by = (rect.height * (newScale - 1)) / 2;
  return { scale: newScale, x: clamp(nx, -bx, bx), y: clamp(ny, -by, by) };
}

function clampPan(
  tx: number, ty: number,
  scale: number,
  rect: { width: number; height: number },
) {
  if (scale <= 1) return { x: 0, y: 0 };
  const bx = (rect.width  * (scale - 1)) / 2;
  const by = (rect.height * (scale - 1)) / 2;
  return { x: clamp(tx, -bx, bx), y: clamp(ty, -by, by) };
}

export default function ZoomableImage({ src, alt, onError }: Props) {
  const [t, setT]           = useState({ scale: 1, x: 0, y: 0 });
  const [dragging, setDrag] = useState(false);
  const scaleRef            = useRef(1);

  // Explicit pixel size computed on load — guarantees correct aspect ratio
  const [imgW, setImgW] = useState<number | null>(null);
  const [imgH, setImgH] = useState<number | null>(null);

  // outerRef: full-width wrapper used only to measure available width
  // ref:      the overflow-hidden zoom container, sized to the image
  const outerRef  = useRef<HTMLDivElement>(null);
  const ref       = useRef<HTMLDivElement>(null);
  const imgRef    = useRef<HTMLImageElement>(null);
  const dragStart = useRef({ mx: 0, my: 0, px: 0, py: 0 });

  // ── Compute display size ────────────────────────────────────────
  const computeSize = useCallback(() => {
    const img   = imgRef.current;
    const outer = outerRef.current;
    if (!img || !outer || !img.naturalWidth) return;

    const maxW   = outer.clientWidth;
    const maxH   = Math.floor(window.innerHeight * MAX_H_VH);
    const scale  = Math.min(maxW / img.naturalWidth, maxH / img.naturalHeight);

    setImgW(Math.round(img.naturalWidth  * scale));
    setImgH(Math.round(img.naturalHeight * scale));
  }, []);

  // Run immediately in case the image is already cached
  useEffect(() => {
    const img = imgRef.current;
    if (img?.complete && img.naturalWidth > 0) computeSize();
  }, [computeSize]);

  // Keep scaleRef in sync so touch handlers can read scale synchronously
  useEffect(() => { scaleRef.current = t.scale; }, [t.scale]);

  // Reset when src changes
  useEffect(() => {
    setImgW(null);
    setImgH(null);
    setT({ scale: 1, x: 0, y: 0 });
  }, [src]);

  // Recompute display size whenever the container resizes (covers orientation change)
  useEffect(() => {
    const outer = outerRef.current;
    if (!outer) return;
    const ro = new ResizeObserver(computeSize);
    ro.observe(outer);
    return () => ro.disconnect();
  }, [computeSize]);

  // Reset zoom on orientation change so stale pan offsets don't carry over
  useEffect(() => {
    const reset = () => setT({ scale: 1, x: 0, y: 0 });
    window.addEventListener("orientationchange", reset);
    return () => window.removeEventListener("orientationchange", reset);
  }, []);

  // ── Wheel zoom ──────────────────────────────────────────────────
  useEffect(() => {
    const el = ref.current;
    if (!el) return;
    const handler = (e: WheelEvent) => {
      e.preventDefault();
      const rect = el.getBoundingClientRect();
      const cx = e.clientX - rect.left  - rect.width  / 2;
      const cy = e.clientY - rect.top   - rect.height / 2;
      setT(prev => applyZoom(prev, e.deltaY < 0 ? 1.2 : 1 / 1.2, cx, cy, rect));
    };
    el.addEventListener("wheel", handler, { passive: false });
    return () => el.removeEventListener("wheel", handler);
  }, [imgW, imgH]); // re-attach after size is known

  // ── Touch pinch-to-zoom + single-finger pan ─────────────────────
  useEffect(() => {
    const el = ref.current;
    if (!el) return;

    let pDist:  number | null = null;
    let pMid:   { x: number; y: number } | null = null;
    let pTouch: { x: number; y: number } | null = null;

    const D  = (tl: TouchList) =>
      Math.hypot(tl[0].clientX - tl[1].clientX, tl[0].clientY - tl[1].clientY);
    const Md = (tl: TouchList) => ({
      x: (tl[0].clientX + tl[1].clientX) / 2,
      y: (tl[0].clientY + tl[1].clientY) / 2,
    });

    const onStart = (e: TouchEvent) => {
      if (e.touches.length === 2) {
        pDist = D(e.touches); pMid = Md(e.touches); pTouch = null;
      } else {
        pTouch = { x: e.touches[0].clientX, y: e.touches[0].clientY }; pDist = null;
      }
    };

    const onMove = (e: TouchEvent) => {
      const rect = el.getBoundingClientRect();

      if (e.touches.length === 2 && pDist !== null && pMid !== null) {
        // Always intercept pinch-to-zoom — never let the browser handle it
        e.preventDefault();
        const nDist = D(e.touches);
        const nMid  = Md(e.touches);
        const cx = nMid.x - rect.left - rect.width  / 2;
        const cy = nMid.y - rect.top  - rect.height / 2;
        setT(prev => {
          const zoomed = applyZoom(prev, nDist / pDist!, cx, cy, rect);
          const bx = (rect.width  * (zoomed.scale - 1)) / 2;
          const by = (rect.height * (zoomed.scale - 1)) / 2;
          return {
            scale: zoomed.scale,
            x: clamp(zoomed.x + nMid.x - pMid!.x, -bx, bx),
            y: clamp(zoomed.y + nMid.y - pMid!.y, -by, by),
          };
        });
        pDist = nDist; pMid = nMid;

      } else if (e.touches.length === 1 && pTouch) {
        // Only block native page scroll when we're actually panning a zoomed image
        if (scaleRef.current > 1) e.preventDefault();
        const dx = e.touches[0].clientX - pTouch.x;
        const dy = e.touches[0].clientY - pTouch.y;
        setT(prev => {
          if (prev.scale <= 1) return prev;
          const p = clampPan(prev.x + dx, prev.y + dy, prev.scale, rect);
          return { ...prev, ...p };
        });
        pTouch = { x: e.touches[0].clientX, y: e.touches[0].clientY };
      }
    };

    const onEnd = () => {
      pDist = null; pMid = null; pTouch = null;
      setT(prev => (prev.scale < 1.05 ? { scale: 1, x: 0, y: 0 } : prev));
    };

    el.addEventListener("touchstart", onStart,  { passive: true });
    el.addEventListener("touchmove",  onMove,   { passive: false });
    el.addEventListener("touchend",   onEnd);
    return () => {
      el.removeEventListener("touchstart", onStart);
      el.removeEventListener("touchmove",  onMove);
      el.removeEventListener("touchend",   onEnd);
    };
  }, [imgW, imgH]); // re-attach after size is known

  // ── Mouse drag ──────────────────────────────────────────────────
  const onMouseDown = (e: React.MouseEvent) => {
    if (t.scale <= 1) return;
    e.preventDefault();
    setDrag(true);
    dragStart.current = { mx: e.clientX, my: e.clientY, px: t.x, py: t.y };
  };
  const onMouseMove = (e: React.MouseEvent) => {
    if (!dragging) return;
    const rect = ref.current?.getBoundingClientRect();
    if (!rect) return;
    const nx = dragStart.current.px + (e.clientX - dragStart.current.mx);
    const ny = dragStart.current.py + (e.clientY - dragStart.current.my);
    setT(prev => ({ ...prev, ...clampPan(nx, ny, prev.scale, rect) }));
  };
  const stopDrag = () => setDrag(false);

  // ── Button controls ─────────────────────────────────────────────
  const zoomBy = (factor: number) => {
    const rect = ref.current?.getBoundingClientRect();
    if (!rect) return;
    setT(prev => applyZoom(prev, factor, 0, 0, rect));
  };
  const reset = () => setT({ scale: 1, x: 0, y: 0 });

  const sizeReady = imgW !== null && imgH !== null;

  return (
    <div className="flex flex-col items-center gap-3 w-full">

      {/* Full-width ruler — measures available space before image loads */}
      <div ref={outerRef} className="w-full flex justify-center">
        <div
          ref={ref}
          className="overflow-hidden rounded-2xl shadow-2xl bg-white"
          style={{
            width:  sizeReady ? imgW  : "100%",
            height: sizeReady ? imgH  : "auto",
            maxWidth: "100%",
            touchAction: t.scale > 1 ? "none" : "pan-x pan-y",
            cursor: dragging ? "grabbing" : t.scale > 1 ? "grab" : "default",
          }}
          onMouseDown={onMouseDown}
          onMouseMove={onMouseMove}
          onMouseUp={stopDrag}
          onMouseLeave={stopDrag}
        >
          {/* eslint-disable-next-line @next/next/no-img-element */}
          <img
            ref={imgRef}
            src={src}
            alt={alt}
            // Before size is computed: let browser show natural size (no distortion)
            // After:                   fill the container exactly
            className="select-none pointer-events-none"
            style={{
              display: "block",
              width:  sizeReady ? "100%" : "auto",
              height: sizeReady ? "100%" : "auto",
              maxWidth:  sizeReady ? undefined : "100%",
              maxHeight: sizeReady ? undefined : "75vh",
              transform: `translate(${t.x}px, ${t.y}px) scale(${t.scale})`,
              transformOrigin: "center",
              transition: dragging ? "none" : "transform 0.08s ease-out",
            }}
            draggable={false}
            onLoad={computeSize}
            onError={onError}
          />
        </div>
      </div>

      {/* Zoom controls */}
      <div className="flex items-center gap-1 bg-black/50 backdrop-blur-sm rounded-full px-2 py-1.5 shadow-lg">
        <button
          onClick={() => zoomBy(1 / 1.5)}
          disabled={t.scale <= 1}
          className="w-9 h-9 rounded-full hover:bg-white/15 active:bg-white/25
                     disabled:opacity-30 disabled:cursor-default
                     text-white text-2xl font-light leading-none transition-colors
                     flex items-center justify-center"
          aria-label="Kicsinyítés"
        >−</button>

        <button
          onClick={reset}
          className="px-3 h-9 rounded-full hover:bg-white/15 active:bg-white/25
                     text-white/80 hover:text-white text-xs font-mono tabular-nums
                     transition-colors min-w-[4rem] text-center"
          aria-label="Visszaállítás"
        >
          {Math.round(t.scale * 100)}%
        </button>

        <button
          onClick={() => zoomBy(1.5)}
          disabled={t.scale >= MAX_SCALE}
          className="w-9 h-9 rounded-full hover:bg-white/15 active:bg-white/25
                     disabled:opacity-30 disabled:cursor-default
                     text-white text-2xl font-light leading-none transition-colors
                     flex items-center justify-center"
          aria-label="Nagyítás"
        >+</button>
      </div>

      <p className="text-white/80 text-xs text-center px-4 py-1 bg-black/50 backdrop-blur-sm rounded-full shadow">
        Görgetés / csípés a nagyításhoz &middot; húzd a képet mozgatáshoz
      </p>
    </div>
  );
}
