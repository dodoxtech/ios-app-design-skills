# Guardrails — keep the creativity, stay within the HIG

For each creative idea, find the **compliant creative version** rather than deleting the idea.

## Hard lines (never cross — these are P0/P1 in a HIG review)

| Keep native | Why |
|---|---|
| Navigation model: tab bar / sidebar / navigation stack | Muscle memory; tab bar = navigation only |
| Standard Back chevron, Close `xmark`, swipe-back, swipe-down to dismiss sheets | People rely on them without looking |
| System text input, keyboards, AutoFill | Speed, accessibility, trust |
| Alerts, permission prompts, share sheet, pickers | Trust and familiarity; never fake system UI |
| Safe areas; controls away from the home indicator | System gestures |
| Dynamic Type through AX5 for readable text | Accessibility |
| Contrast 4.5:1 for text ≤17 pt (3:1 for large/bold) | Legibility |
| 44×44 pt touch targets | Motor accessibility |
| Liquid Glass only on the control layer | Hierarchy; don't put glass on content |
| Reduce Motion, Reduce Transparency, Increase Contrast respected | Comfort & safety |

## Creative idea → compliant version

| Tempting idea | Problem | Compliant creative version |
|---|---|---|
| Custom illustrated tab bar | Breaks Liquid Glass tab bar, labels, badges | Standard tab bar with **custom SF Symbols** in your style; express the theme in content beneath the glass |
| Hamburger / radial menu | Hidden navigation | Tab bar + a creative home canvas as the first tab |
| Giant artistic headline in thin font on photo | Contrast/legibility | Bold or heavy display weight, scrim or material behind it; decorative layer + accessible text layer |
| Low-contrast "moody" palette | Fails contrast | Moody **backgrounds** and imagery; text/controls meet 4.5:1; offer higher contrast with Increase Contrast |
| Gesture-only interaction (swipe-to-do-everything) | Undiscoverable, inaccessible | Gesture as the fast path + visible button/menu alternative + VoiceOver custom actions |
| Full-screen spectacular transitions | Slow repeated use, motion sickness | Hero transition on first/rare moments; zoom transitions from source; crossfade with Reduce Motion |
| Custom glassy cards everywhere | Glass on content layer | Standard materials or solid/gradient surfaces for cards; keep glass for controls |
| Skeuomorphic controls (wooden knobs) | Non-native controls | Skeuomorphic *content* (a dial as visualization) with standard, accessible input |
| Text baked into illustrations | Not localizable/accessible | Illustrations without text; live text on top |
| Auto-playing animated background | Distraction, battery, motion | Subtle, pauses on Reduce Motion and Low Power Mode; static by default for readers |
| Fixed-size display type for style | Breaks Dynamic Type | Display type scales with `relativeTo:`; layouts reflow at AX sizes |
| Color-coded states only | Color blindness | Color + shape + symbol + label |
| Launch screen with logo animation | HIG: launch screens aren't for branding | Brand moment inside first-run onboarding, skippable |

## Accessibility versions of expressive design (design these on purpose)

- **AX5 version** of the hero screen: how does the big-type concept reflow?
- **Reduce Motion version** of each signature moment: fade/dissolve or static state change.
- **Increase Contrast version** of the palette.
- **VoiceOver narration** of visual data: summarize the chart ("Tide rising, high at 3:42 PM, 1.8 m").
- **Differentiate Without Color**: shapes/patterns in charts and states.

## Performance & craft

- Expressive does not mean heavy. Rich content must keep scrolling at full frame rate (ProMotion 120 Hz).
- Use Metal shaders / MeshGradient / Canvas for effects rather than stacks of blurred views.
- Pause decorative animation offscreen and in Low Power Mode.
