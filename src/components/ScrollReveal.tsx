"use client";

import { useEffect, useRef, useState } from "react";

interface Props {
  children: React.ReactNode;
  className?: string;
  delay?: number;        // ms — for staggered children
  direction?: "up" | "left" | "none";
  threshold?: number;    // 0–1, how much of element must be visible
}

export default function ScrollReveal({
  children,
  className = "",
  delay = 0,
  direction = "up",
  threshold = 0.12,
}: Props) {
  const ref = useRef<HTMLDivElement>(null);
  const [visible, setVisible] = useState(false);

  useEffect(() => {
    const el = ref.current;
    if (!el) return;
    const observer = new IntersectionObserver(
      ([entry]) => {
        if (entry.isIntersecting) {
          setVisible(true);
          observer.disconnect();
        }
      },
      { threshold, rootMargin: "0px 0px -32px 0px" }
    );
    observer.observe(el);
    return () => observer.disconnect();
  }, [threshold]);

  const hidden =
    direction === "up"   ? "opacity-0 translate-y-6" :
    direction === "left" ? "opacity-0 -translate-x-6" :
                           "opacity-0";

  return (
    <div
      ref={ref}
      className={`transition-all duration-700 ease-out ${visible ? "opacity-100 translate-y-0 translate-x-0" : hidden} ${className}`}
      style={{ transitionDelay: visible ? `${delay}ms` : "0ms" }}
    >
      {children}
    </div>
  );
}
