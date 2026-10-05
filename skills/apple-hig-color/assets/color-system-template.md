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
