import { NextResponse } from "next/server";
import db from "@/lib/db";

// A random endpoint must never be statically cached, and must not be evaluated
// at build time (no DB access during `next build`).
export const dynamic = "force-dynamic";

const GROUP_COLS =
  "year, exam_type, exam_session, exam_part, is_secondary_language, problem_number";

export async function GET() {
  try {
    // Pick one problem (group) uniformly at random — not one sub-part row, so a
    // three-part problem is no likelier to come up than a single-part one — then
    // return every sub-part row of that problem for the client to fold back into
    // a single ProblemGroup.
    const result = await db.query(
      `WITH picked AS (
         SELECT ${GROUP_COLS}
         FROM problems
         WHERE human_reviewed = true AND problem_image_url IS NOT NULL
         GROUP BY ${GROUP_COLS}
         ORDER BY random()
         LIMIT 1
       )
       SELECT p.id, p.year, p.exam_type, p.exam_session, p.exam_part, p.problem_number,
              p.sub_part, p.problem_image_url, p.max_points, p.topic_tags, p.ocr_used,
              p.is_secondary_language
       FROM problems p
       JOIN picked k
         ON  p.year                  = k.year
         AND p.exam_type             = k.exam_type
         AND p.exam_session          = k.exam_session
         AND p.exam_part             IS NOT DISTINCT FROM k.exam_part
         AND p.is_secondary_language = k.is_secondary_language
         AND p.problem_number        = k.problem_number
       WHERE p.human_reviewed = true
       ORDER BY p.sub_part ASC NULLS FIRST`
    );

    return NextResponse.json(result.rows);
  } catch (err) {
    console.error("[api/random-problem]", err);
    return NextResponse.json([], { status: 500 });
  }
}
