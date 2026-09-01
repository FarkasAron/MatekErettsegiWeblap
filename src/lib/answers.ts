import { type Problem } from "@/lib/supabase";

const SESSION_SHORT: Record<string, string> = {
  majus:   "maj",
  oktober: "okt",
  februar: "febr",
};

const IMAGE_BASE = "/images";

/**
 * The answer-key image is one PNG per problem number, so this only needs the
 * exam-identifying fields — satisfied by both {@link Problem} and
 * {@link "@/lib/problems".ProblemGroup}.
 */
type AnswerKeyRef = Pick<
  Problem,
  "exam_type" | "year" | "exam_session" | "problem_number"
>;

export function getAnswerImageUrl(problem: AnswerKeyRef): string | null {
  const typePrefix   = problem.exam_type === "kozep" ? "k" : "e";
  const yearShort    = String(problem.year).slice(2);
  const sessionShort = SESSION_SHORT[problem.exam_session];
  if (!sessionShort) return null;
  const num  = String(problem.problem_number).padStart(3, "0");
  const stem = `${typePrefix}_mat_${yearShort}${sessionShort}_ut`;
  const path = `${stem}/crops/${stem}_ans_${num}.png`;
  return `${IMAGE_BASE}/${path}`;
}
