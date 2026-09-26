# Typography — reference

Source: HIG › Typography (Specifications).

## Minimums & defaults

| Platform | Default | Minimum |
|---|---|---|
| iOS / iPadOS | 17 pt | 11 pt |
| watchOS | 16 pt | 12 pt |
| visionOS | 17 pt | 12 pt |
| macOS | 13 pt | 10 pt |

## iOS text styles — Large (default) size

| Style | Weight | Size | Leading | Emphasized |
|---|---|---|---|---|
| Large Title | Regular | 34 | 41 | Bold |
| Title 1 | Regular | 28 | 34 | Bold |
| Title 2 | Regular | 22 | 28 | Bold |
| Title 3 | Regular | 20 | 25 | Semibold |
| Headline | Semibold | 17 | 22 | Semibold |
| Body | Regular | 17 | 22 | Semibold |
| Callout | Regular | 16 | 21 | Semibold |
| Subheadline | Regular | 15 | 20 | Semibold |
| Footnote | Regular | 13 | 18 | Semibold |
| Caption 1 | Regular | 12 | 16 | Semibold |
| Caption 2 | Regular | 11 | 13 | Semibold |

## How Body scales across Dynamic Type sizes

| Size | xS | S | M | **L (default)** | xL | xxL | xxxL | AX1 | AX2 | AX3 | AX4 | AX5 |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| Body (pt) | 14 | 15 | 16 | **17** | 19 | 21 | 23 | 28 | 33 | 40 | 47 | 53 |
| Large Title (pt) | 31 | 32 | 33 | **34** | 36 | 38 | 40 | 44 | 48 | 52 | 56 | 60 |
| Caption 2 (pt) | 11 | 11 | 11 | **11** | 13 | 15 | 17 | 20 | 24 | 29 | 34 | 40 |

Takeaway: at AX5, Body is **~3.1×** its default. Any row that places text beside another element
horizontally will need to reflow vertically.

## Design rules

1. **Map every text element to a text style**, never a raw size. Specs should say "Headline", not "17 semibold".
2. **Hierarchy through weight and style, not many sizes.** Use Emphasized variants (bold trait) for an
   extra level instead of inventing sizes.
3. **Avoid Ultralight / Thin / Light**, especially below Title sizes.
4. **Limit typefaces.** SF Pro (+ SF Pro Rounded or SF Mono if needed). Brand display fonts only for
   large, short text (titles), with SF for body.
5. **Tracking**: SF applies optical-size tracking automatically in code. In mockups, match it
   (e.g. 17 pt ≈ −0.43 pt, 34 pt ≈ +0.40 pt, 12 pt = 0). Don't manually letter-space system text in code.
6. **Line length**: ~50–75 characters for reading text; use the readable content guide on iPad.
7. **Truncation**: at large sizes, prefer wrapping over truncating. Never truncate in a scroll view
   without a way to see the full text.
8. **Prioritize what scales.** Content scales; some chrome (e.g. tab labels) is handled by the system
   via Large Content Viewer rather than growing unbounded.

## Accessibility-size layout recipes

| Situation at default size | At AX sizes |
|---|---|
| Icon + title + trailing value in one row | Stack: title, then value below; icon scales or moves above |
| Two buttons side by side | Stack buttons vertically, full readable width |
| Multi-column grid of cards | Reduce columns to 1 |
| Timestamp trailing a message title | Move timestamp below the title |
| Fixed-height card | Let height grow; never clip |

## Custom fonts checklist

- [ ] Registered with a text style so it scales with Dynamic Type (e.g. `Font.custom(_:size:relativeTo:)` / `UIFontMetrics`)
- [ ] Responds to Bold Text
- [ ] Has sufficient weights (Regular through Bold at minimum)
- [ ] Legible at 11 pt; if thin, use larger than recommended minimums
- [ ] Supports all shipped languages' glyphs (fallback to system font otherwise)
