---
name: apple-hig-color
description: Choose, combine, and distribute color for iPhone/iPad apps like a senior designer. Turns the app's intended emotion into a palette (hue, saturation, lightness, temperature), picks a color harmony (monochromatic, analogous, complementary, split-complementary, triadic, tetradic), allocates color by percentage (60-30-10 and its iOS variants, Itten's proportion of extension), and builds semantic tokens with light, dark, and increased-contrast variants that follow Apple's HIG (Color, Dark Mode, Accessibility, Liquid Glass color). Use when someone asks for a color palette, color scheme, brand or accent color, "what colors fit my app", color psychology or mood, color harmony, color proportions or ratios, Dark Mode colors, contrast fixes, or a review of an app's color.
---

# Apple HIG Color

You are a **senior color designer** for iOS apps. You choose colors for an emotional reason, combine them with
classical harmony rules, distribute them in measured proportions, and ship them as adaptive tokens that pass
Apple's guidelines.

Core belief: **Feeling comes from proportion, lightness, and saturation more than from hue.** The same blue
can feel calm (pale, muted, 5% of the screen) or urgent (saturated, high contrast, 40% of the screen). Choose
the hue for meaning, then tune saturation, lightness, and area for emotion.

## References (load what the step needs)

| File | Use it for |
|---|---|
| `references/apple-color-rules.md` | What Apple states: HIG › Color, Dark Mode, Accessibility, Materials (Liquid Glass color), color management, plus SwiftUI/UIKit implementation |
| `references/color-psychology.md` | Emotion → color dials, emotion catalog, app-category starting points, cultural meanings |
| `references/color-harmony.md` | Color models (OKLCH), harmony schemes with angles, Itten's 7 contrasts, Albers' relativity, tonal scales, tinted neutrals, gradients, Dark Mode conversion |
| `references/color-proportion.md` | 60-30-10 and its iOS version, ratios per harmony scheme, Itten's proportion of extension, budgets per screen type, how to measure area |
| `references/worked-examples.md` | Two complete systems (calm sleep app, energetic fitness app) with verified contrast ratios |
| `assets/color-system-template.md` | Output template |

## Workflow

### 1. Brief (state assumptions if missing; don't stall)
- **Emotion:** 3 adjectives the app should make people *feel* (e.g. calm · safe · tender), and 1 it must never
  feel (e.g. clinical).
- **Product and audience:** category, age, market or culture (color meaning changes by region).
- **Content color:** is the content colorful (photos, maps, video, art) or mostly text and data? This decides
  how much color the UI itself can carry (HIG › Color › Liquid Glass color).
- **Existing brand color**, if any, and whether it is fixed.
- **Appearance priority:** light-first, dark-first, or equal. Both modes are always required.

### 2. Translate emotion into the 5 dials
Use `references/color-psychology.md`. For each target emotion, set:

| Dial | Range | Mostly controls |
|---|---|---|
| Hue family | warm / cool / neutral; specific families | Meaning and association |
| Saturation (chroma) | muted ↔ vivid | Arousal: energy, urgency, excitement |
| Lightness | dark ↔ pale | Valence and weight: light = airy, open; dark = serious, immersive, premium |
| Contrast | soft ↔ hard (lightness gap between colors) | Calm vs dramatic, gentle vs assertive |
| Temperature balance | % warm vs % cool | Approachable vs composed |

If the adjectives pull in opposite directions (e.g. "calm" + "energetic"), pick one as the base mood (the
60% and 30%) and give the other only to the accent (the 10%).

### 3. Choose a harmony scheme
Use `references/color-harmony.md`. Match the scheme to the emotional energy:

| Energy | Scheme | Why |
|---|---|---|
| Very calm, focused, premium | Monochromatic, or neutral + 1 accent | One hue means no hue tension |
| Calm, natural, cohesive | Analogous (3 neighbors within ~60°) | Neighbors feel related and soft |
| Calm base with one spark | Accented analogous (analogous + complement of the middle hue as a tiny accent) | Harmony plus one focal point |
| Balanced, confident | Split-complementary | Contrast without the harshness of a direct complement |
| Energetic, sporty, bold | Complementary | Strongest hue contrast; needs strict proportion |
| Playful, kids, games | Triadic | Lively, but one hue must dominate |
| Rich, editorial, expressive | Tetradic (rectangle or square) | Content layer only; hard to balance in UI |

Pick hues on a perceptual wheel (OKLCH hue), not by eye in HSB. Then check: does the accent hue sit too close
to `systemRed`, `systemOrange`, or `systemGreen`? If so, move it (≥30° away) or keep the brand hue out of the
interactive role, because the HIG says not to use one color for two meanings.

### 4. Assign roles (semantic tokens)
Every color gets a job. Colors without a job get cut.

| Role | Token | Rule |
|---|---|---|
| Foundation | `bg`, `bgSecondary`, `bgTertiary` | System backgrounds, or neutrals tinted 2–6% toward the brand hue |
| Ink | `ink`, `inkSecondary`, `inkTertiary` | System label colors, or tinted equivalents. Never a saturated hue for body text |
| Surface | `surface`, `surfaceElevated`, `fill` | Cards, grouped rows, chips. Same hue as the foundation, one step lighter or darker |
| Accent (tint) | `accent`, `onAccent` | **Interactive only**: tint, prominent button background, selection, links. One per app |
| Support | `support` | The 30% hue in schemes with two hues. Headers, illustration, charts, selected backgrounds. Not interactive |
| Expressive | `expressive1–3` | Content only: illustration, charts, empty states, hero, onboarding, share cards |
| Status | system `red` / `orange` / `green` / `blue` | Keep system meanings. Always pair with a symbol or text |

### 5. Allocate by percentage
Use `references/color-proportion.md`. Default **iOS 60-30-10**:

| Share of screen area | What | Typical iOS elements |
|---|---|---|
| **60–75% Dominant** | Foundation neutral (light or dark) | Screen and grouped backgrounds, the space behind content |
| **20–30% Secondary** | Surfaces + ink mass + support hue | Cards, rows, fills, text blocks, section headers, imagery tone |
| **5–10% Accent** | Accent / tint | Prominent button (1–2 per screen), selected tab, toggles, links, key icons |
| **≤5% Signals** | Status and expressive sparks | Badges, error text, chart highlights, a single illustration detail |

Adjustments: in Dark Mode move toward 70-20-10 or 75-20-5, because saturated color looks brighter on dark
backgrounds. Make the accent area smaller as its saturation increases (proportion of extension). Brand
moments (onboarding, empty states, paywall hero, widgets, app icon) may invert the ratio and use the brand
color as the 60%, but only where there are few controls.

### 6. Build adaptive values
For every custom token, produce **4 values**: Light, Dark, Light + Increased Contrast, Dark + Increased
Contrast (HIG › Color). Rules (`color-harmony.md › Dark Mode conversion`):
- Dark is not inverted light. Backgrounds go near-black, surfaces get lighter as they rise, and the accent gets
  lighter and slightly less saturated so it keeps contrast without glowing.
- Increased contrast moves ink and accent further from the background (darker in light mode, lighter in dark
  mode). The difference should be clearly visible, not 2%.
- Supply both modes even if the app ships one appearance, so Liquid Glass can adapt (HIG › Color).

### 7. Validate (mandatory, report results)
- [ ] **Contrast:** text ≤17 pt ≥4.5:1, ≥18 pt or bold ≥3:1, in both modes (HIG › Accessibility). Aim for 7:1
      for custom small-text colors (HIG › Dark Mode). Check `onAccent` on `accent` too.
- [ ] **Grayscale test:** desaturate the screen. Hierarchy must still read through lightness alone.
- [ ] **Color-blind test:** red/green and blue/orange pairs never carry meaning alone (HIG › Accessibility).
      Simulate deuteranopia, protanopia, and tritanopia.
- [ ] **One meaning per color:** the accent is not used on non-interactive text, and status hues are not
      decoration (HIG › Color).
- [ ] **Proportion audit:** estimate the areas on the main screen. Do they fall inside the budget from step 5?
- [ ] **Liquid Glass:** tab bars and toolbars stay monochrome over colorful content; only the single primary
      action gets a tinted background; resting state at the top of scroll content stays legible (HIG › Color).
- [ ] **Culture:** check the hue meanings for the target market (`color-psychology.md › Culture`).
- [ ] **Environment:** check under bright sunlight (colors look darker and muted) and in a dark room (colors look
      brighter and more saturated) (HIG › Color).

### 8. Deliver
Use `assets/color-system-template.md`. When the environment can render visuals (HTML artifact, SVG, design
tool), offer a swatch board plus one hero screen at 402×874 pt in Light and Dark, with the 60-30-10 areas
labeled.

## Rules of thumb
- **Start with neutrals.** A good palette is mostly well-chosen grays. The accent only looks strong if the
  rest is quiet.
- **One accent, one meaning.** The accent says "you can tap this." Decorative color uses another hue or the
  content layer.
- **Lightness before hue.** Set the hierarchy in grayscale first, then add hue.
- **Saturation is expensive.** The more vivid a color, the less area it gets.
- **Never 50/50.** Two hues at equal area compete. One must clearly lead.
- **Max 3 hues in the UI chrome** (accent + support + status). Extra hues go in content.
- **Test colors where they will appear.** Colors change next to other colors (Albers) and under glass.
- Label advice **`HIG › <page>`** (stated by Apple), **`Theory › <source>`** (Itten, Albers, Goethe, color
  science), or **`Convention`** (common design practice). Never present color psychology as hard science;
  say "commonly associated with".

## Output format

```
# Color System — <App>
Brief: emotion (3 + 1 to avoid) · audience/market · content color · appearance priority
Dials: hue family · saturation · lightness · contrast · temperature
Scheme: <harmony> — hues (OKLCH °) and why it fits the emotion
Tokens: table role × Light / Dark / Light IC / Dark IC (hex) + system colors used
Proportion: % budget for the main screen + brand-moment screens
Contrast table: pair · ratio · pass/fail (both modes)
Validation: grayscale · color-blind · one-meaning · Liquid Glass · culture
Implementation: asset catalog color sets, AccentColor, SwiftUI usage
```

## Related skills
- `apple-hig-foundations`: system color roles, materials, and accessibility numbers.
- `apple-design-aesthetics`: when a named style (Bauhaus, Japandi, Y2K…) sets the palette, use this skill to
  balance proportions and build adaptive tokens.
- `apple-creative-direction`: concept first. Color then expresses that concept.
- `apple-hig-design-review`: audit color in an existing screen.


---

<!-- file: assets/color-system-template.md -->

# Color System — <App name>

## 1. Brief
- **Feel:** <adjective 1> · <adjective 2> · <adjective 3>. **Never:** <adjective>
- **Product / audience / market:** <…>
- **Content color:** colorful (photos, video, maps) / mostly text and data
- **Appearance priority:** light-first / dark-first / equal (both shipped)
- **Fixed brand color:** <hex or none>
- Assumptions: <…>

## 2. Emotion → dials
| Dial | Setting | Why |
|---|---|---|
| Hue family | <…> | <…> |
| Saturation | <muted / mid / vivid> | <…> |
| Lightness | <pale / mid / deep> | <…> |
| Contrast | <soft / medium / hard> | <…> |
| Temperature | <x% warm / y% cool> | <…> |

## 3. Harmony
**Scheme:** <monochromatic / analogous / accented analogous / complementary / split-complementary / triadic / tetradic>
| Hue | OKLCH H° | Role | Theory |
|---|---|---|---|
| <name> | <°> | dominant / support / accent / spark | `Theory › Itten` … |

Accent distance from system red / orange / green: <°> → OK / moved.

## 4. Tokens
| Token | Role | Light | Dark | Light IC | Dark IC |
|---|---|---|---|---|---|
| `bg` | Foundation | | | | |
| `bgSecondary` | Grouping | | | | |
| `surface` | Cards, rows | | | | |
| `ink` | Primary text | | | | |
| `inkSecondary` | Secondary text | | | | |
| `accent` | Tint (interactive only) | | | | |
| `onAccent` | Label on accent fill | | | | |
| `support` | 30% hue (non-interactive) | | | | |
| `expressive1–3` | Content only | | | | |

System colors used as-is: <`systemRed` (destructive/error), `systemGreen` (success), `label`, `separator`, …>

## 5. Proportion
| Screen | Dominant | Secondary | Accent | Signals | Content |
|---|---|---|---|---|---|
| <main screen> | <%> | <%> | <%> | <%> | <%> |
| <brand moment> | <%> | <%> | <%> | <%> | <%> |

Filled accent elements on the main screen: <n> (max 1–2).

## 6. Contrast
| Pair | Light | Dark | Light IC | Dark IC | Pass? |
|---|---|---|---|---|---|
| ink / bg | | | | | |
| inkSecondary / bg | | | | | |
| accent / bg | | | | | |
| accent / surface | | | | | |
| onAccent / accent | | | | | |

## 7. Validation
- [ ] Grayscale: hierarchy holds
- [ ] Color-blind (deutan / protan / tritan): no meaning by hue alone
- [ ] One meaning per color (accent not on non-interactive text; status not decorative)
- [ ] Liquid Glass: bars monochrome over colorful content; one tinted primary action
- [ ] Culture check for <market>
- [ ] Sunlight and dark-room check
- [ ] Both modes supplied (even if one ships)

## 8. Implementation
- Asset catalog: `AccentColor` + color sets <list>, Appearances *Any/Dark*, *High Contrast* checked,
  Gamut <sRGB / sRGB + P3>
- SwiftUI: `.tint(Color.accentColor)` at root · `Color("Surface")` · system roles for <…>
- Prominent action: `.buttonStyle(.borderedProminent)` / `.glassProminent` with `.tint(...)`
- Charts: <series palette + symbols>

## 9. Next
<what to mock up first — swatch board + hero screen in Light/Dark at 402×874 pt>


---

<!-- file: references/apple-color-rules.md -->

# Apple color rules — reference

Sources: HIG › Color (updated Dec 16, 2025 for Liquid Glass), HIG › Dark Mode, HIG › Accessibility,
HIG › Materials. These are summaries in our own words. Check the
[live page](https://developer.apple.com/design/human-interface-guidelines/color) before quoting Apple directly.

## 1. HIG › Color › Best practices

| Rule | What it means in practice |
|---|---|
| **Don't use one color for two meanings** | If the brand color marks borderless buttons as tappable, don't also use it (or a similar color) on non-interactive text. Same for status colors. |
| **Every color works in light, dark, and increased contrast** | System colors already have all variants. Each custom color needs light + dark, and an increased-contrast option for each with *clearly* more differentiation. |
| **Provide both modes even if you ship one** | Liquid Glass adapts between light and dark, so it needs both color variants. |
| **Test under different lighting** | In bright light, colors look darker and muted. In dark rooms, colors look brighter and more saturated. Tune for the most common case. |
| **Test on different devices** | True Tone changes the white point. Reading, photo, video, and game apps can set `UIWhitePointAdaptivityStyle`. Compare P3 and sRGB. |
| **Artwork and translucency change nearby colors** | Adjust surrounding colors when the artwork changes (Maps: light scheme for map, dark scheme for satellite). Colors look different behind or on translucent bars. |
| **Let people pick colors with system pickers** | Use `ColorPicker` / `UIColorPickerViewController`. |

## 2. HIG › Color › Inclusive color

- Don't rely on color alone to tell objects apart, show interactivity, or carry essential information. Add text
  labels or glyph shapes.
- Don't use color combinations that make content hard to see: low contrast, or pairs color-blind people can't
  tell apart.
- Colors mean different things in different cultures (red = danger in some, positive in others). Check that the
  message is the one you intend.

## 3. HIG › Color › System colors

- **Don't hard-code system color values.** The documented values are for design reference and change between
  releases. Use the APIs (`Color.red`, `UIColor.systemRed`).
- **Dynamic system colors are defined by purpose, not appearance**: backgrounds by hierarchy level, foreground
  content (labels, links, separators).
- **Don't redefine their meaning.** Don't use `separator` as text color or `secondaryLabel` as a background.
- System hues: red, orange, yellow, green, mint, teal, cyan, blue, indigo, purple, pink, brown, and gray
  (`systemGray`…`systemGray6` in UIKit; `gray` in SwiftUI). Each has default and increased-contrast values
  for light and dark. Apple updated these values in June 2025.

### iOS/iPadOS backgrounds (HIG › Color › Platform considerations)

| Set | Use when | Levels |
|---|---|---|
| System | Plain screens and lists | `systemBackground` → `secondarySystemBackground` → `tertiarySystemBackground` |
| Grouped | Grouped table views (Settings-style) | `systemGroupedBackground` → `secondarySystemGroupedBackground` → `tertiarySystemGroupedBackground` |

Primary = the overall view. Secondary = groups inside it. Tertiary = groups inside secondary elements.

### iOS/iPadOS foreground colors

`label` (primary content) · `secondaryLabel` · `tertiaryLabel` · `quaternaryLabel` · `placeholderText` ·
`separator` (lets content show through) · `opaqueSeparator` · `link`.

## 4. HIG › Color › Liquid Glass color

| Rule | Practice |
|---|---|
| Glass has no color of its own | It takes color from the content behind it. You can tint some glass elements ("stained glass") to emphasize them. |
| Small bars adapt light/dark automatically | Tab bars and toolbars switch between light and dark glass based on the content under them. Labels and symbols are monochrome by default. Larger elements (sidebars) are more opaque. |
| **Use color on glass sparingly** | Only for elements that really need emphasis: status indicators, primary actions. |
| **Tint the background, not the label**, for primary actions | The system puts the accent color behind prominent buttons such as Done. Don't tint the backgrounds of several controls. |
| Colorful content → monochrome controls | With colorful backgrounds or rich content, keep tab bars and toolbars monochrome, or choose an accent that clearly differs from the content. |
| Monochrome content → brand accent | In mostly monochrome apps, the brand color as accent is an effective way to show identity. |
| Watch overlaps in the content layer | Avoid similar colors in content and controls overlapping. Content may scroll under controls briefly, but the resting state (top of the screen) must stay legible. |

## 5. HIG › Color › Color management

- Use color profiles in images. sRGB is accurate on most displays.
- Use **Display P3** (wide color) for richer photos, video, data, and status on supported displays. Export
  P3 images as 16-bit PNG. You need a wide-color display to design in P3.
- Very similar P3 colors can look the same on sRGB, and P3 gradients can clip. If that matters, give the
  asset catalog separate sRGB and P3 versions.

## 6. HIG › Dark Mode (color parts)

- Respect the system appearance. **Don't add an app-only appearance switch.** Apps that show immersive media
  may stay dark permanently (rare).
- Dark palette = dimmer backgrounds + brighter foregrounds. **It is not an inversion** of light mode.
- Use semantic colors, or color set assets with light and dark variants. No hard-coded, non-adapting values.
- **Contrast: at least 4.5:1; aim for 7:1 for custom foreground/background colors, especially small text.**
- Darken content images with white backgrounds slightly so they don't glow in Dark Mode.
- Test Dark Mode with Increase Contrast and Reduce Transparency, separately and together. Dark text on
  dark backgrounds is where problems hide.
- Use SF Symbols with dynamic colors. Create separate light/dark icon assets when an icon's edge disappears
  in one mode.

## 7. HIG › Accessibility (color parts)

| Text size | Weight | Minimum contrast |
|---|---|---|
| Up to 17 pt | Any | 4.5:1 |
| 18 pt and up | Any | 3:1 |
| Any | Bold | 3:1 |

- These are WCAG AA values, used by Accessibility Inspector. APCA is another accepted measure.
- If the default scheme can't meet them, the **Increase Contrast** scheme must.
- Check both light and dark appearances.
- Prefer system colors; they adapt to Increase Contrast and appearance automatically.
- Red-green and blue-orange pairs are hard for color-blind people. Add shapes or icons for state and function.
  Consider letting people customize chart or character colors.

## 8. Implementation (SwiftUI / UIKit)

| Need | How |
|---|---|
| App accent | `AccentColor` color set in the asset catalog (set in build settings as Global Accent Color Name), or `.tint(Color("Accent"))` at the root |
| Custom adaptive color | Asset catalog Color Set → Appearances: *Any, Dark*; check **High Contrast** to get 4 wells. Use `Color("Brand")` |
| Wide color | Color Set → Gamut: *sRGB and Display P3* when the P3 value differs |
| Dynamic color in code | `UIColor { trait in trait.userInterfaceStyle == .dark ? dark : light }`, also checking `trait.accessibilityContrast == .high` |
| System roles | `Color(.systemBackground)`, `Color(.secondarySystemGroupedBackground)`, `.foregroundStyle(.primary / .secondary / .tertiary)` |
| Prominent tinted action | `.buttonStyle(.borderedProminent)` or `.buttonStyle(.glassProminent)` with `.tint(...)` — background is tinted, label stays `onAccent` |
| Read settings | `@Environment(\.colorScheme)`, `@Environment(\.colorSchemeContrast)`, `@Environment(\.accessibilityDifferentiateWithoutColor)`, `@Environment(\.accessibilityReduceTransparency)` |
| Charts | Swift Charts `.foregroundStyle(by:)` with a custom scale; add `symbol(by:)` so series differ by shape too |

Testing: Xcode Environment Overrides (appearance, Increase Contrast), Accessibility Inspector › Color Contrast
Calculator, a color-blindness simulator (e.g. Sim Daltonism on Mac), and real devices outdoors.


---

<!-- file: references/color-harmony.md -->

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


---

<!-- file: references/color-proportion.md -->

# Color proportion — distributing color by percentage

Sources: the 60-30-10 rule (interior design convention), Itten's contrast of extension (*The Art of Color*),
Goethe's light values (*Theory of Colours*), HIG › Color (accent and Liquid Glass guidance).

## 1. The 60-30-10 rule

| Share | Role | Interior analogy | iOS meaning |
|---|---|---|---|
| 60% | Dominant | Walls | Backgrounds: the color of the space |
| 30% | Secondary | Furniture | Surfaces, text mass, support hue, imagery tone |
| 10% | Accent | Cushions, art | Tint: what you can tap, what is selected, the one thing to look at |

Why it works: one color clearly leads, a second supports it, and the third is small enough to act as a
focal point. The eye needs a dominant field to rest on and a small contrast to go to.

## 2. iOS 60-30-10 (default budget per screen)

| Share of area | Contents | Notes |
|---|---|---|
| **60–75% Dominant** | `bg` (system or tinted neutral) | Includes empty space and margins. Darker and larger in Dark Mode |
| **20–30% Secondary** | `surface`, `fill`, `ink` text mass, `support` hue, neutral imagery | Text counts here, as dark/light neutral area |
| **5–10% Accent** | `accent`: prominent button, selected tab icon, toggles, links, key icons, progress | Max **1–2 filled accent elements** per screen; the rest are accent-colored text or symbols |
| **0–5% Signals** | Status colors, badges, expressive sparks | Usually inside the 10%. If status takes >5%, the screen is shouting |

Content color (photos, video, maps, album art) is counted separately. When content is colorful, the UI should
move toward **80-15-5** and keep bars monochrome (HIG › Color › Liquid Glass color).

### Variants

| Variant | When | Why |
|---|---|---|
| **70-20-10** | Dark Mode, dashboards | Saturated colors look brighter on dark backgrounds |
| **75-20-5** | Dark-first immersive apps (sleep, media, camera) | A small accent is enough on black |
| **80-15-5** | Productivity, reading, content-heavy apps | Color must not compete with content |
| **60-30-10 → 50-30-20** | Kids, games, celebratory screens | More energy, but one color still leads |
| **Inverted brand moment (brand 60%)** | Onboarding, empty state, paywall hero, widget, launch, app icon | Few controls, high emotional value. Controls on top use `onBrand` ink and system button styles |

## 3. Ratios per harmony scheme

Percentages are of the color budget for hues (after neutrals). In most UIs, neutrals hold the 60%, so the
hue split happens inside the 30% + 10%.

| Scheme | Split | How to apply |
|---|---|---|
| Monochromatic | 60 light step · 30 mid step · 10 most saturated step | Accent = the strongest step of the same hue |
| Analogous | 60 hue A · 30 hue B · 10 hue C | A = dominant (often as a tinted neutral), C = accent |
| Accented analogous | 60 A · 25 B · 10 C · 5 complement | The complement is the spark (achievement, badge) |
| Complementary | 70–90 hue A (muted) · 10–30 hue B (vivid) | **Never 50/50**. The vivid side is the small side |
| Split-complementary | 60 base · 30 split 1 · 10 split 2 | Base = support/foundation tint, split 2 = accent |
| Triadic | 60 · 30 · 10 | One hue leads; the other two get less saturation and less area |
| Tetradic / square | 50 · 25 · 15 · 10 | Content layer only; neutrals still take most of the screen |

## 4. Itten's proportion of extension

Strong colors need less area to balance weak ones. Goethe's light values:

| Color | Yellow | Orange | Red | Green | Blue | Violet |
|---|---|---|---|---|---|---|
| Light value | 9 | 8 | 6 | 6 | 4 | 3 |

Harmonious area is the **inverse** of light value:

| Pair | Area ratio | Meaning |
|---|---|---|
| Yellow : Violet | 1 : 3 (25% : 75%) | A little yellow balances a lot of violet |
| Orange : Blue | 1 : 2 (33% : 67%) | Orange accent on a blue field |
| Red : Green | 1 : 1 | Equal strength, so equal area vibrates; use lightness or saturation to break the tie |
| Yellow : Orange : Red : Violet : Blue : Green | 3 : 4 : 6 : 9 : 8 : 6 | Full-wheel balance |

Generalized rule for UI: **area × saturation × brightness ≈ constant** across roles. Pure, bright colors
(yellow, lime, neon) get the smallest area. Deep, muted colors can cover large areas. To emphasize one color
on purpose, *break* the balance: give the strong color even less area so it becomes a focal point.

## 5. Budgets by screen type

| Screen | Dominant | Secondary | Accent | Notes |
|---|---|---|---|---|
| List / feed / settings | 65–75% | 20–30% | ≤5% | Accent only on selected tab, toggles, add button |
| Detail / reading | 70–80% | 15–25% | ≤5% | Ink is the main "color" |
| Dashboard / data | 60–70% | 20–25% | 5–10% + chart colors | Charts are content; give them their own palette, one hue for "you" |
| Form / checkout | 70% | 25% | ~5% | One prominent action only |
| Onboarding / hero | brand 40–60% | 30% | 10% | Inverted brand moment allowed |
| Empty state | 60% | 25% (illustration) | 10–15% | Expressive colors live in the illustration |
| Paywall | 50–60% | 25–30% | 10–15% | One CTA in accent; no competing accent |
| Celebration / reward | 40–50% | 30% | 20% + expressive | Short-lived; return to normal budget after |
| Widget | brand or neutral 60–70% | 20–30% | ≤10% | Also check tinted and clear widget rendering |
| App icon | 1 background color 60–80% | 1 symbol color 20–30% | ≤10% detail | Limited palette; check Dark, tinted, and clear icon variants |

## 6. How to measure

1. Work on the real frame (iPhone 17: 402×874 pt) with real content, not placeholder gray boxes.
2. Group every visible area into dominant / secondary / accent / signal / content.
3. Estimate the share of each by area (a coarse 10×20 grid is enough; each cell = 0.5%). Text counts as
   its bounding box × ~30% (text is mostly background).
4. Compare with the budget for that screen type. Over budget on accent → turn filled accent elements into
   accent-tinted text/symbols, or into neutral fills.
5. Check the **flow**, not only one screen: the accent should appear on every main screen in the same role,
   so people learn it.
6. Repeat in Dark Mode. If the accent feels louder, reduce its area or chroma.

## 7. Common failures

| Symptom | Cause | Fix |
|---|---|---|
| "Everything screams" | Accent >15%, several filled accent buttons | One filled CTA, others `.bordered` or plain |
| "Bland, generic" | 90% gray, accent = `systemBlue` | Tint the neutrals; give the accent a distinctive hue; add expressive color in content |
| "Muddy" | Two mid-saturated hues at similar area and lightness | Make one dominant; separate by lightness |
| "Vibrating edges" | Complementary colors at equal saturation touching | Lower one's chroma or put a neutral between them |
| "Brand lost in Dark Mode" | Only the light-mode tint was designed | Lighter, slightly desaturated dark accent; tinted dark neutrals |
| "Can't read the tab bar" | Colorful content + colored bar labels | Monochrome bar labels (HIG › Color › Liquid Glass color) |


---

<!-- file: references/color-psychology.md -->

# Color psychology — emotion to color

Color meaning is **learned and contextual**, not universal. The most reliable research finding is about
lightness and saturation, not hue: in Valdez & Mehrabian (1994), brighter colors were rated more pleasant and
more saturated colors more arousing. Hue associations below are common in Western and East Asian digital
products. Say "commonly associated with", and check the culture table for the target market.

## 1. The dials and what they do

| Dial | Low end feels | High end feels |
|---|---|---|
| Saturation | calm, mature, sophisticated, quiet, sad (if also dark) | energetic, young, urgent, loud, cheap (if everywhere) |
| Lightness | serious, premium, immersive, mysterious, heavy | airy, gentle, open, clean, childlike (pastel) |
| Contrast (lightness gap) | soft, safe, dreamy, low effort | dramatic, assertive, precise, editorial |
| Temperature | cool: composed, trustworthy, distant, clean | warm: friendly, appetizing, active, close |
| Number of hues | 1: focused, premium · 2: confident | 3+: playful, festive, chaotic if uncontrolled |

## 2. Hue associations (common, not universal)

| Hue family | Positive associations | Negative / risk | Typical apps |
|---|---|---|---|
| Red | passion, energy, appetite, urgency, luck (East Asia) | danger, error, aggression | Food, sports, dating, flash sales |
| Orange | warmth, enthusiasm, friendliness, value | cheapness, warning | Delivery, social, kids, fitness |
| Yellow / amber | optimism, joy, attention, sunshine | caution, anxiety at high saturation, low contrast on white | Notes, kids, weather, highlights |
| Lime / yellow-green | freshness, vitality, tech energy | sickly if muted | Fitness, fintech challengers |
| Green | growth, health, nature, money, success | envy, "go" overuse, red-green confusion | Health, finance, sustainability, habits |
| Mint / teal | clarity, healing, freshness, balance | medical coldness | Health, wellness, hydration |
| Cyan / sky | openness, air, water, tech | coldness | Travel, weather, utilities |
| Blue | trust, security, calm, competence | coldness, corporate sameness | Finance, health, productivity, enterprise |
| Indigo / navy | depth, intelligence, night, authority | heaviness, gloom | Sleep, banking, pro tools, education |
| Violet / purple | imagination, spirituality, luxury, magic | artificial, mourning in some cultures | Meditation, creative, beauty, games |
| Pink | tenderness, care, romance, playfulness | gender stereotyping, "sweet" overload | Dating, beauty, parenting, social |
| Brown / terracotta | earthiness, craft, comfort, reliability | dullness, dirt | Coffee, food, outdoors, journaling |
| Black / near-black | elegance, power, focus, premium | heaviness, grief | Luxury, camera, media, fashion |
| White / off-white | clarity, simplicity, space, purity | sterility; mourning in East Asian tradition | Minimal tools, health, editorial |
| Gray | neutrality, balance, professionalism | boredom, sadness | Foundations of every UI |

## 3. Emotion catalog (starting points)

Format: hue families · saturation · lightness · contrast · temperature → scheme → proportion hint.

| Emotion | Dial settings | Scheme | Proportion hint | Avoid |
|---|---|---|---|---|
| **Calm, relaxed** | blue, indigo, teal, sage · low–mid sat · light (or deep dark) · soft · cool | Monochromatic / analogous | 70-25-5, accent muted | Pure red, high-sat yellow, hard black/white |
| **Trustworthy, secure** | blue, navy, teal · mid sat · mid–dark accent on light bg · medium · cool | Monochromatic + neutral | 60-30-10, accent deep | Neon, many hues |
| **Energetic, motivating** | red-orange, lime, magenta, electric blue · high sat · dark bg or bright · hard · warm or mixed | Complementary / split-complementary | 70-20-10 on dark, accent vivid | Pastels, low contrast |
| **Joyful, playful** | yellow, orange, pink, turquoise · high sat · light · medium · warm | Triadic | 60-25-10-5, one hue leads | All hues equal area |
| **Luxurious, premium** | black, ivory, gold, deep green, burgundy · low sat · very dark or very light · hard value, soft hue | Monochromatic + metal accent | 75-20-5 | Saturated primaries, many colors |
| **Natural, healthy** | sage, moss, leaf, sand, terracotta · low–mid sat · light–mid · soft · warm-neutral | Analogous (yellow-green → green → teal) | 60-30-10 | Neon, cold grays |
| **Focused, productive** | neutral grays + one blue, indigo, or orange · low sat · light or dark · medium · neutral | Neutral + 1 accent | 80-15-5 | Decorative color in the work area |
| **Warm, caring** | peach, coral, apricot, rose, cream · mid sat · light · soft · warm | Analogous warm | 60-30-10 | Cold blue-gray foundations |
| **Tender, safe (babies, family)** | powder blue, blush, butter, mint, cream · low sat · very light · soft · balanced | Analogous pastels + 1 deeper accent | 65-30-5 | Hard black, pure white glare, red alarms |
| **Romantic, intimate** | rose, wine, plum, blush · mid sat · mid–dark · medium · warm | Analogous (red-violet) | 60-30-10 | Bright green, corporate blue |
| **Mysterious, immersive** | midnight blue, deep violet, teal-black · low–mid sat · very dark · low ambient, bright highlights · cool | Monochromatic dark + glow accent | 80-15-5 | Light backgrounds, many hues |
| **Urgent, bold** | red, black, white, yellow · high sat · extremes · very hard · warm | Complementary or primary triad | 60-30-10 with large type | Soft pastels |
| **Nostalgic** | faded mustard, teal, burnt orange, cream · low–mid sat · mid · soft · warm | Triadic muted | 60-30-10 | Pure digital primaries |
| **Futuristic, techy** | electric blue, cyan, violet, lime on near-black · high sat accent, low sat base · dark · hard · cool | Analogous cool + 1 neon | 80-15-5 | Warm browns |
| **Sophisticated, editorial** | ink, paper, one signature hue (red, cobalt, forest) · low sat base · light · hard value · neutral | Neutral + 1 accent | 85-10-5 | Gradients everywhere |
| **Fresh, clean** | white, mint, aqua, lemon · mid sat · very light · medium · cool | Analogous | 70-20-10 | Muddy neutrals |

When an emotion pair conflicts (e.g. "trustworthy" + "playful"), the first emotion sets the foundation and
secondary (90%), the second appears only in the accent and expressive content.

## 4. App category starting points

| Category | Usual emotion | Starting palette direction | Watch out |
|---|---|---|---|
| Banking, finance | trustworthy, precise | Navy/blue or deep green + neutral, mid sat | Red/green for gains/losses depends on market (see §5) |
| Investing (challenger) | confident, energetic | Near-black + lime or violet | Don't let the accent look like status green |
| Meditation, sleep | calm, mysterious | Indigo/violet, dark-first, muted | Avoid bright white screens at night |
| Fitness | energetic, motivating | Dark + vivid lime, orange, or magenta | Accent vs `systemRed`/`systemGreen` collisions |
| Health, medical | trustworthy, calm, clean | Blue/teal + white | Too clinical: add one warm support hue |
| Food, delivery | warm, appetizing | Red-orange, tomato, mustard, warm cream | Blue and purple reduce appetite appeal |
| Kids, education | joyful, safe | Triadic bright on soft cream | Hues all equal area; color-only meaning |
| Parenting, baby | tender, safe, warm | Pastel analogous + one deeper accent | Pastel text fails contrast; use deep ink |
| Productivity, notes | focused | Neutral + 1 accent (blue, orange, yellow) | Decorative color in the editor |
| Social, Gen Z | playful, expressive | Bold accent, content-driven color | Accent fighting user photos (keep chrome monochrome) |
| Dating | romantic, warm | Rose, coral, plum | Generic pink-red gradient cliché |
| Travel | open, adventurous | Sky, sea teal, sunset coral | Photos dominate; keep UI quiet |
| E-commerce | trustworthy + urgent | Neutral foundation, one high-sat action color | Sale red vs error red |
| News, reading | sophisticated | Paper/ink + one signature hue | Low-contrast gray text |
| Music, media | immersive | Dark, color pulled from artwork | Static brand color clashing with album art |
| Games | committed to theme | Anything, applied consistently | Controls must still read |

## 5. Culture

| Color | Meaning varies |
|---|---|
| Red | Danger/error in the West; luck, celebration, prosperity in China and Vietnam (Tết, weddings). |
| Red/green in finance | Western markets and Vietnam: green = up, red = down. Mainland China, Taiwan, South Korea, and often Japan: **red = up**, green or blue = down. Vietnam's exchanges also use purple (ceiling), cyan/blue (floor), and yellow (reference price). Follow the user's locale, not the brand palette. |
| White | Purity and weddings in the West; mourning in traditional East Asian contexts. |
| Yellow | Optimism in the West; historical imperial meaning in China and Vietnam; some contexts link it to caution. |
| Green | Nature and "go" globally; sacred in Islam. |
| Purple | Royalty and luxury; mourning in some places (e.g. Thailand, parts of Latin America). |
| Black | Elegance, but also grief in many cultures. |
| Blue | Usually the safest cross-cultural "trust" color, which is also why it is overused. |

Rule: when one palette ships worldwide, keep meaning-heavy colors (status, finance up/down) as locale-aware
tokens separate from the brand palette.

## 6. Making it distinctive (avoid category clichés)

- Every bank is blue and every meditation app is purple. Keep the category's *emotion* but move the hue:
  e.g. trust from deep forest green + paper, calm from warm sand + dusk blue.
- Change the dials before changing the hue. A muted, warm-leaning blue says something different from
  `systemBlue`.
- Own one unexpected **expressive** color in the content layer (illustration, charts, hero). That is where
  memorability comes from, not from the tint.


---

<!-- file: references/worked-examples.md -->

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
