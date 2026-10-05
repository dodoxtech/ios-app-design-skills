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
