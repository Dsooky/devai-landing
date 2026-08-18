# Dev AI · SDAIA landing page

Landing page for **Dev AI**, an internal governed-AI developer platform for the
Saudi Data & AI Authority (SDAIA).

Static site. No build step, no dependencies. `index.html` is the whole page.

## Files

| File | Purpose |
| --- | --- |
| `index.html` | The live page. DGA-compliant, bilingual, animated. |
| `wireframe.html` | Low-fidelity structure and copy reference, with rationale notes. |
| `index-monochrome.html` | Earlier monochrome concept, kept for reference. |
| `img/` | Placeholder photography. See the licence note below. |

## Design system

Built on the DGA **Platforms Code** design system. Token values were taken from
the published DGA component registry rather than chosen by hand:

| Token | Light | Dark |
| --- | --- | --- |
| Primary | `#1b8354` | `#54c08a` |
| Body | `#f9fafb` | `#111927` |
| Card | `#ffffff` | `#1f2a37` |
| Border | `#e5e7eb` | `#384250` |

Typeface is **IBM Plex Sans Arabic**, the DGA-mandated family, with IBM Plex Mono
used only for timestamps and stage labels. Radius scale is 4 / 8 / 16 / 24 / full.

## Accessibility

- WCAG 2.1 AA contrast, measured across all key pairs (lowest 4.98:1)
- Full Arabic and RTL support: `dir` flips and the layout mirrors via logical properties
- Headings split **per word, never per character**, so Arabic cursive joining survives
- `prefers-reduced-motion` honoured, plus a persistent "Pause motion" control (WCAG 2.2.2)
- Skip link, semantic landmarks, visible focus rings, `aria-expanded` on all toggles

## Motion

GSAP 3 with ScrollTrigger, loaded from CDN. Includes a pinned horizontal track,
sticky stacking cards, word-by-word blur reveals, clip-path media wipes, parallax,
counters, and edge-faded tickers. All horizontal motion is direction-aware and the
timeline rebuilds when the language switches.

## Platforms Code guidelines

Checked against the DGA Platforms Code "Guidelines" deck (14 rules). Implemented:

| # | Rule | Status |
| --- | --- | --- |
| 2 | Second nav header (date, time, city, accessibility tools) | Done |
| 7 | Feedback section, "Was this page useful?" with reason panel | Done, needs an endpoint |
| 8 | Footer: contact, accessibility tools, social, sitemap, RSS, rights, maintainer, both last-modified dates, Vision 2030 | Done, dates are static |
| 12 | Digital stamp with DGA disclosure panel | Done, **licence number required** |
| 13 | Ehsan element | Not applicable, optional and tied to Founding Day 2026 / Ramadan |

Deliberately not applied: the Founding Day visual identity (sand palette, Founding Day
mark). That is a seasonal campaign skin, wrong for a permanent product page.

## Before this ships

1. **Replace the photography.** Everything in `img/` is placeholder, downloaded from
   Wikimedia Commons. Most files are CC BY-SA 4.0, which requires visible attribution
   and share-alike licensing. Use official SDAIA photography instead.
2. **Write the six FAQ answers.** They are placeholders and this is the highest-leverage
   copy on the page.
3. **Have a native speaker review the Arabic.** All 80 strings are translated, but the wording is a first pass and needs a fluent reviewer.
4. **Replace the console and statistics figures.** Numbers such as `18,430 requests`,
   `64% of budget`, `40%`, `100%`, `12 min` are illustrative, not measured.
5. **Point the CTAs somewhere.** Every button currently links to `#`.
6. **Supply the DGA licence number.** The digital stamp shows "LICENCE NUMBER REQUIRED"
   in red rather than a plausible-looking placeholder, so it cannot be shipped by accident.
7. **Wire the feedback form to a real endpoint.** It currently submits nothing.
8. **Make the last-modified dates dynamic.** Both are hardcoded to the build date.

## Local preview

```bash
python3 -m http.server 4321
```

Then open http://localhost:4321
