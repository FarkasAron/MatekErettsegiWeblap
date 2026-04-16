"use client";

import { createContext, useContext, useState, useCallback, useEffect, type ReactNode } from "react";

export interface PrintItem {
  id:               string;
  title:            string;
  problemImageUrl:  string;
  answerImageUrl:   string | null;
  includeSolution:  boolean;
}

interface PrintCartCtx {
  items:          PrintItem[];
  add:            (item: Omit<PrintItem, "includeSolution">) => void;
  remove:         (id: string) => void;
  isInCart:       (id: string) => boolean;
  toggleSolution: (id: string) => void;
  reorder:        (id: string, dir: 1 | -1) => void;
  clear:          () => void;
}

const Ctx = createContext<PrintCartCtx | null>(null);

const STORAGE_KEY = "veglesine-print-cart-v1";

export function PrintCartProvider({ children }: { children: ReactNode }) {
  const [items,     setItems]     = useState<PrintItem[]>([]);
  const [hydrated,  setHydrated]  = useState(false);

  // Load from localStorage on first mount
  useEffect(() => {
    try {
      const raw = localStorage.getItem(STORAGE_KEY);
      if (raw) setItems(JSON.parse(raw) as PrintItem[]);
    } catch { /* ignore corrupt storage */ }
    setHydrated(true);
  }, []);

  // Persist to localStorage whenever items change (after hydration)
  useEffect(() => {
    if (!hydrated) return;
    try {
      localStorage.setItem(STORAGE_KEY, JSON.stringify(items));
    } catch { /* ignore storage full / private mode */ }
  }, [items, hydrated]);

  const add = useCallback((item: Omit<PrintItem, "includeSolution">) => {
    setItems(prev =>
      prev.some(i => i.id === item.id) ? prev : [...prev, { ...item, includeSolution: false }]
    );
  }, []);

  const remove = useCallback((id: string) => {
    setItems(prev => prev.filter(i => i.id !== id));
  }, []);

  const isInCart = useCallback((id: string) => items.some(i => i.id === id), [items]);

  const toggleSolution = useCallback((id: string) => {
    setItems(prev => prev.map(i => i.id === id ? { ...i, includeSolution: !i.includeSolution } : i));
  }, []);

  const reorder = useCallback((id: string, dir: 1 | -1) => {
    setItems(prev => {
      const idx  = prev.findIndex(i => i.id === id);
      const next = idx + dir;
      if (idx === -1 || next < 0 || next >= prev.length) return prev;
      const arr = [...prev];
      [arr[idx], arr[next]] = [arr[next], arr[idx]];
      return arr;
    });
  }, []);

  const clear = useCallback(() => setItems([]), []);

  return (
    <Ctx.Provider value={{ items, add, remove, isInCart, toggleSolution, reorder, clear }}>
      {children}
    </Ctx.Provider>
  );
}

export function usePrintCart() {
  const ctx = useContext(Ctx);
  if (!ctx) throw new Error("usePrintCart must be used within PrintCartProvider");
  return ctx;
}
