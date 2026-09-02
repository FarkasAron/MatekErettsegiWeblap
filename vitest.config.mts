import { resolve } from "node:path";
import { defineConfig } from "vitest/config";

/**
 * Unit-test config. Mirrors the `@/*` path alias from tsconfig.json so tests
 * import modules the same way the app does. Node environment only — these are
 * pure-logic tests with no DOM.
 */
export default defineConfig({
  resolve: {
    alias: { "@": resolve(import.meta.dirname, "src") },
  },
  test: {
    environment: "node",
    include: ["src/**/*.test.ts"],
  },
});
