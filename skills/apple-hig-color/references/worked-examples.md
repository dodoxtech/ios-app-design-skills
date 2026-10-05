# Worked examples

All contrast ratios below were computed with the WCAG 2.x formula (`color-harmony.md › Contrast math`).
Hex values are design values; ship them as asset catalog color sets.

---

## A. "Lull": sleep and meditation app

**Brief:** calm · safe · dreamy; never clinical. Adults 25–45, global. Content mostly text and audio
artwork. Dark-first (used at night), light mode required.

**Dials:** cool indigo/violet · low–mid saturation · deep dark (dark mode) / pale (light mode) · soft contrast
in surfaces, high contrast for text · 85% cool / 15% warm.

**Scheme:** accented analogous. Indigo-violet (OKLCH ~280°) dominant, blue-violet support, a **moon gold**
(~85°, the complement) as a ≤5% spark for streaks and the moon illustration.

| Token | Light | Dark | Light IC | Dark IC |
|---|---|---|---|---|
| `bg` | `#F6F5FB` | `#0E0D1A` | `#F6F5FB` | `#0E0D1A` |
| `surface` | `#FFFFFF` | `#1B1A2B` | `#FFFFFF` | `#232236` |
| `ink` | `#1C1B2E` | `#F2F1FA` | `#0F0E1C` | `#FFFFFF` |
| `inkSecondary` | `#5D5A78` | `#A9A6C4` | `#45425F` | `#C9C6E0` |
| `accent` | `#5B4FD6` | `#A69CFF` | `#4436B8` | `#C3BCFF` |
| `onAccent` | `#FFFFFF` | `#120F33` | `#FFFFFF` | `#120F33` |
| `spark` (moon) | `#F2C46D` on dark art only | `#F2C46D` | — | — |

| Pair | Ratio | Result |
|---|---|---|
| ink on bg (L / D) | 15.55 / 17.17 | Pass AAA |
| inkSecondary on bg (L / D) | 6.06 / 8.19 | Pass AA (L), AAA (D) |
| accent on bg (L / D) | 5.48 / 8.08 | Pass AA; light IC raises it to 7.86 |
| onAccent on accent (L / D) | 5.94 / 7.72 | Pass |
| inkSecondary IC on bg (L / D) | 8.82 / 11.58 | Clearly stronger than default |
| spark on ink-dark `#1C1B2E` | 10.35 | Pass (spark is never used on light bg) |

**Proportion (Dark, Now Playing):** bg 75% · surface + ink 20% · accent 4% (play button, progress) · spark 1%
(moon). Brand moment: the onboarding screen uses a full indigo gradient as the 60%.

**Validation:** grayscale keeps hierarchy (ink/surface/bg steps differ in lightness) · state colors never only
hue (the "sleep goal met" check uses `checkmark.circle.fill` + text) · tab bar monochrome over artwork ·
accent at 281° is far from system red/orange/green.

---

## B. "Pulse": fitness training app

**Brief:** energetic · motivating · confident; never aggressive. 18–35. Content: workout video, data.
Dark-first, light mode required.

**Dials:** near-black foundation · very high-saturation lime accent · hard contrast · neutral-cool
temperature with an electric violet support.

**Scheme:** split-complementary-ish. **Volt lime** (~122°) accent + **electric violet** (~281°, 159° away)
support for charts and secondary highlights. The volt accent is 25° from system green, so success states
use `systemGreen` + checkmark + text, and volt is never used for "success".

| Token | Light | Dark | Light IC | Dark IC |
|---|---|---|---|---|
| `bg` | `#F4F4EF` | `#0B0B0C` | `#F4F4EF` | `#0B0B0C` |
| `surface` | `#FFFFFF` | `#1A1A1D` | `#FFFFFF` | `#232327` |
| `ink` | `#111111` | `#F5F5F2` | `#000000` | `#FFFFFF` |
| `inkSecondary` | `#5E5E58` | `#A3A39C` | `#45453F` | `#C4C4BC` |
| `accent` (tint, text/symbols) | `#4D7A00` | `#C8F23A` | `#3B5E00` | `#D8FF5C` |
| `accentFill` (prominent button bg) | `#C8F23A` | `#C8F23A` | `#C8F23A` | `#D8FF5C` |
| `onAccentFill` | `#111111` | `#0B0B0C` | `#000000` | `#000000` |
| `support` (violet) | `#5B3DF0` | `#9B85FF` | `#4A2CD6` | `#B3A3FF` |

Note the light-mode trick: volt lime fails as text on white (yellow-greens are very light), so the light
tint is a deep olive-lime (`#4D7A00`), while the *filled* button keeps the volt color with black text. One
hue, two lightness steps, one meaning.

| Pair | Ratio | Result |
|---|---|---|
| ink on bg (L / D) | 18.88 (on white) / 18.01 | Pass AAA |
| inkSecondary on bg (L / D) | 5.91 / 7.75 | Pass |
| accent on surface white (L) | 5.12 | Pass AA; IC raises it to 7.53 |
| accent on bg `#F4F4EF` (L) | 4.64 | Pass AA (tight; use the IC value for small text if needed) |
| accent on bg / surface (D) | 15.19 / 13.41 | Pass |
| onAccentFill on accentFill | 14.58 (L) / 15.19 (D) | Pass |
| support on bg (L white / D) | 6.23 / 6.74 | Pass |

**Proportion (Dark, Workout summary):** bg 70% · surfaces + ink 20% · volt 7% (Start button, ring progress,
selected tab) · violet 3% (chart comparison series) · status ≤1%. Light mode: volt fill appears only on
the Start button, so the light screen is ~80-15-5.

**Validation:** violet vs lime differ strongly in lightness (safe for deuteranopia) · chart series also
differ by symbol · prominent button uses `.borderedProminent` with `.tint(accentFill)` and `onAccentFill`
label · no second filled CTA on the same screen.
