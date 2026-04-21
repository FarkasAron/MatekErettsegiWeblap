"use client";

import { useState, useRef, useEffect } from "react";

interface Props {
  src: string;
  alt: string;
  onError?: () => void;
}

const MIN_SCALE = 1;
const MAX_SCALE = 5;

function clamp(v: number, lo: number, hi: number) {
  return Math.max(lo, Math.min(hi, v));
}

export default function ZoomableImage({ src, alt, onError }: Props) {
  const [scale, setScale]     = useState(1);
  const containerRef          = useRef<HTMLDivElement>(null);
  const pDistRef              = useRef<number | null>(null);

  useEffect(() => { setScale(1); }, [src]);

  useEffect(() => {
    const reset = () => setScale(1);
    window.addEventListener("orientationchange", reset);
    return () => window.removeEventListener("orientationchange", reset);
  }, []);

  // Pinch-to-zoom — intercepts 2-finger moves, lets 1-finger scroll natively
  useEffect(() => {
    const el = containerRef.current;
    if (!el) return;

    const dist = (tl: TouchList) =>
      Math.hypot(tl[0].clientX - tl[1].clientX, tl[0].clientY - tl[1].clientY);

    const onStart = (e: TouchEvent) => {
      pDistRef.current = e.touches.length === 2 ? dist(e.touches) : null;
    };

    const onMove = (e: TouchEvent) => {
      if (e.touches.length !== 2 || pDistRef.current === null) return;
      e.preventDefault();
      const nDist  = dist(e.touches);
      const factor = nDist / pDistRef.current;
      // Keep zoom center visible by adjusting scroll proportionally
      const rect = el.getBoundingClientRect();
      const cx = (e.touches[0].clientX + e.touches[1].clientX) / 2 - rect.left;
      const cy = (e.touches[0].clientY + e.touches[1].clientY) / 2 - rect.top;
      el.scrollLeft = (el.scrollLeft + cx) * factor - cx;
      el.scrollTop  = (el.scrollTop  + cy) * factor - cy;
      setScale(prev => clamp(prev * factor, MIN_SCALE, MAX_SCALE));
      pDistRef.current = nDist;
    };

    const onEnd = () => { pDistRef.current = null; };

    el.addEventListener("touchstart", onStart, { passive: true });
    el.addEventListener("touchmove",  onMove,  { passive: false });
    el.addEventListener("touchend",   onEnd);

    return () => {
      el.removeEventListener("touchstart", onStart);
      el.removeEventListener("touchmove",  onMove);
      el.removeEventListener("touchend",   onEnd);
    };
  }, []);

  // Wheel zoom for desktop
  useEffect(() => {
    const el = containerRef.current;
    if (!el) return;
    const onWheel = (e: WheelEvent) => {
      if (!e.ctrlKey) return; // plain scroll passes through to the lightbox
      e.preventDefault();
      const factor = e.deltaY < 0 ? 1.2 : 1 / 1.2;
      const rect = el.getBoundingClientRect();
      const cx = e.clientX - rect.left;
      const cy = e.clientY - rect.top;
      el.scrollLeft = (el.scrollLeft + cx) * factor - cx;
      el.scrollTop  = (el.scrollTop  + cy) * factor - cy;
      setScale(prev => clamp(prev * factor, MIN_SCALE, MAX_SCALE));
    };
    el.addEventListener("wheel", onWheel, { passive: false });
    return () => el.removeEventListener("wheel", onWheel);
  }, []);

  const zoomBy = (f: number) => setScale(prev => clamp(prev * f, MIN_SCALE, MAX_SCALE));

  return (
    <div className="flex flex-col items-center gap-3 w-full">

      {/* Scrollable image container — image grows on zoom, scroll to pan */}
      <div
        ref={containerRef}
        className="w-full overflow-auto rounded-2xl shadow-2xl bg-white"
        style={{ touchAction: "pan-x pan-y" }}
      >
        {/* eslint-disable-next-line @next/next/no-img-element */}
        <img
          src={src}
          alt={alt}
          className="select-none pointer-events-none block"
          style={{ width: `${scale * 100}%`, height: "auto", minWidth: "100%" }}
          draggable={false}
          onError={onError}
        />
      </div>

      {/* Zoom controls */}
      <div className="flex items-center gap-1 bg-black/50 backdrop-blur-sm rounded-full px-2 py-1.5 shadow-lg">
        <button
          onClick={() => zoomBy(1 / 1.5)}
          disabled={scale <= MIN_SCALE}
          className="w-9 h-9 rounded-full hover:bg-white/15 active:bg-white/25
                     disabled:opacity-30 disabled:cursor-default
                     text-white text-2xl font-light leading-none transition-colors
                     flex items-center justify-center"
          aria-label="Kicsinyítés"
        >−</button>

        <button
          onClick={() => setScale(1)}
          className="px-3 h-9 rounded-full hover:bg-white/15 active:bg-white/25
                     text-white/80 hover:text-white text-xs font-mono tabular-nums
                     transition-colors min-w-[4rem] text-center"
          aria-label="Visszaállítás"
        >
          {Math.round(scale * 100)}%
        </button>

        <button
          onClick={() => zoomBy(1.5)}
          disabled={scale >= MAX_SCALE}
          className="w-9 h-9 rounded-full hover:bg-white/15 active:bg-white/25
                     disabled:opacity-30 disabled:cursor-default
                     text-white text-2xl font-light leading-none transition-colors
                     flex items-center justify-center"
          aria-label="Nagyítás"
        >+</button>
      </div>

      <p className="text-white/80 text-xs text-center px-4 py-1 bg-black/50 backdrop-blur-sm rounded-full shadow">
        Csípés / Ctrl+görgetés a nagyításhoz &middot; görgetés a mozgatáshoz
      </p>
    </div>
  );
}
