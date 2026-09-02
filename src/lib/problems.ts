import type { Problem } from "@/lib/supabase";

/**
 * A single problem, consolidated from its per-sub-part rows.
 *
 * The database stores one row per sub-part (a / b / c) because topic
 * categorisation is done at sub-part granularity, but every sub-part of a given
 * problem shares the same whole-problem crop image and the same `max_points`.
 * The UI groups those rows back into one card via {@link groupProblems}.
 */
export interface ProblemGroup {
  /**
   * Stable identifier for the group. Safe as a React key and as the print-cart
   * item id. Derived purely from the grouping columns — see {@link groupKey}.
   */
  key: string;
  year: number;
  exam_type: Problem["exam_type"];
  exam_session: string;
  exam_part: string | null;
  is_secondary_language: boolean;
  problem_number: number;
  /** Representative whole-problem image: the first non-null across sub-parts. */
  problem_image_url: string | null;
  /**
   * Whole-problem max points. Taken as the max across sub-parts; in practice
   * every sub-part row carries the same value.
   */
  max_points: number | null;
  /** Underlying rows, ordered a < b < c with a NULL `sub_part` first. */
  subParts: Problem[];
  /**
   * De-duplicated union of every sub-part's `topic_tags`, in first-seen order.
   * Used for group-level filter matching, not for display on the card head.
   */
  allTags: string[];
}

/** The subset of {@link Problem} fields that identify which group a row belongs to. */
export type GroupIdentity = Pick<
  Problem,
  | "year"
  | "exam_type"
  | "exam_session"
  | "exam_part"
  | "is_secondary_language"
  | "problem_number"
>;

/**
 * Build the stable key for a problem group.
 *
 * `is_secondary_language` is part of the key on purpose: a regular problem and
 * its "matma" twin share year / type / session / number but must stay separate
 * cards. `exam_part` is included because problem numbers can repeat across
 * Part I and Part II of the same exam.
 */
export function groupKey(p: GroupIdentity): string {
  return [
    p.year,
    p.exam_type,
    p.exam_session,
    p.exam_part ?? "",
    p.is_secondary_language ? "m" : "",
    p.problem_number,
  ].join("|");
}

/**
 * Sort sub-part rows: a NULL `sub_part` (single-part problem) first, then
 * lexically ('a' < 'b' < 'c' …).
 */
function compareSubPart(a: Problem, b: Problem): number {
  return (a.sub_part ?? "").localeCompare(b.sub_part ?? "");
}

/**
 * Consolidate per-sub-part rows into one {@link ProblemGroup} per problem.
 *
 * Group order follows the first appearance of each group in `rows`, so callers
 * that have already sorted the rows (year DESC, problem_number ASC, …) get the
 * groups back in that same order. Sub-parts within a group are re-sorted by
 * {@link compareSubPart} regardless of input order.
 */
export function groupProblems(rows: Problem[]): ProblemGroup[] {
  const byKey = new Map<string, Problem[]>();

  for (const row of rows) {
    const key = groupKey(row);
    const bucket = byKey.get(key);
    if (bucket) bucket.push(row);
    else byKey.set(key, [row]);
  }

  const groups: ProblemGroup[] = [];

  for (const [key, bucketRows] of byKey) {
    const subParts = [...bucketRows].sort(compareSubPart);
    const first = subParts[0];

    const image =
      subParts.find((p) => p.problem_image_url)?.problem_image_url ?? null;

    const points = subParts.reduce<number | null>((max, p) => {
      if (p.max_points == null) return max;
      return max == null ? p.max_points : Math.max(max, p.max_points);
    }, null);

    const seen = new Set<string>();
    const allTags: string[] = [];
    for (const sp of subParts) {
      for (const tag of sp.topic_tags ?? []) {
        if (!seen.has(tag)) {
          seen.add(tag);
          allTags.push(tag);
        }
      }
    }

    groups.push({
      key,
      year: first.year,
      exam_type: first.exam_type,
      exam_session: first.exam_session,
      exam_part: first.exam_part,
      is_secondary_language: first.is_secondary_language,
      problem_number: first.problem_number,
      problem_image_url: image,
      max_points: points,
      subParts,
      allTags,
    });
  }

  return groups;
}
