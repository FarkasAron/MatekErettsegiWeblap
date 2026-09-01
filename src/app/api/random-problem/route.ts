import { NextResponse } from "next/server";
import db from "@/lib/db";

// A random endpoint must never be statically cached, and must not be evaluated
// at build time (no DB access during `next build`).
export const dynamic = "force-dynamic";

export async function GET() {
  try {
    const countResult = await db.query(
      "SELECT COUNT(*) FROM problems WHERE human_reviewed = true AND problem_image_url IS NOT NULL"
    );
    const count = parseInt(countResult.rows[0].count);
    if (!count) return NextResponse.json(null);

    const offset = Math.floor(Math.random() * count);
    const result = await db.query(
      `SELECT id, year, exam_type, exam_session, exam_part, problem_number, sub_part,
              problem_image_url, max_points, topic_tags, ocr_used, is_secondary_language
       FROM problems WHERE human_reviewed = true AND problem_image_url IS NOT NULL
       ORDER BY id LIMIT 1 OFFSET $1`,
      [offset]
    );

    return NextResponse.json(result.rows[0] ?? null);
  } catch (err) {
    console.error("[api/random-problem]", err);
    return NextResponse.json(null, { status: 500 });
  }
}
