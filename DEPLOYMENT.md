Deployment checklist — reduce first-request latency

1) Avoid redirects
- Ensure your canonical domain is final (pick either `www.example.com` or apex `example.com`).
- In Cloudflare, use CNAME flattening for the apex to point directly to GitHub Pages or your origin. Avoid page rules that redirect from one variant to another on first load — prefer DNS/CNAME that serves the chosen host directly.
- Ensure all internal links and assets use the final `https://` origin (use absolute or root-relative paths like `/styles.css`) so the browser doesn't follow redirects on first request.

2) Fast server response
- Use a fast origin (GitHub Pages is fine). If you use Cloudflare in front, enable HTTP/2 or HTTP/3 in the SSL/TLS -> Edge Protocols settings.
- Keep the first response small: move only critical inline CSS (if needed) and preload the main stylesheet (we added `rel=preload` for `/styles.css`).
- Avoid blocking backend calls in the critical path (DNS lookups, long origin TLS handshakes). Use Cloudflare’s proxy to reduce TLS handshake cost to the edge.

3) Enable text compression
- In Cloudflare: enable `Brotli` and leave `gzip` on (Cloudflare will compress automatically). This reduces payload size for `text/css`, `text/html`, `application/javascript`, etc.
- If you control origin and want to serve pre-compressed files, you can upload `.br`/`.gz` versions and configure the origin to serve them with the proper `Content-Encoding`. (Not required when using Cloudflare.)

4) Caching and headers
- Set long cache TTLs for static assets (`styles.css`, fonts, images) and use cache-busting via file names if you change assets.
- Use `Cache-Control: public, max-age=31536000, immutable` for fingerprints where possible. Let Cloudflare respect origin caching or set caching rules in Cloudflare.

5) Verify
- Use `curl -I https://yourdomain/` to check there are no 3xx redirects and to inspect `Content-Encoding`, `Cache-Control`, `Server-Timing`, and response-time information.
- Use Lighthouse or WebPageTest to measure first-byte time (TTFB) and overall perf. The first network request should not redirect and should return compressed text.

Notes specific to this repo
- The site now links to the compiled `/styles.css` and preloads it. The page footer version was bumped to v1.0.6 so you can confirm you're seeing the staged build.
- If you're using Cloudflare in front of GitHub Pages, enable Brotli and HTTP/2/3 there — that will give the biggest perf win with no origin changes.

If you want, I can:
- Add a small `curl` script that checks for redirects, compression, and headers for a given domain.
- Help create a Cloudflare Page Rule or DNS/CNAME steps (you'll need to provide access or run steps locally).
