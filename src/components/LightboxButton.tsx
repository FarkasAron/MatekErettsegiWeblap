import type { ComponentProps } from "react";

type Variant = "default" | "primary" | "active";

/**
 * Visual variants for the fullscreen-lightbox action buttons.
 *
 * `default` is solid near-black on purpose: the buttons sit on the dimmed
 * backdrop but a light problem image often bleeds through right behind them, and
 * a translucent-white button then washes out. `primary` is the one emphasised
 * action per lightbox; `active` marks a toggled-on state (in cart, solution
 * shown).
 */
const VARIANTS: Record<Variant, string> = {
  default: "bg-black/70 text-white ring-white/25 hover:bg-black/85",
  primary: "bg-navy-600 text-white ring-navy-500/60 hover:bg-navy-700",
  active:  "bg-navy-600/40 text-navy-100 ring-navy-400/50 hover:bg-navy-600/55",
};

/**
 * Action button for the fullscreen image lightboxes (problem zoom, random
 * problem). Shared so the chrome stays identical across every lightbox.
 */
export default function LightboxButton({
  variant = "default",
  className = "",
  ...props
}: ComponentProps<"button"> & { variant?: Variant }) {
  return (
    <button
      {...props}
      className={`flex items-center gap-1.5 px-4 py-2 rounded-xl text-sm font-semibold
        ring-1 backdrop-blur-sm transition-colors
        disabled:opacity-50 disabled:cursor-not-allowed
        ${VARIANTS[variant]} ${className}`}
    />
  );
}
