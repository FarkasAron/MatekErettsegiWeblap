import { describe, expect, it } from "vitest";
import type { Problem } from "@/lib/supabase";
import { groupKey, groupProblems } from "@/lib/problems";

/** Build a Problem row with sensible defaults; override only what a test cares about. */
function mk(overrides: Partial<Problem> = {}): Problem {
  return {
    id: Math.random().toString(36).slice(2),
    year: 2024,
    exam_type: "kozep",
    exam_session: "majus",
    exam_part: null,
    problem_number: 1,
    sub_part: null,
    problem_image_url: "/images/p1.png",
    max_points: 12,
    topic_tags: [],
    ocr_used: false,
    is_secondary_language: false,
    ...overrides,
  };
}

describe("groupKey", () => {
  it("is identical for rows of the same problem", () => {
    const a = mk({ sub_part: "a" });
    const b = mk({ sub_part: "b" });
    expect(groupKey(a)).toBe(groupKey(b));
  });

  it("separates the matma twin from the regular problem", () => {
    const regular = mk({ is_secondary_language: false });
    const matma = mk({ is_secondary_language: true });
    expect(groupKey(regular)).not.toBe(groupKey(matma));
  });

  it("separates the same problem number across exam parts", () => {
    expect(groupKey(mk({ exam_part: "I" }))).not.toBe(
      groupKey(mk({ exam_part: "II" })),
    );
  });
});

describe("groupProblems", () => {
  it("merges sub-parts of one problem into a single group", () => {
    const groups = groupProblems([
      mk({ sub_part: "a", topic_tags: ["algebra"] }),
      mk({ sub_part: "b", topic_tags: ["algebra", "geometria-sik"] }),
      mk({ sub_part: "c", topic_tags: ["geometria-sik"] }),
    ]);

    expect(groups).toHaveLength(1);
    expect(groups[0].subParts.map((p) => p.sub_part)).toEqual(["a", "b", "c"]);
    expect(groups[0].problem_number).toBe(1);
  });

  it("keeps a single-part problem (NULL sub_part) as one group with one row", () => {
    const groups = groupProblems([mk({ sub_part: null })]);
    expect(groups).toHaveLength(1);
    expect(groups[0].subParts).toHaveLength(1);
    expect(groups[0].subParts[0].sub_part).toBeNull();
  });

  it("splits the matma twin into its own group", () => {
    const groups = groupProblems([
      mk({ sub_part: "a", is_secondary_language: false }),
      mk({ sub_part: "b", is_secondary_language: false }),
      mk({ sub_part: "a", is_secondary_language: true }),
      mk({ sub_part: "b", is_secondary_language: true }),
    ]);
    expect(groups).toHaveLength(2);
    expect(groups.map((g) => g.is_secondary_language)).toEqual([false, true]);
  });

  it("orders sub-parts a < b < c regardless of input order", () => {
    const groups = groupProblems([
      mk({ sub_part: "c" }),
      mk({ sub_part: "a" }),
      mk({ sub_part: "b" }),
    ]);
    expect(groups[0].subParts.map((p) => p.sub_part)).toEqual(["a", "b", "c"]);
  });

  it("sorts a NULL sub_part ahead of lettered ones", () => {
    const groups = groupProblems([
      mk({ sub_part: "a" }),
      mk({ sub_part: null }),
    ]);
    expect(groups[0].subParts.map((p) => p.sub_part)).toEqual([null, "a"]);
  });

  it("picks the first non-null image across sub-parts as representative", () => {
    const groups = groupProblems([
      mk({ sub_part: "a", problem_image_url: null }),
      mk({ sub_part: "b", problem_image_url: "/images/real.png" }),
    ]);
    expect(groups[0].problem_image_url).toBe("/images/real.png");
  });

  it("has a null representative image only when every sub-part is null", () => {
    const groups = groupProblems([
      mk({ sub_part: "a", problem_image_url: null }),
      mk({ sub_part: "b", problem_image_url: null }),
    ]);
    expect(groups[0].problem_image_url).toBeNull();
  });

  it("takes max_points as the max across sub-parts", () => {
    expect(
      groupProblems([mk({ max_points: 12 }), mk({ max_points: 12 })])[0]
        .max_points,
    ).toBe(12);
    expect(
      groupProblems([mk({ max_points: null }), mk({ max_points: 17 })])[0]
        .max_points,
    ).toBe(17);
    expect(
      groupProblems([mk({ max_points: null }), mk({ max_points: null })])[0]
        .max_points,
    ).toBeNull();
  });

  it("unions topic tags in first-seen order without duplicates", () => {
    const groups = groupProblems([
      mk({ sub_part: "a", topic_tags: ["algebra"] }),
      mk({ sub_part: "b", topic_tags: ["algebra", "geometria-sik"] }),
      mk({ sub_part: "c", topic_tags: [] }),
    ]);
    expect(groups[0].allTags).toEqual(["algebra", "geometria-sik"]);
  });

  it("preserves the first-seen order of groups from the input", () => {
    const groups = groupProblems([
      mk({ year: 2024, problem_number: 5 }),
      mk({ year: 2024, problem_number: 5, sub_part: "b" }),
      mk({ year: 2023, problem_number: 1 }),
      mk({ year: 2022, problem_number: 9 }),
    ]);
    expect(groups.map((g) => [g.year, g.problem_number])).toEqual([
      [2024, 5],
      [2023, 1],
      [2022, 9],
    ]);
  });

  it("returns an empty array for no rows", () => {
    expect(groupProblems([])).toEqual([]);
  });
});
