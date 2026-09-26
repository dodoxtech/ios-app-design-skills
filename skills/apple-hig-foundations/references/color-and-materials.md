# Color & Materials — reference

Sources: HIG › Color, Dark Mode, Materials.

## Semantic color roles (use these names in specs)

Design with **roles**, then map to system dynamic colors. Never hard-code the values Apple documents —
they are for mockups only and change across releases and appearance settings.

| Role | iOS dynamic color | Use for |
|---|---|---|
| Primary text | `label` | Titles, body |
| Secondary text | `secondaryLabel` | Subtitles, metadata |
| Tertiary text | `tertiaryLabel` | Placeholder-like, disabled-ish info |
| Quaternary text | `quaternaryLabel` | Watermarks, very low emphasis |
| Placeholder | `placeholderText` | Text-field placeholders |
| Link | `link` | Inline links |
| Separator | `separator` / `opaqueSeparator` | Hairlines between rows |
| Background (plain lists, screens) | `systemBackground` → `secondarySystemBackground` → `tertiarySystemBackground` | Stacked levels |
| Background (grouped lists) | `systemGroupedBackground` → `secondarySystemGroupedBackground` → `tertiarySystemGroupedBackground` | Settings-style screens |
| Fills (thin shapes) | `systemFill` … `quaternarySystemFill` | Control tracks, chips, input backgrounds |
| Accent / tint | App `AccentColor` (`tint`) | Interactive elements, selection, prominent button background |
| Status | `systemRed` (destructive/error), `systemOrange` (warning), `systemGreen` (success), `systemBlue` (info/default tint) | Always pair with a symbol or text |
| Grays | `systemGray` … `systemGray6` | Neutral UI |

System hues available as dynamic colors: red, orange, yellow, green, mint, teal, cyan, blue, indigo,
purple, pink, brown. Each has light, dark, and increased-contrast variants.

## Building a brand palette that respects the HIG

1. Pick **one accent (tint) color**. It marks interactivity everywhere — don't use it decoratively.
2. Define every custom color as a **color set with 4 variants**: Light, Dark, Light + High Contrast, Dark + High Contrast.
3. Check contrast of accent-on-background and white-on-accent (for prominent buttons) in **both** modes:
   ≥4.5:1 for text ≤17 pt, ≥3:1 for ≥18 pt or bold.
4. Dark Mode is not inverted Light Mode: backgrounds go near-black, elevated surfaces get *lighter*,
   saturated colors are slightly desaturated/brightened for legibility. Use system backgrounds so
   elevation is handled automatically (e.g. sheets/popovers use elevated background variants).
5. Status colors must never be the only signal. Error = red + `exclamationmark.circle` + message.
6. Consider cultural meaning (red is positive in some regions; green/red for finance differs by market).

## Liquid Glass (iOS 26+)

| Do | Don't |
|---|---|
| Let standard bars, tab bars, toolbars, sheets, menus, and bar buttons adopt glass automatically | Put glass on list rows, cards, or content backgrounds |
| Use `.regular` glass for custom floating controls | Use `.clear` glass unless it's over rich media (photos/video/maps) |
| Tint the **background** of the single primary action (e.g. Done) | Tint many controls, or tint symbols/text on glass |
| Keep bar labels monochrome over colorful content | Use label colors similar to the content behind them |
| Use a scroll edge effect where content meets floating controls | Add custom opaque bar backgrounds that fight the system effect |
| Keep custom control corners **concentric** with their container | Mix arbitrary corner radii inside glass containers |
| Test with Reduce Transparency + Increase Contrast | Assume glass always looks translucent |

## Standard materials (content layer)

For content-layer blur (e.g. an overlay card on a photo), use standard materials by semantic
thickness, not by the color they happen to produce:

- `ultraThin` / `thin` — more translucent; good over simple backgrounds.
- `regular` — default.
- `thick` — most contrast; good over busy backgrounds.

Put **vibrant** label/fill colors on materials so legibility adapts automatically.

## Dark Mode checklist

- [ ] No pure `#000000`/`#FFFFFF` hard-coded; system backgrounds and labels used
- [ ] Images/illustrations have dark variants where white backgrounds would glare
- [ ] Shadows replaced/augmented by elevation (lighter surfaces) in dark
- [ ] Brand colors checked for contrast in both modes
- [ ] Screenshots reviewed in Light, Dark, and both with Increase Contrast
