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
