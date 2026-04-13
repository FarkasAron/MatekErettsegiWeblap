# Migration Guide: Supabase Cloud → Self-hosted School Server

Full step-by-step migration of the entire stack (PostgreSQL database, problem
images, and Next.js frontend) from Supabase to a self-hosted Linux server.

**Assumed server OS:** Ubuntu 22.04 LTS (most common school server setup)
**Assumed domain:** `feladatbank.boronkay.hu` — replace every occurrence with
the real domain or IP address of the school server.

---

## What lives where after migration

| Component | Currently | After migration |
|---|---|---|
| Next.js frontend | Your dev machine | School server (port 3000, behind nginx) |
| PostgreSQL database | Supabase cloud | School server |
| Problem images (PNGs) | Supabase Storage | School server (`/var/www/veglesine-images/`) |
| Python pipeline scripts | Your dev machine | Your dev machine (no change) |
| Review app (Streamlit) | Your dev machine | Your dev machine (no change) |

---

## Overview of steps

1. Connect to the school server
2. Update the server and install dependencies
3. Install and configure PostgreSQL
4. Export data from Supabase
5. Import data into PostgreSQL
6. Download all problem images from Supabase Storage
7. Upload images to the school server
8. Update image URLs in the database
9. Update the Next.js codebase (replace Supabase client with direct SQL)
10. Configure environment variables
11. Build the Next.js app
12. Configure nginx
13. Set up HTTPS with Let's Encrypt
14. Start the app with PM2
15. Configure the firewall
16. Update the Python pipeline scripts
17. Verify everything works
18. Final cleanup

---

## Step 1 — Connect to the school server

From your Windows machine, open PowerShell or Windows Terminal:

```bash
ssh username@feladatbank.boronkay.hu
```

If the server uses a non-standard port (e.g. 2222):
```bash
ssh -p 2222 username@feladatbank.boronkay.hu
```

If connecting for the first time, type `yes` when asked about the host fingerprint.

Once connected, confirm you are on the right machine:
```bash
uname -a
lsb_release -a
whoami
```

You should see Ubuntu 22.04 and your username. All commands from Steps 2–16
run **on the school server** unless stated otherwise.

---

## Step 2 — Update the server and install dependencies

First, update all existing packages:
```bash
sudo apt update
sudo apt upgrade -y
```

Install essential tools:
```bash
sudo apt install -y curl wget git build-essential ufw
```

### Install Node.js 20 LTS

```bash
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
sudo apt install -y nodejs
```

Verify:
```bash
node --version    # should print v20.x.x
npm --version     # should print 10.x.x
```

### Install PM2 (process manager for Node)

```bash
sudo npm install -g pm2
```

Verify:
```bash
pm2 --version
```

### Install nginx

```bash
sudo apt install -y nginx
```

Verify:
```bash
nginx -v
sudo systemctl status nginx   # should say "active (running)"
```

If nginx is not running, start it:
```bash
sudo systemctl start nginx
sudo systemctl enable nginx
```

---

## Step 3 — Install and configure PostgreSQL

### Install PostgreSQL 16

```bash
sudo apt install -y postgresql postgresql-contrib
```

Verify:
```bash
psql --version         # should print psql (PostgreSQL) 16.x
sudo systemctl status postgresql   # should say "active (running)"
```

If not running:
```bash
sudo systemctl start postgresql
sudo systemctl enable postgresql
```

### Create the database and user

Switch to the postgres system user:
```bash
sudo -u postgres psql
```

You are now inside the PostgreSQL interactive shell. Run these commands exactly:

```sql
CREATE DATABASE veglesine;
CREATE USER veglesine_user WITH ENCRYPTED PASSWORD 'replace_with_strong_password';
GRANT ALL PRIVILEGES ON DATABASE veglesine TO veglesine_user;
\c veglesine
GRANT ALL ON SCHEMA public TO veglesine_user;
\q
```

> Choose a real strong password and save it — you will need it several times.

Verify the database exists:
```bash
sudo -u postgres psql -c "\l"
```
You should see `veglesine` in the list.

### Allow local password connections

Open the PostgreSQL authentication config:
```bash
sudo nano /etc/postgresql/16/main/pg_hba.conf
```

Find the line that says:
```
local   all             all                                     peer
```

Add a new line **below** it:
```
local   veglesine       veglesine_user                          md5
```

Save with `Ctrl+O`, `Enter`, then exit with `Ctrl+X`.

Restart PostgreSQL to apply:
```bash
sudo systemctl restart postgresql
```

Test the connection:
```bash
psql -U veglesine_user -d veglesine -c "SELECT version();"
```
It should ask for a password and then print the PostgreSQL version.

---

## Step 4 — Export data from Supabase

**Run the following commands on your own Windows machine** (not the server).

### Install pg_dump (PostgreSQL client tools)

If you don't have `pg_dump` installed, download PostgreSQL for Windows from
the official site. During installation, only the "Command Line Tools" component
is needed (you do not need to install a local PostgreSQL server).

Verify it's available (in PowerShell or Git Bash):
```bash
pg_dump --version
```

### Find your Supabase connection string

In the Supabase dashboard:
1. Go to your project → **Project Settings** → **Database**
2. Scroll to **Connection string** → choose **URI** format
3. Copy it — it looks like:
   `postgresql://postgres:[YOUR-PASSWORD]@db.[PROJECT-REF].supabase.co:5432/postgres`

### Run the export

```bash
pg_dump "postgresql://postgres:[YOUR-PASSWORD]@db.[PROJECT-REF].supabase.co:5432/postgres" \
  --no-owner \
  --no-privileges \
  --table=problems \
  --file=problems_export.sql
```

This creates `problems_export.sql` in your current folder.

Verify the file was created and is not empty:
```bash
# On Windows PowerShell:
Get-Item problems_export.sql | Select-Object Length
# Should be several megabytes — not 0 bytes
```

---

## Step 5 — Import data into PostgreSQL on the server

### Copy the export file to the server

From your Windows machine (in PowerShell):
```bash
scp problems_export.sql username@feladatbank.boronkay.hu:/tmp/problems_export.sql
```

### Import on the server

Back on the school server:
```bash
psql -U veglesine_user -d veglesine -f /tmp/problems_export.sql
```

Verify the import:
```bash
psql -U veglesine_user -d veglesine -c "SELECT COUNT(*) FROM problems;"
psql -U veglesine_user -d veglesine -c "SELECT COUNT(*) FROM problems WHERE human_reviewed = true;"
```

The first number should be around 2500. The second should match what the website
currently shows.

Clean up the temp file:
```bash
rm /tmp/problems_export.sql
```

---

## Step 6 — Download all problem images from Supabase Storage

**Run on your own Windows machine.**

Save the following as `scripts/migrate_images.py` in the project folder:

```python
"""
migrate_images.py
-----------------
Downloads all problem images from Supabase Storage to a local folder.
Run once before migration. Creates: images_export/ next to this script.
"""
import os
import requests
from pathlib import Path
from supabase import create_client
from dotenv import load_dotenv

SCRIPTS_DIR = Path(__file__).parent
ENV_PATH    = SCRIPTS_DIR.parent / ".env.local"
OUTPUT_DIR  = SCRIPTS_DIR.parent / "images_export"

load_dotenv(ENV_PATH)
OUTPUT_DIR.mkdir(exist_ok=True)

supabase = create_client(
    os.environ["NEXT_PUBLIC_SUPABASE_URL"],
    os.environ["SUPABASE_SERVICE_ROLE_KEY"],
)

# Paginate through all problems with an image URL
print("Fetching problem list...")
all_rows = []
page_size = 1000
offset = 0
while True:
    result = (
        supabase.table("problems")
        .select("id, problem_image_url")
        .not_.is_("problem_image_url", "null")
        .range(offset, offset + page_size - 1)
        .execute()
    )
    batch = result.data or []
    all_rows.extend(batch)
    if len(batch) < page_size:
        break
    offset += page_size

print(f"Found {len(all_rows)} images to download.")

failed = []
for i, row in enumerate(all_rows):
    url = row["problem_image_url"]
    pid = row["id"]
    dest = OUTPUT_DIR / f"{pid}.png"

    if dest.exists():
        continue  # already downloaded, skip

    try:
        r = requests.get(url, timeout=30)
        r.raise_for_status()
        dest.write_bytes(r.content)
    except Exception as e:
        print(f"  FAILED {pid}: {e}")
        failed.append(pid)

    if (i + 1) % 100 == 0:
        print(f"  {i+1}/{len(all_rows)} done...")

print(f"\nFinished. {len(all_rows) - len(failed)} downloaded, {len(failed)} failed.")
if failed:
    print("Failed IDs:", failed)
print(f"Images saved to: {OUTPUT_DIR}")
```

Run it:
```bash
python scripts/migrate_images.py
```

This may take 10–20 minutes depending on your connection. When finished, the
`images_export/` folder in the project root will contain one `.png` per problem,
named by UUID (e.g. `17136b70-dff1-4043-9d10-3d8690d6ae7f.png`).

Verify the count:
```bash
# PowerShell:
(Get-ChildItem images_export -Filter "*.png").Count
# Should match the number printed by the script
```

---

## Step 7 — Upload images to the school server

Create the destination folder on the server first:
```bash
# On the school server:
sudo mkdir -p /var/www/veglesine-images
sudo chown $USER:$USER /var/www/veglesine-images
```

Then from your Windows machine, upload the folder (this may take a while):
```bash
scp -r images_export/ username@feladatbank.boronkay.hu:/var/www/veglesine-images/
```

After the upload finishes, fix the ownership so nginx can serve the files:
```bash
# On the school server:
sudo chown -R www-data:www-data /var/www/veglesine-images
sudo chmod -R 755 /var/www/veglesine-images
```

Verify a random image is accessible:
```bash
ls /var/www/veglesine-images/ | head -5
# Should list UUID-named .png files
```

---

## Step 8 — Update image URLs in the database

The `problem_image_url` column currently holds Supabase Storage URLs like:
`https://xyz.supabase.co/storage/v1/object/public/problems/abc.png`

Update them all to point to your server:
```bash
psql -U veglesine_user -d veglesine
```

Inside psql:
```sql
UPDATE problems
SET problem_image_url = CONCAT(
    'https://feladatbank.boronkay.hu/images/',
    id,
    '.png'
)
WHERE problem_image_url IS NOT NULL;
```

Verify a few rows:
```sql
SELECT id, problem_image_url FROM problems LIMIT 3;
\q
```

Each URL should now start with `https://feladatbank.boronkay.hu/images/`.

---

## Step 9 — Update the Next.js codebase

All of the following edits are made **on your development machine** in VS Code.

### 9a. Install `postgres` npm package, remove Supabase

```bash
npm install postgres
npm uninstall @supabase/supabase-js
```

### 9b. Replace `src/lib/supabase.ts` entirely

Delete the file contents and replace with:

```typescript
import postgres from "postgres";

const sql = postgres(process.env.DATABASE_URL!, {
  ssl: false,
  max: 10,
  idle_timeout: 20,
  connect_timeout: 10,
});

export default sql;

export type Problem = {
  id: string;
  year: number;
  exam_type: "kozep" | "emelt";
  exam_session: string;
  exam_part: string | null;
  problem_number: number;
  sub_part: string | null;
  problem_image_url: string | null;
  max_points: number | null;
  topic_tags: string[];
  ocr_used: boolean;
};

export const TOPIC_LABELS: Record<string, string> = {
  halmazok:               "Halmazok",
  logika:                 "Matematikai logika",
  kombinatorika:          "Kombinatorika",
  grafelmelet:            "Gráfelmélet",
  valoszinuseg:           "Valószínűség-számítás",
  statisztika:            "Statisztika",
  "szamok-muveletek":     "Számok és műveletek",
  szamrendszerek:         "Számrendszerek",
  szamelmelet:            "Számelmélet",
  algebra:                "Algebra",
  egyenletek:             "Egyenletek és egyenlőtlenségek",
  fuggvenyek:             "Függvények és grafikonok",
  exponencialis:          "Exponenciális és logaritmikus függvények",
  trigonometria:          "Trigonometria",
  sorozatok:              "Sorozatok",
  "penzugyi-matematika":  "Pénzügyi matematika",
  "geometria-sik":        "Síkgeometria",
  "geometria-ter":        "Térgeometria",
  "koordinata-geometria": "Koordinátageometria",
  vektorok:               "Vektorok",
  transzformacio:         "Geometriai transzformációk",
  hatarertek:             "Határérték és folytonosság",
  differencialszamitas:   "Differenciálszámítás",
  integralszamitas:       "Integrálszámítás",
  bizonyitasok:           "Bizonyítások és elmélet",
  szovegfeladas:          "Szöveges feladat",
};
```

> Note: the import path in every page changes from `@/lib/supabase` to `@/lib/supabase`
> only if you keep the filename. Since we are replacing the file in place the import
> paths in all other files stay the same — no search-and-replace needed.

### 9c. Replace `src/app/page.tsx` data fetching

Find this block:
```typescript
import { supabase, TOPIC_LABELS } from "@/lib/supabase";
```
Replace with:
```typescript
import sql, { TOPIC_LABELS } from "@/lib/supabase";
```

Replace the three Supabase calls inside `HomePage`:
```typescript
// BEFORE
const [{ count: problemCount }, { data: yearData }, { data: sessionData }] = await Promise.all([
  supabase.from("problems").select("*", { count: "exact", head: true }).eq("human_reviewed", true),
  supabase.from("problems").select("year").eq("human_reviewed", true),
  supabase.from("problems").select("exam_session, year, exam_type").eq("human_reviewed", true),
]);

// AFTER
const [[{ count }], yearData, sessionData] = await Promise.all([
  sql`SELECT COUNT(*)::int AS count FROM problems WHERE human_reviewed = true`,
  sql`SELECT DISTINCT year FROM problems WHERE human_reviewed = true`,
  sql`SELECT DISTINCT year, exam_type, exam_session FROM problems WHERE human_reviewed = true`,
]);
const problemCount = count;
```

### 9d. Replace `src/app/feladatok/page.tsx` queries

Replace the import:
```typescript
// BEFORE
import { supabase, TOPIC_LABELS, type Problem } from "@/lib/supabase";
// AFTER
import sql, { TOPIC_LABELS, type Problem } from "@/lib/supabase";
```

Replace the entire `getProblems` function:
```typescript
async function getProblems(filters: Props["searchParams"]): Promise<{ problems: Problem[]; total: number }> {
  const page   = Math.max(1, parseInt(filters.oldal ?? "1"));
  const offset = (page - 1) * PAGE_SIZE;

  const szint  = filters.szint  ?? null;
  const tema   = filters.tema   ?? null;
  const ev     = filters.ev     ? parseInt(filters.ev) : null;
  const rovid  = filters.tipus === "rovid";
  const hosszu = filters.tipus === "hosszu";

  const [problems, [{ count }]] = await Promise.all([
    sql<Problem[]>`
      SELECT id, year, exam_type, exam_session, exam_part,
             problem_number, sub_part, problem_image_url,
             max_points, topic_tags, ocr_used
      FROM problems
      WHERE human_reviewed = true
        AND (${szint}::text  IS NULL OR exam_type = ${szint})
        AND (${tema}::text   IS NULL OR topic_tags @> ARRAY[${tema}])
        AND (${ev}::int      IS NULL OR year = ${ev})
        AND (NOT ${rovid}    OR problem_number <= 4)
        AND (NOT ${hosszu}   OR problem_number >= 5)
      ORDER BY year DESC, exam_session, problem_number, sub_part
      LIMIT ${PAGE_SIZE} OFFSET ${offset}
    `,
    sql`
      SELECT COUNT(*)::int AS count
      FROM problems
      WHERE human_reviewed = true
        AND (${szint}::text  IS NULL OR exam_type = ${szint})
        AND (${tema}::text   IS NULL OR topic_tags @> ARRAY[${tema}])
        AND (${ev}::int      IS NULL OR year = ${ev})
        AND (NOT ${rovid}    OR problem_number <= 4)
        AND (NOT ${hosszu}   OR problem_number >= 5)
    `,
  ]);

  return { problems, total: count };
}
```

### 9e. Replace `src/app/statisztika/page.tsx` queries

Replace the import:
```typescript
import sql, { TOPIC_LABELS } from "@/lib/supabase";
```

Replace `getTopicCounts`:
```typescript
async function getTopicCounts() {
  const rows = await sql<{ topic_tags: string[] }[]>`
    SELECT topic_tags FROM problems WHERE human_reviewed = true
  `;
  const counts: Record<string, number> = {};
  for (const row of rows) {
    for (const tag of row.topic_tags ?? []) {
      counts[tag] = (counts[tag] || 0) + 1;
    }
  }
  return Object.entries(TOPIC_LABELS)
    .map(([slug, label]) => ({ slug, label, count: counts[slug] ?? 0 }))
    .sort((a, b) => b.count - a.count);
}
```

Replace `getSummary`:
```typescript
async function getSummary() {
  const [{ total, kozep, emelt }] = await sql<[{ total: number; kozep: number; emelt: number }]>`
    SELECT
      COUNT(*)::int                                          AS total,
      COUNT(*) FILTER (WHERE exam_type = 'kozep')::int      AS kozep,
      COUNT(*) FILTER (WHERE exam_type = 'emelt')::int      AS emelt
    FROM problems
    WHERE human_reviewed = true
  `;
  return { total, kozep, emelt };
}
```

### 9f. Replace `src/app/feladatsor/page.tsx` query

Replace the import and the data fetch. First read the current file to see
the exact query, then replace:
```typescript
import sql from "@/lib/supabase";

// Replace the supabase query with:
const sessions = await sql`
  SELECT DISTINCT year, exam_type, exam_session, exam_part
  FROM problems
  WHERE human_reviewed = true
  ORDER BY year DESC, exam_session, exam_part
`;
```

### 9g. Replace `src/app/feladatsor/[slug]/page.tsx` query

Replace the import and the `getProblems` function:
```typescript
import sql, { type Problem } from "@/lib/supabase";

async function getProblems(slug: string): Promise<Problem[]> {
  const { year, exam_type, exam_session, exam_part } = parseSlug(slug);

  return sql<Problem[]>`
    SELECT id, year, exam_type, exam_session, exam_part,
           problem_number, sub_part, problem_image_url,
           max_points, topic_tags, ocr_used
    FROM problems
    WHERE human_reviewed = true
      AND year         = ${year}
      AND exam_type    = ${exam_type}
      AND exam_session = ${exam_session}
      AND exam_part    IS NOT DISTINCT FROM ${exam_part}
    ORDER BY problem_number, sub_part
  `;
}
```

### 9h. Update `next.config.mjs`

Replace the image domain:
```javascript
const nextConfig = {
  images: {
    remotePatterns: [
      {
        protocol: "https",
        hostname: "feladatbank.boronkay.hu",
        pathname: "/images/**",
      },
    ],
  },
};
export default nextConfig;
```

---

## Step 10 — Configure environment variables on the server

On the school server, create the `.env.local` for the app. The app will live
at `/var/www/veglesine` — create that directory first:

```bash
sudo mkdir -p /var/www/veglesine
sudo chown $USER:$USER /var/www/veglesine
```

Create the environment file:
```bash
nano /var/www/veglesine/.env.local
```

Paste exactly this (replace the password):
```
DATABASE_URL=postgresql://veglesine_user:replace_with_strong_password@localhost:5432/veglesine
```

Save with `Ctrl+O`, `Enter`, `Ctrl+X`.

Set strict permissions so only the current user can read it:
```bash
chmod 600 /var/www/veglesine/.env.local
```

---

## Step 11 — Deploy the app to the server

On the school server, clone the repository:
```bash
cd /var/www/veglesine
git clone https://github.com/FarkasAron/VeglesineWeb.git .
```

If the repo is private, you will need to authenticate. Use a GitHub Personal
Access Token (PAT) — in GitHub → Settings → Developer Settings → Personal
Access Tokens → Tokens (classic) → Generate new token (with `repo` scope).
Then:
```bash
git clone https://[YOUR_GITHUB_USERNAME]:[YOUR_PAT]@github.com/FarkasAron/VeglesineWeb.git .
```

Install dependencies:
```bash
npm install
```

Build the production app:
```bash
npm run build
```

This may take a minute or two. If it succeeds you will see:
```
✓ Compiled successfully
```

If you see TypeScript errors, fix them on your dev machine, push the fix, then
`git pull` on the server and `npm run build` again.

---

## Step 12 — Configure nginx

Create the nginx site configuration:
```bash
sudo nano /etc/nginx/sites-available/veglesine
```

Paste this entire block (replace `feladatbank.boronkay.hu` with your domain):
```nginx
server {
    listen 80;
    listen [::]:80;
    server_name feladatbank.boronkay.hu;

    # Serve problem images directly from disk — fast, no Node involved
    location /images/ {
        alias /var/www/veglesine-images/;
        expires 365d;
        add_header Cache-Control "public, immutable";
        add_header X-Content-Type-Options nosniff;
        try_files $uri =404;
    }

    # Proxy everything else to the Next.js app
    location / {
        proxy_pass         http://127.0.0.1:3000;
        proxy_http_version 1.1;
        proxy_set_header   Upgrade $http_upgrade;
        proxy_set_header   Connection 'upgrade';
        proxy_set_header   Host $host;
        proxy_set_header   X-Real-IP $remote_addr;
        proxy_set_header   X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header   X-Forwarded-Proto $scheme;
        proxy_cache_bypass $http_upgrade;
        proxy_read_timeout 60s;
    }
}
```

Enable the site and disable the nginx default:
```bash
sudo ln -s /etc/nginx/sites-available/veglesine /etc/nginx/sites-enabled/
sudo rm -f /etc/nginx/sites-enabled/default
```

Test the config for syntax errors:
```bash
sudo nginx -t
```

You should see: `nginx: configuration file /etc/nginx/nginx.conf test is successful`

Reload nginx:
```bash
sudo systemctl reload nginx
```

---

## Step 13 — Set up HTTPS with Let's Encrypt

HTTPS is required — browsers will warn students about "Not secure" without it.

Install Certbot:
```bash
sudo apt install -y certbot python3-certbot-nginx
```

Request a certificate (replace with your real domain):
```bash
sudo certbot --nginx -d feladatbank.boronkay.hu
```

Certbot will ask for:
- Your email address (for expiry notices)
- Agreement to Terms of Service → type `Y`
- Whether to share email with EFF → your choice

If successful, Certbot automatically updates your nginx config to use HTTPS
and sets up an auto-renewal cron job.

Test that auto-renewal works:
```bash
sudo certbot renew --dry-run
```

You should see: `Congratulations, all simulated renewals succeeded.`

---

## Step 14 — Start the app with PM2

Start the Next.js app:
```bash
cd /var/www/veglesine
pm2 start "npm run start" --name veglesine
```

Check it is running:
```bash
pm2 status
pm2 logs veglesine --lines 20
```

You should see the Next.js server started message without errors.

Save the PM2 process list so it survives reboots:
```bash
pm2 save
```

Generate and run the startup script so PM2 itself starts on boot:
```bash
pm2 startup
```

This prints a command starting with `sudo env PATH=...`. **Copy that entire
command and run it.** It looks something like:
```bash
sudo env PATH=$PATH:/usr/bin /usr/lib/node_modules/pm2/bin/pm2 startup systemd -u username --hp /home/username
```

Verify the service is registered:
```bash
sudo systemctl status pm2-$USER
```

---

## Step 15 — Configure the firewall

Allow only the necessary ports and block everything else:

```bash
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow ssh          # port 22 — keep this or you will lock yourself out
sudo ufw allow 80/tcp       # HTTP
sudo ufw allow 443/tcp      # HTTPS
sudo ufw enable
```

When asked "Command may disrupt existing ssh connections. Proceed with
operation (y|n)?", type `y`.

Check the rules:
```bash
sudo ufw status verbose
```

> **Important:** Do NOT open port 3000 (Next.js) or 5432 (PostgreSQL) to the
> public — they should only be accessible locally. nginx acts as the public
> gateway on 80/443.

---

## Step 16 — Update the Python pipeline scripts

The pipeline scripts (`06_import_to_db.py`, `08_claude_categorize.py`) currently
use `supabase-py` to write to the database. After migration they connect directly
to PostgreSQL.

**Run this on your development machine.**

Install the PostgreSQL Python driver:
```bash
pip install psycopg2-binary
```

Since the school server's PostgreSQL only accepts local connections (port 5432
is firewalled), open an SSH tunnel whenever you need to run the scripts:

```bash
# Open the tunnel in a separate terminal — keep it running while using scripts
ssh -L 5432:localhost:5432 username@feladatbank.boronkay.hu -N
```

This makes the school server's PostgreSQL accessible at `localhost:5432` on
your machine.

Update `.env.local` on your dev machine to add:
```
DATABASE_URL=postgresql://veglesine_user:replace_with_strong_password@localhost:5432/veglesine
```

In `scripts/08_claude_categorize.py`, replace `get_supabase()` with:

```python
def get_db_conn():
    import psycopg2
    return psycopg2.connect(os.environ["DATABASE_URL"])
```

And replace every `supabase.table("problems")...` call with direct SQL.

For example, the main update call:
```python
# BEFORE
supabase.table("problems").update({
    "topic_tags": tags,
    "notes":      f"[AI:{CLAUDE_MODEL}]",
    "updated_at": datetime.now(timezone.utc).isoformat(),
}).eq("id", pid).execute()

# AFTER
conn = get_db_conn()
cur = conn.cursor()
cur.execute(
    """UPDATE problems
       SET topic_tags = %s, notes = %s, updated_at = NOW(), human_reviewed = %s
       WHERE id = %s""",
    (tags, f"[AI:{CLAUDE_MODEL}]", mark_reviewed, pid)
)
conn.commit()
cur.close()
conn.close()
```

For the fetch query:
```python
# BEFORE
result = supabase.table("problems") \
    .select("id,exam_type,year,max_points,problem_image_url,topic_tags") \
    .eq("human_reviewed", False) \
    .range(offset, offset + page_size - 1) \
    .execute()
batch = result.data or []

# AFTER
conn = get_db_conn()
cur = conn.cursor(cursor_factory=psycopg2.extras.RealDictCursor)
cur.execute(
    """SELECT id, exam_type, year, max_points, problem_image_url, topic_tags
       FROM problems
       WHERE human_reviewed = false
       LIMIT %s OFFSET %s""",
    (page_size, offset)
)
batch = cur.fetchall()
cur.close()
conn.close()
```

---

## Step 17 — Verify everything works

Open a browser and visit `https://feladatbank.boronkay.hu`.

Check each of the following:

- [ ] Homepage loads with correct problem count in the stats section
- [ ] `/feladatok` shows problems with images loading from your server (not Supabase)
- [ ] Clicking a topic filter returns results
- [ ] Pagination works (Következő → button appears when there are more than 50 problems)
- [ ] Clicking a problem image opens the lightbox
- [ ] `/feladatsor` shows exam sessions
- [ ] `/statisztika` shows correct counts
- [ ] Dark mode toggle works
- [ ] HTTPS lock icon is green in the browser address bar

To view live app logs:
```bash
pm2 logs veglesine --lines 50
```

To view nginx access/error logs:
```bash
sudo tail -f /var/log/nginx/access.log
sudo tail -f /var/log/nginx/error.log
```

---

## Step 18 — Final cleanup

After verifying everything works on the school server:

1. **Delete the Supabase project** (optional — keeps free tier slot)
   In Supabase dashboard → Settings → General → Delete project.

2. **Delete local migration files** — they are large and no longer needed:
   ```bash
   # On your dev machine:
   rm -rf images_export/
   rm problems_export.sql
   ```

3. **Add `images_export/` to `.gitignore`** to make sure it is never committed:
   Add this line to `.gitignore`:
   ```
   images_export/
   ```

4. **Remove Supabase env variables from `.env.local`** on your dev machine —
   only `DATABASE_URL` and `ANTHROPIC_API_KEY` are needed going forward.

---

## Troubleshooting

### "Cannot connect to database"
- Check `DATABASE_URL` in `.env.local` on the server
- Check PostgreSQL is running: `sudo systemctl status postgresql`
- Check the user/password: `psql -U veglesine_user -d veglesine`

### Images not loading (404)
- Check the file exists: `ls /var/www/veglesine-images/[uuid].png`
- Check nginx can read it: `sudo -u www-data ls /var/www/veglesine-images/ | head`
- Check nginx config has the correct `alias` path

### App not starting (PM2 error)
- Check logs: `pm2 logs veglesine`
- Rebuild: `cd /var/www/veglesine && npm run build`
- Check `.env.local` exists: `ls -la /var/www/veglesine/.env.local`

### Certbot fails ("domain not pointing to this server")
- The domain's DNS A record must point to the school server's IP before
  running Certbot. Ask the school IT department to set this up first.
- Verify DNS: `nslookup feladatbank.boronkay.hu` — should return the server IP.

### After `git pull` on the server, changes are not visible
- Always rebuild after pulling: `npm run build && pm2 restart veglesine`

### Port 3000 is already in use
```bash
sudo lsof -i :3000
# Find the PID and kill it, or use a different port:
PORT=3001 npm run start
# Update nginx proxy_pass to http://127.0.0.1:3001
```
