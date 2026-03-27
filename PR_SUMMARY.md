Short PR summary — Performance, fonts, content, and CLS fixes

- Self-hosted subsetted Inter fonts (400/600/700 woff2) and added `@font-face` + `preload`.
- Replaced Tailwind Play CDN with a compiled `styles.css` (local Tailwind build).
- Fixed Cumulative Layout Shift (CLS) by ensuring font-display and layout stability.
- Added small content updates: replaced placeholders, added Philosophy section and `about.html`.
- UI: added a restrained `.neon-interactive` accent applied to nav and primary CTAs.

Key Lighthouse (local):
- Performance score: 100
- FCP: 0.92s
- LCP: 1.06s
- TBT: 50ms
- CLS: 0
- Total transfer size: ~36 KiB (styles, fonts, favicon)

Notes / next steps:
- Inline critical above-the-fold CSS (recommended) to reduce render-blocking.
- Configure caching / Brotli on hosting (Cloudflare or Pages) and add a CI step to build assets.
- Investigate Cloudflare certificate/DNS if you plan to enable Cloudflare in front of GitHub Pages.

This PR contains no behavioral JS changes — only build/assets and content updates.
