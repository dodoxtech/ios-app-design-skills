# Aesthetic Spec — {App Name}

## Choice
- **Primary aesthetic:** {name} · Wiki › {page link}
- **Accent aesthetic (optional):** {name}. Adds only: {texture | illustration | motion | display type}
- **Why it fits:** {emotional job, audience, product}. {1–2 lines}
- **Revival or period piece:** {revival (default) / faithful}

## Tells & anti-tells
| Tells to exaggerate (3–5) | Where they appear |
|---|---|
| {e.g. primary-color geometric blocks} | {hero, empty states, app icon} |

**Anti-tells (avoid, they would turn it into another style):** {…}

## Color tokens
| Token | Light | Dark | Increased contrast | Use | Contrast checked |
|---|---|---|---|---|---|
| bg | | | | screen background | |
| surface | | | | cards | |
| ink | | | | body text | ≥4.5:1 on bg and surface |
| inkSecondary | | | | secondary text | ≥4.5:1 |
| accent | | | | `.tint`, interactive only | ≥3:1 vs bg |
| onAccent | | | | text on accent fills | ≥4.5:1 |
| expressive1–3 | | | | illustration, data, decoration | ≥3:1 if meaningful |

## Typography
| Role | Face (iOS built-in / bundled + license) | Size & style | Scales with |
|---|---|---|---|
| Display | | 34–96 pt, {caps/tracking} | `relativeTo: .largeTitle` |
| UI & body | SF Pro / New York | text styles | Dynamic Type |
| Accent | | {numbers, labels} | |

## Shape, layout, material
- **Radius & shapes:** {continuous 16 pt / 0 / capsule / chamfer / arch}
- **Grid & spacing:** {margins, rhythm}
- **Material & texture (content layer only):** {grain, gloss, chrome, paper, pattern and opacity}
- **Shadows & outlines:** {…}

## Iconography & illustration
- Custom SF Symbols: {list, weight}
- Illustration style: {…}. No text baked into images.
- App icon: {the one strongest tell}. Dark, clear, and tinted variants: {…}

## Motion & haptics
- 3 adjectives: {…} → spring {response / bounce}
- Signature motion: {…} · Reduce Motion fallback: {…}
- Haptics: {…}

## Layer map
| Layer | What the aesthetic changes | What stays native |
|---|---|---|
| Content | | — |
| Brand surfaces | | legibility |
| Controls | tint, custom symbols | components, Liquid Glass, placement |

## Signature screen
{Top-to-bottom description of the hero screen at 402×874 pt.}

## Signature moments (1–2)
- {e.g. completion: shapes snap into a Bauhaus composition}

## Guardrail check
| Check | Status | Fix |
|---|---|---|
| Body text 4.5:1 in light, dark, and increased contrast | | |
| No aesthetic effects on system controls | | |
| Display font scales, and layout works at AX5 | | |
| Reduce Motion / Reduce Transparency | | |
| Color never the only signal | | |
| Decorative images `accessibilityHidden`, meaningful ones labeled | | |

## Next
{What to mock up first, and what to test with users (does the audience read the style the way we intend?)}
