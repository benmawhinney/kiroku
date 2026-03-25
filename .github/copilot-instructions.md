# Copilot Instructions for Kiroku

## Project Overview

Kiroku is a static "coming soon / register interest" landing page hosted on GitHub Pages. It presents a minimal black-and-white UI that lets visitors enter their email address to register interest in the product. Submissions are sent to a [SheetMonkey](https://sheetmonkey.io) endpoint that stores them in a Google Sheet.

## Repository Structure

```
kiroku/
├── index.html          # The entire frontend — one HTML file
├── CNAME               # Custom domain for GitHub Pages
└── .github/
    ├── copilot-instructions.md
    └── workflows/
        └── validate-html.yml   # CI: lints HTML with htmlhint
```

## Tech Stack

- **HTML5** — single-file static site, no build step required
- **Tailwind CSS** — loaded from CDN (`https://cdn.tailwindcss.com`); no local installation
- **Lato font** — loaded from cdnjs
- **Vanilla JavaScript** — inline `<script>` in `index.html`; no frameworks or bundlers
- **SheetMonkey** — third-party form-to-spreadsheet service used for email capture

## Development Guidelines

### Making changes

- All UI changes are made directly in `index.html`.
- Keep the design minimal: dark background (`bg-black`), light text (`text-zinc-50`), thin borders.
- Do not introduce a build pipeline, package manager, or Node dependencies unless the issue explicitly requires it.
- Prefer CDN-loaded libraries over locally installed ones to keep the repo dependency-free.

### HTML quality

- HTML is validated on every push and pull request by the `validate-html.yml` workflow using [htmlhint](https://htmlhint.com/).
- Before opening a PR, you can run the linter locally with:
  ```bash
  npx htmlhint index.html
  ```
- Fix any htmlhint errors before pushing.

### Testing

There is no automated JavaScript or visual test suite. After making changes:

1. Open `index.html` directly in a browser (no server needed for basic checks).
2. Verify the "Register Interest" button toggles the email form.
3. Verify the form submits correctly and the thank-you message appears.
4. Check that the page renders correctly at common viewport widths (mobile and desktop).

### Deployment

The site is deployed automatically to GitHub Pages from the `main` branch. Merging a PR to `main` triggers a GitHub Pages rebuild; no manual deployment step is needed.
