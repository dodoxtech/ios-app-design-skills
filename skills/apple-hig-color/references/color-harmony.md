# Color harmony — theory and construction

Sources: Johannes Itten, *The Art of Color* (1961); Josef Albers, *Interaction of Color* (1963); Goethe,
*Theory of Colours* (1810); OKLCH/Oklab (Björn Ottosson, 2020); WCAG 2.x contrast.

## 1. Work in a perceptual color model

| Model | Use | Problem |
|---|---|---|
| HEX / RGB | Final values in the asset catalog | Not intuitive to adjust |
| HSB / HSL | Quick picking | "Same lightness" is not the same perceived lightness: yellow at L50 looks far brighter than blue at L50 |
| **OKLCH** (L lightness 0–1, C chroma, H hue°) | Building scales, comparing lightness, harmonies, gradients | Some L/C/H combinations are outside sRGB/P3 and must be clipped |

Rule: **choose and adjust in OKLCH, export to sRGB/P3 hex.** Equal L in OKLCH means roughly equal perceived
lightness, so tokens at the same step look equally heavy across hues.

Approximate OKLCH hues: red ~29° · orange ~60° · yellow ~90–100° · lime ~125° · green ~145° · teal ~190° ·
cyan ~220° · blue ~257° · indigo ~278° · violet ~300° · magenta ~335° · pink ~355–15°.

System status hues sit near red 29°, orange 63°, green 147°, blue 257° (light-mode reference values; Apple
adjusts them between releases). An interactive accent within ~30° of red, orange, or green reads as a
status color.

Wheel note: painters' RYB wheel and screen RGB/OKLCH wheels give different complements (blue ↔ orange on
RYB, blue ↔ yellow on RGB). Both are valid. Use the RYB intuition for "pleasing" complements
(blue/orange, red/green, yellow/violet) and OKLCH for the actual numbers.

## 2. Harmony schemes

Angles are on the hue wheel. Each scheme needs a dominant hue. Neutrals carry most of the area in every
scheme.

| Scheme | Construction | Mood | iOS fit | Main risk |
|---|---|---|---|---|
| **Monochromatic** | 1 hue, vary lightness and chroma | Calm, premium, focused | Excellent: accent = the most saturated step | Flat or boring; fix with strong lightness range |
| **Analogous** | 3 hues within ~30–60° (e.g. teal → blue → indigo) | Natural, cohesive, soft | Very good: 1 as accent, 1 as support, 1 in content | Too little contrast; the accent must still pop by lightness |
| **Accented analogous** | Analogous + complement of the middle hue, tiny | Harmony with one focal point | Very good: complement as the 5% spark | The spark grows beyond 5% |
| **Complementary** | 2 hues ~180° apart | Energetic, bold, vivid | Good if one hue is muted and dominant, the other small and vivid | Vibration at equal saturation; red/green fails for color-blind users |
| **Split-complementary** | Base + 2 hues at ±150° | Lively, balanced | Very good: base = support, one split = accent | Three saturated hues at once |
| **Triadic** | 3 hues 120° apart | Playful, youthful | Good for kids and games; one hue leads, two desaturated | Toy-like if all three are vivid |
| **Tetradic (rectangle)** | 2 complementary pairs (e.g. 0°, 60°, 180°, 240°) | Rich, expressive | Content layer only (illustration, charts) | Chaos in UI chrome |
| **Square** | 4 hues 90° apart | Festive, maximal | Content only, games | Hardest to balance |
| **Neutral + 1** | Grays (tinted) + one accent hue | Focused, editorial, modern | Matches iOS defaults closely | Generic unless the accent is distinctive |

Picking order: 1) the base hue from the emotion · 2) the scheme from the energy · 3) the accent from the scheme
· 4) move the accent ≥30° away from system status hues if it is interactive · 5) set lightness for each role.

## 3. Itten's seven contrasts (tools for emphasis)

| Contrast | Definition | Use in iOS UI |
|---|---|---|
| Hue | Pure hues side by side | Kids, games, charts. Strongest with primaries |
| **Light-dark (value)** | Lightness difference | The main tool for hierarchy and legibility. Every text pair needs it |
| Cold-warm | Warm vs cool | Warm accent on cool foundation = approachable focus; cool on warm = calm focus |
| Complementary | Opposites | Maximum emphasis for one element (CTA, achievement) |
| Simultaneous | The eye shifts a color toward the complement of its surroundings | A gray looks warm next to blue. Always test colors in place |
| Saturation | Vivid vs muted | A vivid accent among muted colors stands out without needing a new hue |
| **Extension (proportion)** | Area balances strength | See `color-proportion.md`: vivid/bright colors get less area |

## 4. Albers: color is relative

- The same color looks different on different backgrounds. A swatch approved on white can fail on a dark card
  or under Liquid Glass.
- Two different colors can look the same in certain surroundings. Don't rely on subtle hue differences.
- Practice: approve colors only in a real screen, in both modes, next to real content (photos, charts).

## 5. Build tonal scales

Make each hue (brand, support, neutral) a scale of ~10 steps (50, 100…900, 950):

| Step | OKLCH L (approx.) | Chroma | Typical role |
|---|---|---|---|
| 50 | 0.97–0.98 | very low | Light-mode tinted background |
| 100–200 | 0.92–0.88 | low | Light surfaces, selected row background |
| 300–400 | 0.80–0.70 | rising | Borders, dark-mode accent text candidates |
| 500 | 0.60–0.65 | peak | Brand "pure" color, illustration |
| 600–700 | 0.52–0.45 | high | Light-mode accent and links (passes 4.5:1 on white) |
| 800–900 | 0.38–0.25 | falling | Ink tints, dark-mode surfaces |
| 950 | 0.15–0.18 | low | Dark-mode tinted background |

- Chroma peaks in the middle and falls at both ends; very light or very dark colors can't be saturated.
- **Hue shifting** (painter's trick): let darker steps drift a few degrees cooler and lighter steps a few
  degrees warmer. Scales look richer and less "gray-mixed".
- Yellow and lime reach high chroma only at high lightness. A yellow accent on white needs a dark ink label
  (`onAccent` = near-black), and links in yellow must use a darker amber step.

## 6. Tinted neutrals

- Pure gray feels technical. Add 2–6% chroma of the brand hue (OKLCH C ≈ 0.005–0.02) to grays and
  backgrounds. Warm neutrals (toward 60–90°) feel friendly and paper-like. Cool neutrals (toward 250–280°) feel
  calm and techy.
- Keep tinted neutrals the *same* hue in both modes so the app feels like one system.
- If you use system backgrounds and labels instead, the brand lives in the accent and content. That's the most
  native choice and the easiest to maintain.

## 7. Gradients

- Blend analogous hues (≤60° apart). Complementary gradients turn muddy gray in the middle in sRGB.
- Interpolate in OKLCH (or add a middle stop) to keep the midpoint vivid.
- `MeshGradient` (iOS 18+) is good for brand surfaces. Keep text on a solid or scrimmed area.
- P3 gradients can clip or band on sRGB. Check on both and add a little noise if banding shows.

## 8. Dark Mode conversion

| Light-mode token | Dark-mode rule |
|---|---|
| Background (L 0.97–1.0) | Near-black, L 0.13–0.18, same hue tint. Not `#000000` unless the app is OLED-media-first |
| Surface (white card) | **Lighter** than the background (L +0.04–0.08 per elevation level) |
| Ink (L ~0.2) | L 0.93–0.96, not pure white for long reading |
| Secondary ink | L ~0.70–0.75 |
| Accent (L ~0.50, high C) | Raise L to ~0.70–0.80, lower C by ~10–20%, so it passes contrast on dark without glowing |
| Expressive large fills | Lower chroma and lightness; large saturated areas vibrate on dark |
| Shadows | Mostly replaced by surface lightness |
| White-background images | Dim slightly (HIG › Dark Mode) |

Increased contrast: move ink and accent another ~0.08–0.15 L away from the background, and make separators and
borders more visible. The difference must be clear at a glance (HIG › Color).

## 9. Contrast math (WCAG 2.x)

Relative luminance: convert each sRGB channel c (0–1) to linear: `c ≤ 0.04045 ? c/12.92 : ((c+0.055)/1.055)^2.4`,
then `L = 0.2126 R + 0.7152 G + 0.0722 B`. Contrast = `(L_lighter + 0.05) / (L_darker + 0.05)`.

Targets: 4.5:1 (text ≤17 pt) · 3:1 (≥18 pt, bold, icons, control boundaries) · 7:1 (aim for custom
small text). APCA is an alternative perceptual measure the HIG also mentions. Report the numbers, don't guess.

## 10. Color-blind-safe pairs

- Problem pairs: red/green, green/brown, blue/purple, blue/orange in some cases (HIG names red-green and
  blue-orange), light green/yellow.
- Safer: separate colors by **lightness** as well as hue (one dark, one light), and use blue/orange or
  blue/red with lightness difference for binary states.
- Charts: vary lightness through the series, add symbols or patterns, and label directly.
