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
