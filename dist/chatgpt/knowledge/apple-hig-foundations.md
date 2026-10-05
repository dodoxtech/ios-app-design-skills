---
name: apple-hig-foundations
description: Apple Human Interface Guidelines foundations for iPhone and iPad app design — layout, safe areas, typography and Dynamic Type, color and Dark Mode, Liquid Glass materials, SF Symbols, motion, haptics, app icons, and accessibility. Use when choosing sizes, spacing, fonts, colors, contrast, touch targets, or visual hierarchy for an iOS/iPadOS app, or when someone asks "what does Apple recommend for…".
---

# Apple HIG — Foundations (iOS / iPadOS)

You are acting as a senior product designer who ships on Apple platforms. Your job is to give
answers that are **specific, measurable, and traceable to the Human Interface Guidelines (HIG)**,
not generic "make it clean" advice.

Source of truth: https://developer.apple.com/design/human-interface-guidelines
Design generation covered: iOS 26 / iPadOS 26 (Liquid Glass). If the user targets an older OS,
say which recommendations change (mainly materials and bar appearance).

## How to answer

1. **Separate HIG rules from conventions.** Label each recommendation:
   - `HIG` — stated in Apple's guidelines (cite the page, e.g. *HIG › Typography*).
   - `Convention` — common Apple-platform practice not spelled out as a rule (e.g. an 8-pt spacing grid).
   Never present a convention as an Apple requirement.
2. **Give numbers.** Points (pt), not pixels, unless talking about exported assets.
3. **Prefer the system.** System fonts, semantic colors, standard components, and SF Symbols get
   Dynamic Type, Dark Mode, Increase Contrast, localization, and Liquid Glass for free. Recommend
   custom only when there's a product reason, and list what the team then must re-implement.
4. **Load a reference file only when needed** (see table below) — don't paste whole tables unless asked.

## The five principles to reason from

| Principle | What it means in practice |
|---|---|
| **Hierarchy** | Controls float on a distinct functional layer (Liquid Glass) above content. Content is the hero; chrome defers to it. |
| **Harmony** | Shapes are concentric with the hardware's rounded corners; custom elements match system corner radii and margins. |
| **Consistency** | Use platform conventions so people don't relearn: Back is top-leading, tab bar is for navigation (not actions), primary action is trailing. |
| **Adaptivity** | Layouts survive Dynamic Type up to AX5, Dark Mode, Increase Contrast, Reduce Transparency/Motion, rotation, RTL, and every iPhone/iPad size. |
| **Focus** | Limit on-screen controls; make secondary actions discoverable with minimal interaction (menus, swipe actions, context menus). |

From *HIG › Designing for iOS*: people hold iPhone in one or both hands; the middle and bottom of the
screen are easiest to reach, so put frequent actions there and support swipe-to-go-back and row swipe actions.

## Non-negotiable numbers (iOS / iPadOS)

| Topic | Value | Source |
|---|---|---|
| Touch target — default | **44×44 pt** | HIG › Accessibility, Buttons |
| Touch target — absolute minimum | 28×28 pt (visual may be smaller; hit area should still aim for 44) | HIG › Accessibility |
| Spacing around bezeled controls | ~12 pt | HIG › Accessibility |
| Spacing around borderless controls | ~24 pt from visible edges | HIG › Accessibility |
| Body text default | **17 pt** (Body style, Large size) | HIG › Typography |
| Minimum text size | **11 pt** | HIG › Typography |
| Text contrast ≤17 pt | **4.5:1** | HIG › Accessibility (WCAG AA) |
| Text contrast ≥18 pt or bold | **3:1** | HIG › Accessibility |
| Text enlargement support | at least **200%** | HIG › Accessibility |
| Prominent buttons per view | **1–2** | HIG › Buttons |
| Navigation title length | under ~15 characters | HIG › Toolbars |
| Toolbar item groups | max ~3 | HIG › Toolbars |
| Layout margins | Use system layout margins / readable content guide (typically 16 pt on compact-width iPhone, 20 pt on larger widths) | Convention (system default) |
| Spacing scale | 4 / 8 / 12 / 16 / 20 / 24 / 32 pt | Convention |

## Layout

- Respect **safe areas** (status bar, Dynamic Island, home indicator, rounded corners). Backgrounds and
  scrolling content extend edge-to-edge *under* bars; interactive content stays inside the safe area.
- Controls and navigation (tab bars, toolbars) sit **on top of** content, not beside it. Use a
  **scroll edge effect** — not a solid bar background — to separate them from scrolling content.
- **Avoid full-width buttons**; inset them to system margins. If a full-width button is required,
  its corner radius must harmonize with the device corners and align to safe areas.
- Place the most important content top-leading (reading order); frequent actions reachable at the bottom.
- Support portrait and landscape where it makes sense; if you only support one, don't tell people to rotate.
- Keep the status bar visible unless the experience is immersive (games, full-screen media).
- iPad: test at halves, thirds, and quadrants of the screen; consider a tab bar that converts to a sidebar.
- Size classes: all iPhones are **compact width** in portrait; iPad is regular/regular. Design for
  compact width first, then expand.

→ Device point sizes and size classes: `references/layout-and-devices.md`

## Typography

- Use **text styles** (Large Title, Title 1–3, Headline, Body, Callout, Subheadline, Footnote, Caption 1–2)
  with the system font (SF Pro). This gives Dynamic Type automatically.
- Default (Large) sizes: Large Title 34, Title 1 28, Title 2 22, Title 3 20, Headline 17 semibold,
  Body 17, Callout 16, Subheadline 15, Footnote 13, Caption 1 12, Caption 2 11.
- Prefer Regular, Medium, Semibold, Bold. **Avoid Ultralight, Thin, Light** at small sizes.
- Minimize typefaces — one family (plus optional monospaced/rounded variant) is usually enough.
- At accessibility sizes: stack horizontally-arranged content vertically, avoid truncation, keep
  hierarchy (primary content stays at the top), and scale meaningful icons with text.
- Custom fonts must implement Dynamic Type scaling and respond to Bold Text.

→ Full Dynamic Type tables (xSmall → AX5) and tracking: `references/typography.md`

## Color

- Use **semantic/dynamic system colors** (`label`, `secondaryLabel`, `systemBackground`,
  `secondarySystemBackground`, `separator`, `tint`…). Never hard-code system color hex values —
  they change across releases and appearances.
- Don't redefine semantics (e.g. don't use `separator` as a text color).
- One color = one meaning. If your brand color signals "tappable", don't also use it for decorative headings.
- Every color must work in **Light, Dark, and Increased Contrast**. Provide all variants for custom colors.
- **Never rely on color alone** — pair with a symbol, shape, or text (red/green, blue/orange are hard for color-blind users).
- Liquid Glass: apply color **sparingly**; to emphasize a primary action tint the *background* of that
  one button, not its symbol or text. Don't tint many controls. Keep tab/toolbar labels monochrome over colorful content.
- Use P3 wide color for rich media where it helps; ship sRGB-safe fallbacks for near-identical P3 colors.

→ Semantic color roles, materials, Liquid Glass variants: `references/color-and-materials.md`
→ Choosing a palette by emotion, harmony, and 60-30-10 proportions: skill `apple-hig-color`

## Materials & Liquid Glass

- Liquid Glass is the **functional layer** for controls and navigation (bars, tab bars, buttons in bars,
  sheets, menus). Standard components adopt it automatically.
- **Don't use Liquid Glass in the content layer** (cards, list rows, content backgrounds) — use standard
  materials (ultraThin/thin/regular/thick) or plain backgrounds there.
- Use glass effects on custom controls **sparingly**.
- Two variants: **regular** (default, adaptive, legible anywhere) and **clear** (only over visually rich
  media, typically with a dimming layer for legibility).
- On any material, use **vibrant** system label colors for foreground content.
- Test with Reduce Transparency and Increase Contrast enabled — glass becomes frostier/opaque.

## SF Symbols

- Prefer SF Symbols for interface icons: they align with text, scale with Dynamic Type, and support
  weights, scales, and rendering modes (monochrome, hierarchical, palette, multicolor).
- Match symbol weight to adjacent text weight.
- Use familiar symbols for familiar actions (`square.and.arrow.up` = share, `trash` = delete,
  `plus` = add). Don't repurpose them.
- Symbol animations (bounce, pulse, wiggle, replace, draw on/off…) must communicate something — not decorate.
- Custom symbols: build from the SF Symbols template, annotate layers, provide accessibility labels.

## Motion & haptics

- Motion must be **purposeful, brief, and cancellable**; never the only carrier of information.
- Honor **Reduce Motion**: replace large movement/zoom/parallax with fades or nothing.
- Don't add custom animation to high-frequency interactions — system components already animate.
- Haptics: use system patterns for their documented meaning (success, warning, error, selection,
  impact). Pair with visual feedback, don't overuse, and make them optional.

## App icon (iOS 26+)

- Layered icon built in **Icon Composer** (background + 1+ foreground layers); system adds Liquid Glass
  highlights, shadows, blur — **don't bake them in**.
- Provide **square, unmasked** layers; the system applies the corner mask.
- Design default, **dark, clear, and tinted** appearances; keep core features identical across them.
- Avoid text, photos, replicas of UI or Apple hardware, and black backgrounds.

## Accessibility (always on)

Every foundation decision must pass these:
- Dynamic Type to **AX5** with no clipped or overlapping essential text.
- Contrast ratios above; check both Light and Dark.
- VoiceOver: every control has a label (and value/hint where useful); images are labeled or hidden;
  reading order matches visual order.
- 44×44 pt targets; gesture actions have visible alternatives (e.g. swipe-to-delete also in Edit mode or a menu).
- Reduce Motion, Reduce Transparency, Increase Contrast, Bold Text, Differentiate Without Color respected.
- No auto-dismissing UI for important information; no autoplaying audio/video without controls.

→ Detail and test procedure: `references/accessibility.md`

## Reference files

| File | Load when |
|---|---|
| `references/layout-and-devices.md` | Need exact device sizes, size classes, safe-area behavior, iPad multitasking sizes |
| `references/typography.md` | Need full Dynamic Type scale, AX sizes, tracking, custom-font rules |
| `references/color-and-materials.md` | Choosing palettes, semantic roles, Dark Mode, Liquid Glass/material choices |
| `references/accessibility.md` | Accessibility audit, VoiceOver labels, contrast checks, test checklist |

## Related skills

- `apple-hig-components` — which bar/sheet/control to use and how.
- `apple-hig-patterns` — onboarding, permissions, loading/empty/error states, settings, writing.
- `apple-hig-design-review` — structured audit of an existing design.
- `apple-hig-screen-design` — produce a new screen/flow spec.
- `apple-hig-color` — build a brand palette: emotion, harmony, proportions, adaptive tokens.


---

<!-- file: references/accessibility.md -->

# Accessibility — reference

Sources: HIG › Accessibility, VoiceOver, Typography, Color, Motion.

Accessibility is a design deliverable, not a QA afterthought. Every screen spec should include the
annotations in "Spec annotations" below.

## Vision

| Requirement | Target |
|---|---|
| Text scaling | Support Dynamic Type through AX5 (≥200% enlargement) |
| Contrast | 4.5:1 text ≤17 pt; 3:1 for ≥18 pt or bold; check Light & Dark; provide higher contrast when Increase Contrast is on |
| Color independence | Never color alone — add symbol, shape, text, or pattern |
| Weights | Avoid thin weights; thin custom fonts need larger sizes |
| VoiceOver | Every interactive element labeled; decorative images hidden; logical reading order; grouped elements combined |
| Bold Text / Button Shapes | Custom fonts and borderless buttons respond |

## Mobility

| Requirement | Target |
|---|---|
| Touch targets | 44×44 pt default; 28×28 pt absolute minimum |
| Spacing | ~12 pt around bezeled controls; ~24 pt around borderless ones |
| Gestures | Simplest gesture for frequent actions; **every gesture has an on-screen alternative** (button, menu, Edit mode) |
| Voice Control | Visible labels match accessibility labels so people can say them |
| Switch Control / Full Keyboard Access | All actions reachable by focus navigation |
| Siri & Shortcuts / App Intents | Expose key repetitive tasks |

## Hearing

- Captions/subtitles and transcripts for audio/video content.
- Pair audio cues with haptics and visual indicators.

## Cognitive

- Simple, consistent interactions; prefer system gestures over custom ones.
- **No time-boxed UI** for important info — dismiss by explicit action.
- No autoplay audio/video without clear controls.
- Respect **Reduce Motion** (replace zoom/slide/parallax with dissolve) and Dim Flashing Lights.
- Support **Assistive Access** layouts where relevant.

## Spec annotations (add to every screen)

1. **Focus order** — numbered VoiceOver order for all elements.
2. **Labels** — accessibility label for each icon-only control (e.g. `plus` button → "Add expense").
   Labels: concise, no control type ("Add expense", not "Add expense button"), start with capital, no period.
3. **Values & hints** — for stateful controls (e.g. "Notifications, On") and non-obvious actions (hint: "Double-tap to edit").
4. **Traits** — header, button, link, selected, adjustable, image.
5. **Grouping** — which elements combine into a single element (e.g. a list row = one element with a combined label).
6. **Custom actions** — swipe actions exposed as VoiceOver custom actions.
7. **Dynamic Type behavior** — what reflows/stacks at AX sizes.
8. **Reduce Motion alternative** for any custom animation.

## Test procedure (manual, ~15 min per screen)

1. Settings › Accessibility › Display & Text Size › Larger Text → max (AX5). Walk every screen.
2. Turn on VoiceOver; swipe through each screen; confirm order, labels, and that every action is reachable.
3. Turn on Increase Contrast, Reduce Transparency, Bold Text, Button Shapes, Differentiate Without Color.
4. Turn on Reduce Motion; trigger each animation.
5. Switch to Dark Mode; repeat contrast check.
6. Voice Control: "Show names" — confirm spoken labels match visible text.
7. Run Xcode **Accessibility Inspector** audit for contrast, hit area, and missing labels.


---

<!-- file: references/color-and-materials.md -->

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


---

<!-- file: references/layout-and-devices.md -->

# Layout & Devices — reference

Source: HIG › Layout (Specifications updated September 2025).

## Design canvas recommendation

- Primary mockup canvas: **402×874 pt** (iPhone 17 / 17 Pro). Also check **375×667** (iPhone SE,
  smallest supported height) and **440×956** (Pro Max, largest).
- Export at @3x for iPhone, @2x for iPad. Always specify layouts in **points**.

## Current iPhone sizes (portrait, points)

| Width × Height | Scale | Devices |
|---|---|---|
| 440 × 956 | @3x | iPhone 17 Pro Max, 16 Pro Max |
| 430 × 932 | @3x | iPhone 16 Plus, 15 Pro Max, 15 Plus, 14 Pro Max |
| 428 × 926 | @3x | iPhone 14 Plus, 13 Pro Max, 12 Pro Max |
| 420 × 912 | @3x | iPhone Air |
| 402 × 874 | @3x | iPhone 17, 17 Pro, 16 Pro |
| 393 × 852 | @3x | iPhone 16, 15, 15 Pro, 14 Pro |
| 390 × 844 | @3x | iPhone 16e, 14, 13, 13 Pro, 12, 12 Pro |
| 375 × 812 | @3x | iPhone 13 mini, 12 mini, 11 Pro, XS, X |
| 414 × 896 | @2x/@3x | iPhone 11, 11 Pro Max, XR, XS Max |
| 375 × 667 | @2x | iPhone SE (2nd/3rd gen), 8, 7, 6s |

## iPad sizes (portrait, points, all @2x)

| Width × Height | Devices |
|---|---|
| 1024 × 1366 | iPad Pro 12.9", iPad Air 13" |
| 834 × 1194 | iPad Pro 11", iPad Pro 10.5" |
| 820 × 1180 | iPad Air 11"/10.9", iPad 11" |
| 810 × 1080 | iPad 10.2" |
| 744 × 1133 | iPad mini 8.3" |
| 768 × 1024 | iPad 9.7", iPad mini 7.9" |

## Size classes

| Device | Portrait | Landscape |
|---|---|---|
| All iPhones | Compact W, Regular H | Compact H; width is **Regular** on Plus/Max/Air models, **Compact** on others |
| All iPads (full screen) | Regular W, Regular H | Regular W, Regular H |
| iPad in Split View / Slide Over / small windows | Often **Compact W** | — |

Design rule: build the compact-width layout first; regular width typically gets a sidebar/split
view, multi-column grids, and popovers instead of sheets.

## Safe areas & system features

- Top: status bar + Dynamic Island / sensor housing. Bottom: home indicator. Sides in landscape:
  rounded corners and sensor housing.
- Background colors, images, and scroll content extend **under** all of these.
- Interactive elements and critical text stay **inside** the safe area.
- Don't place custom controls near the home indicator where they conflict with the system swipe-up gesture.
- Games: prefer full-bleed but keep HUD within safe areas; optionally offer letterboxing.

## Layout guides

- **Layout margins**: the system's standard content inset (commonly 16 pt compact, 20 pt regular).
  Align text, list content, and inset buttons to it.
- **Readable content guide**: limits line length for long text on wide screens (iPad). Use it for
  articles, settings, forms.
- **Keyboard layout guide**: keep focused fields and primary actions above the keyboard.

## Adaptive checklist

- [ ] Every screen checked on SE (375×667) and Pro Max (440×956)
- [ ] Landscape checked (or orientation lock is intentional)
- [ ] Dynamic Type xSmall → AX5 checked
- [ ] RTL mirroring checked (leading/trailing, not left/right; directional symbols flip)
- [ ] Long localized strings (German +30%, Finnish, etc.) don't truncate critical labels
- [ ] iPad: halves/thirds/quadrants window sizes; smooth transitions when resizing
- [ ] External display / Display Zoom doesn't break layout


---

<!-- file: references/typography.md -->

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
