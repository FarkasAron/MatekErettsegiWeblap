"use client";

import { useEffect, useRef, useState } from "react";

interface Props {
  /** 0–100 */
  pct: number;
  barClass?: string;
  trackClass?: string;
  height?: string;
  /** ms delay before animation starts (for staggering) */
  delay?: number;
}

export default function AnimatedBar({
  pct,
  barClass   = "bg-gradient-to-r from-navy-500 to-navy-400 dark:from-navy-400 dark:to-navy-300",
  trackClass = "bg-slate-100 dark:bg-slate-700",
  height     = "h-3",
  delay      = 0,
}: Props) {
  const ref  = useRef<HTMLDivElement>(null);
  const [width, setWidth] = useState(0);

  useEffect(() => {
    const el = ref.current;
    if (!el) return;
    const observer = new IntersectionObserver(
      ([entry]) => {
        if (entry.isIntersecting) {
          const t = setTimeout(() => setWidth(pct), delay);
          observer.disconnect();
          return () => clearTimeout(t);
        }
      },
      { threshold: 0.3 }
    );
    observer.observe(el);
    return () => observer.disconnect();
  }, [pct, delay]);

  return (
    <div ref={ref} className={`flex-1 ${trackClass} rounded-full ${height} overflow-hidden`}>
      <div
        className={`h-full rounded-full ${barClass}`}
        style={{ width: `${width}%`, transition: "width 1000ms cubic-bezier(0.22, 1, 0.36, 1)" }}
      />
    </div>
  );
}
