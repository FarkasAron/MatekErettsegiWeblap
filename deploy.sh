#!/usr/bin/env bash
# Production deploy for the Matematika Feladatbank web app.
# Run on the LXC (`/var/www/nextjs`): bash deploy.sh
# See DEPLOYMENT.md for the environment details and rollback steps.
set -euo pipefail
cd /var/www/nextjs

PREV=$(git rev-parse HEAD)
echo "▶ jelenlegi: $(git rev-parse --short HEAD)"
git fetch origin
git pull --ff-only
NEW=$(git rev-parse HEAD)

if [ "$PREV" != "$NEW" ]; then
  echo "▶ új commitok:"; git log --oneline "$PREV..$NEW"
else
  echo "▶ nincs új commit — az újraépítés így is lefut."
fi

echo "▶ npm ci…";        npm ci
echo "▶ tiszta build…";  rm -rf .next && npm run build
echo "▶ pm2 restart…";   pm2 restart veglesine-web --update-env && pm2 save

echo "▶ health check…"
sleep 3
curl -fsS -o /dev/null -w "HTTP %{http_code}\n" http://localhost:3000

echo "✅ kész: $(git rev-parse --short HEAD)"
if [ "$PREV" != "$NEW" ]; then
  echo "   rollback: git checkout $PREV && npm ci && rm -rf .next && npm run build && pm2 restart veglesine-web"
fi
