# Deployment

Routine "ship new code to production" guide. The one-time Supabase → self-hosted
migration is in `MIGRATION_GUIDE.md` — but parts of that document are now stale
(it assumes `/var/www/veglesine` and the old `VeglesineWeb.git` repo name). This
file reflects the setup actually running.

## Production environment

| | |
|---|---|
| Host | Proxmox **LXC**, hostname `nextjs`, accessed as `root` |
| App directory | `/var/www/nextjs` — a git clone of this repo, tracking `main` |
| Git remote | `git@github.com:FarkasAron/MatekErettsegiWeblap.git` over SSH, using a read-only **deploy key** (`nextjs-lxc-deploy`, `~/.ssh/id_ed25519`) |
| Runtime | Node 20.x · Next.js 14 in production (`next start`) |
| Process manager | **PM2**, process name **`veglesine-web`** (fork mode, runs `npm start`). Daemon under `/root/.pm2`; process list persisted with `pm2 save`. |
| Reverse proxy | nginx on `:80` → app on `:3000`; nginx also serves the ~2500 problem-image PNGs from their own directory (not in this repo) |
| App config | `/var/www/nextjs/.env.local` — **not in git**; holds `DATABASE_URL` etc. Never touched by a deploy. |
| Database | PostgreSQL at `192.168.0.52:5432`, database `matek_erettsegi_web` |

## Deploy the latest `main`

From a shell on the LXC:

```bash
bash /var/www/nextjs/deploy.sh
```

`deploy.sh` (tracked in this repo) runs: `git fetch` → `git pull --ff-only` →
`npm ci` → `rm -rf .next && npm run build` → `pm2 restart veglesine-web` →
`pm2 save` → health-check (`curl localhost:3000`). It rebuilds even when `git`
pulled nothing, so re-running it is safe and is the way to recover a skipped
build.

## Deploy a specific tag

```bash
cd /var/www/nextjs
git fetch origin --tags
git checkout v1.4.0        # or any release tag
npm ci && rm -rf .next && npm run build && pm2 restart veglesine-web && pm2 save
```

## Rollback

```bash
cd /var/www/nextjs
git checkout v1.3.1        # the previous release
npm ci && rm -rf .next && npm run build && pm2 restart veglesine-web && pm2 save
```

## Notes

- **Verify the deploy worked**, not just that the script exited: `pm2 describe
  veglesine-web` (uptime should have reset), `cat .next/BUILD_ID` + its mtime
  (should be now), `curl -fsS -o /dev/null -w '%{http_code}\n' localhost:3000`
  (200), and the homepage "Feladat" stat in a browser.
- `next build` is the memory-heavy step. If it OOMs on the LXC, add swap or run
  `NODE_OPTIONS=--max-old-space-size=1536 npm run build`.
- If `git pull` ever complains that `deploy.sh` "would be overwritten" (the
  server first had it as an untracked file), run `rm /var/www/nextjs/deploy.sh`
  once — it then comes from the repo.
- PM2 boot persistence: `pm2 startup` + `pm2 save` must have been run once so the
  app comes back after an LXC reboot. Check with `systemctl status pm2-root`.
