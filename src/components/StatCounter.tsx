"use client";

import { useEffect, useRef, useState } from "react";

interface Props {
  value: string;        // e.g. "2 500+" or "26" or "100+"
  duration?: number;    // ms total for the count-up
}

function parse(raw: string): { num: number; suffix: string; hasSpace: boolean } {
  const hasSpace = /\d \d/.test(raw);
  const stripped = raw.replace(/\s/g, "");
  const match = stripped.match(/^(\d+)(.*)$/);
  if (!match) return { num: 0, suffix: raw, hasSpace };
  return { num: parseInt(match[1]), suffix: match[2], hasSpace };
}

function format(n: number, hasSpace: boolean): string {
  if (hasSpace && n >= 1000) {
    return `${Math.floor(n / 1000)} ${String(n % 1000).padStart(3, "0")}`;
  }
  return String(n);
}

export default function StatCounter({ value, duration = 1400 }: Props) {
  const ref = useRef<HTMLSpanElement>(null);
  const [count, setCount] = useState(0);
  const [started, setStarted] = useState(false);
  const { num, suffix, hasSpace } = parse(value);

  // Trigger when element enters viewport
  useEffect(() => {
    const el = ref.current;
    if (!el) return;
    const observer = new IntersectionObserver(
      ([entry]) => {
        if (entry.isIntersecting && !started) {
          setStarted(true);
          observer.disconnect();
        }
      },
      { threshold: 0.5 }
    );
    observer.observe(el);
    return () => observer.disconnect();
  }, [started]);

  // Count-up with cubic ease-out
  useEffect(() => {
    if (!started) return;
    const steps = 60;
    const interval = duration / steps;
    let step = 0;
    const timer = setInterval(() => {
      step++;
      const t = step / steps;
      const eased = 1 - Math.pow(1 - t, 3); // cubic ease-out
      setCount(Math.round(eased * num));
      if (step >= steps) clearInterval(timer);
    }, interval);
    return () => clearInterval(timer);
  }, [started, num, duration]);

  return (
    <span ref={ref}>
      {format(started ? count : 0, hasSpace)}{suffix}
    </span>
  );
}
