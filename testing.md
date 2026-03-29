# Lighthouse Testing

## Running a local Lighthouse report

The method below is the one that works reliably on this machine. Follow it exactly.

### 1. Start the local server (background)

The server must already be running before Lighthouse launches. Start it as a background job in the same shell session:

```zsh
pids=$(lsof -ti tcp:8000) && if [ -n "$pids" ]; then kill $pids && sleep 0.5; fi
python3 -m http.server 8000 --directory /Users/benmawhinney/Workspace/kiroku/kiroku &
sleep 1
```

This kills anything already on port 8000 before starting fresh.

### 2. Run Lighthouse with nohup

Use `nohup` so the process is not killed when the shell returns. Redirect all output to a log file:

```zsh
nohup npx lighthouse http://localhost:8000 \
  --output=json \
  --output-path=/Users/benmawhinney/Workspace/kiroku/lh-out.json \
  --chrome-flags="--headless --no-sandbox --disable-gpu" \
  > /tmp/lh-stdout.txt 2>&1 &
```

Note the PID printed. The report takes roughly 30–60 seconds to complete.

### 3. Wait and check the output file exists

```zsh
sleep 30 && ls -la /Users/benmawhinney/Workspace/kiroku/lh-out.json
```

If the file is not present yet, wait another 15 seconds and check again.

### 4. Extract scores

```zsh
node -e "
const r = JSON.parse(require('fs').readFileSync('/Users/benmawhinney/Workspace/kiroku/lh-out.json'));
const cats = r.categories;
console.log('Performance:    ', Math.round(cats.performance.score * 100));
console.log('Accessibility:  ', Math.round(cats.accessibility.score * 100));
console.log('Best Practices: ', Math.round(cats['best-practices'].score * 100));
console.log('SEO:            ', Math.round(cats.seo.score * 100));
console.log('');
const audits = r.audits;
const failing = Object.values(audits).filter(a => a.score !== null && a.score < 1 && a.details);
failing.forEach(a => console.log('FAIL:', a.id, '-', a.displayValue || ''));
"
```

### 5. Optionally generate an HTML report

Add `--output=html` and a second `--output-path` to get a viewable report:

```zsh
nohup npx lighthouse http://localhost:8000 \
  --output=json --output=html \
  --output-path=/Users/benmawhinney/Workspace/kiroku/lh-out \
  --chrome-flags="--headless --no-sandbox --disable-gpu" \
  > /tmp/lh-stdout.txt 2>&1 &
```

This produces `lh-out.report.json` and `lh-out.report.html`.

---

## Known non-issues

These diagnostics appear consistently but are **not scored failures** and require no action:

| Audit | Reason not actionable |
|---|---|
| `unminified-css` | Tailwind CDN build; production `styles.css` is already minified |
| `cache-insight` | Python's `http.server` sends no cache headers; GitHub Pages does |
| `document-latency-insight` | Localhost latency artefact; irrelevant in production |

---

## Target scores

All four categories must be **100** before merging to `main`.

| Category | Target |
|---|---|
| Performance | 100 |
| Accessibility | 100 |
| Best Practices | 100 |
| SEO | 100 |
