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

## Before this ships

1. **Replace the photography.** Everything in `img/` is placeholder, downloaded from
   Wikimedia Commons. Most files are CC BY-SA 4.0, which requires visible attribution
   and share-alike licensing. Use official SDAIA photography instead.
2. **Write the six FAQ answers.** They are placeholders and this is the highest-leverage
   copy on the page.
3. **Have a native speaker review the Arabic.** The translation is a first pass.
4. **Replace the console and statistics figures.** Numbers such as `18,430 requests`,
   `64% of budget`, `40%`, `100%`, `12 min` are illustrative, not measured.
5. **Point the CTAs somewhere.** Every button currently links to `#`.

## Local preview

```bash
python3 -m http.server 4321
```

Then open http://localhost:4321
