"use client";

import { useState } from "react";
import { TOPIC_LABELS, type Problem } from "@/lib/supabase";

/** Clickable topic-tag chips for one sub-part; links to the filtered browse view. */
function TagChips({ tags }: { tags: string[] }) {
  if (tags.length === 0) {
    return (
      <span className="text-xs text-slate-400 dark:text-slate-500">Nincs témakör</span>
    );
  }
  return (
    <div className="flex flex-wrap gap-1">
      {tags.map((tag) => (
        <a
          key={tag}
          href={`/feladatok?tema=${tag}`}
          className="badge bg-navy-50 text-navy-600 hover:bg-navy-100
                     dark:bg-white/10 dark:text-slate-200 dark:hover:bg-white/15
                     transition-colors border border-navy-100/60 dark:border-white/10"
        >
          {TOPIC_LABELS[tag] ?? tag}
        </a>
      ))}
    </div>
  );
}

interface SubPartRowProps {
  sub: Problem;
  initiallyOpen: boolean;
}

/** One collapsible sub-part row: `a)` header, expands to its topic-tag chips. */
function SubPartRow({ sub, initiallyOpen }: SubPartRowProps) {
  const [open, setOpen] = useState(initiallyOpen);
  const tagCount = sub.topic_tags?.length ?? 0;

  return (
    <li>
      <button
        type="button"
        onClick={() => setOpen((v) => !v)}
        aria-expanded={open}
        className="w-full flex items-center gap-2.5 py-2 text-left group/row
                   hover:bg-slate-50/70 dark:hover:bg-white/[0.03] transition-colors"
      >
        <span
          className={`text-[10px] text-slate-300 dark:text-slate-600 transition-transform duration-200
                      ${open ? "rotate-90 text-navy-500 dark:text-navy-400" : ""}`}
        >
          ▶
        </span>
        <span className="font-mono text-sm font-semibold text-slate-700 dark:text-slate-200 w-6 shrink-0">
          {sub.sub_part ? `${sub.sub_part})` : "—"}
        </span>
        <span className="text-xs text-slate-400 dark:text-slate-500">
          {tagCount === 0 ? "nincs témakör" : `${tagCount} témakör`}
        </span>
      </button>
      {open && (
        <div className="pb-3 pl-[2.1rem] pr-1 animate-fade-in">
          <TagChips tags={sub.topic_tags ?? []} />
        </div>
      )}
    </li>
  );
}

interface Props {
  subParts: Problem[];
  /** Sub-part rows whose `topic_tags` include this slug start expanded. */
  defaultExpandedTag?: string;
}

/**
 * The sub-part breakdown beneath a problem card. Single-part problems (one row
 * with a NULL `sub_part`) render their tags directly; multi-part problems render
 * a collapsible list, one row per sub-part.
 */
export default function SubPartList({ subParts, defaultExpandedTag }: Props) {
  if (subParts.length === 1 && subParts[0].sub_part == null) {
    return (
      <div className="pt-0.5">
        <TagChips tags={subParts[0].topic_tags ?? []} />
      </div>
    );
  }

  return (
    <ul className="divide-y divide-slate-100 dark:divide-slate-700/50
                   border-t border-slate-100 dark:border-slate-700/50">
      {subParts.map((sp) => (
        <SubPartRow
          key={sp.id}
          sub={sp}
          initiallyOpen={
            defaultExpandedTag != null &&
            (sp.topic_tags ?? []).includes(defaultExpandedTag)
          }
        />
      ))}
    </ul>
  );
}
