/** @type {import('next').NextConfig} */
const isDev = process.env.NODE_ENV === "development";

const nextConfig = {
  images: {
    remotePatterns: [],
  },

  async headers() {
    const csp = [
      "default-src 'self'",
      // unsafe-eval is needed by webpack HMR in development
      `script-src 'self' 'unsafe-inline'${isDev ? " 'unsafe-eval'" : ""}`,
      "style-src 'self' 'unsafe-inline'",
      "img-src 'self' blob: data:",
      "font-src 'self'",
      // ws://localhost:* allows the Next.js dev server HMR websocket
      `connect-src 'self'${isDev ? " ws://localhost:* http://localhost:*" : ""}`,
      "frame-src 'none'",
      "object-src 'none'",
    ].join("; ");

    return [
      {
        source: "/(.*)",
        headers: [
          { key: "Content-Security-Policy",   value: csp },
          { key: "X-Frame-Options",            value: "DENY" },
          { key: "X-Content-Type-Options",     value: "nosniff" },
          { key: "Referrer-Policy",            value: "strict-origin-when-cross-origin" },
          { key: "Permissions-Policy",         value: "camera=(), microphone=(), geolocation=()" },
        ],
      },
    ];
  },
};

export default nextConfig;
