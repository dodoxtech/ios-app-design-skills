# Creative Techniques — idea generation toolkit

Use several techniques, go for quantity first (8+ ideas), then judge. Write each idea as one line:
**"<App> as <metaphor> — <what that changes on screen>"**.

## 1. Metaphor mapping
Pick a metaphor from the physical world, then map *every* part of the app to it.

| App part | Ask | Example: habit tracker as a **garden** |
|---|---|---|
| Core item | What is it in the metaphor? | A habit = a plant |
| Progress | How does the metaphor show growth? | Plants grow, bloom, wilt if neglected |
| Time | How does time pass? | Seasons; weekly view = a garden bed |
| Success | What's the reward? | A flower blooms (signature moment) |
| Failure | How is failure gentle? | Plant droops, never dies; one tap to water |
| Empty state | What is "nothing" here? | Bare soil with a seed packet: "Plant your first habit" |
| Color | What palette does it give? | Soil, leaf, petal; changes by season |
| Motion | How do things move? | Slow sway, growth easing, petals drifting |
| Sound/haptic | What does it feel like? | Soft "tick" when watering; bloom = success haptic |

Metaphor sources: nature (tides, weather, gardens, constellations), craft (paper, ink, clay, textile),
machines (dials, instruments, film cameras, typewriters), places (libraries, train stations, kitchens),
play (cards, board games, toys, arcades), rituals (tea, journaling, collecting).

**Rule:** the metaphor lives in content and motion. Never turn it into skeuomorphic *controls* that
break platform behavior (no wooden tab bars, no leather-textured navigation bars).

## 2. The physical-object test
"If this app were an object on a desk, what would it be?" A pocket watch? A field notebook? A
vinyl record? Then borrow **one tactile quality** (the click of the watch crown → a haptic detent; the
notebook's ruled paper → the list's rhythm and spacing).

## 3. Cross-domain borrowing
Take a design language from outside software and translate its *principle*, not its look:

| Source | Principle to steal | App translation |
|---|---|---|
| Editorial magazines | Huge type contrast, pull quotes, asymmetry | Hero numbers at 80 pt, content-first layouts |
| Museum wayfinding | Color-coded zones, bold numerals | Each section owns a color in content |
| Film title sequences | Timing, reveal, rhythm | Staggered data reveal on first load |
| Board games | Tokens, turns, satisfying placement | Drag-to-place with snap + haptic |
| Weather maps | Continuous gradients encode data | Gradient backgrounds encode state |
| Swiss posters | Grid discipline, one red accent | Strict grid + single accent |
| Japanese packaging | Restraint, texture, careful spacing | Quiet UI, rich paper textures in content |
| Musical instruments | Direct manipulation, precise feedback | Dials/sliders with detents and sound |

## 4. Constraint flips
Impose a strange constraint and see what it forces:
- "Only one screen." → everything is layers/sheets over one living canvas.
- "No numbers." → progress shown as shape, color, size.
- "Everything is a card." → deck metaphor, swipe/stack interactions (with button alternatives).
- "Designed for one-thumb at night." → dark, bottom-weighted, big targets.
- "A 5-year-old must use it with no instructions." (Sago Mini, ADA Interaction winner)
- "Two colors only." → forces hierarchy through type and space.

## 5. "What would a game do?"
Games are masters of feedback and feel. Borrow: juicy feedback on the core action, progression you can
*see*, collectibles, a world that reacts to you, onboarding by playing. Keep it respectful: no dark
patterns, no fake urgency, rewards that reflect real progress.

## 6. Time & place anchoring
Make the UI respond to the user's real context: time of day (palette shifts dawn → night), weather,
season, location, local events, the user's own history ("One year ago today…"). Tide Guide's
sky-matching palette is this technique.

## 7. Material imagination
Invent a material for your content layer: "liquid ink", "frosted paper", "soft clay", "light through
water". Define how it looks, moves, and reacts to touch. It must *complement* Liquid Glass on the
control layer, not compete (glass refracts your material).

## 8. Exaggerate one thing
Take one element and make it 10× more important than normal: a giant number, a single full-bleed photo,
one enormous chart, one word. Everything else goes quiet.

## 9. SCAMPER for screens
- **Substitute** — replace a list with a map, timeline, or physical metaphor.
- **Combine** — merge two screens into one continuous canvas.
- **Adapt** — adapt a pattern from another domain (see table above).
- **Modify** — change scale, rhythm, density radically.
- **Put to other use** — the share card becomes a poster; the loading state becomes a teaser.
- **Eliminate** — remove a screen, a step, a setting.
- **Reverse** — show the result first, then the input; start from the end state.

## 10. The "screenshot test"
For each idea ask: "Would someone screenshot this and send it to a friend?" If not, where could the
screenshot moment be? (A share card, a year-in-review, a milestone, a beautiful chart.)

## Judging ideas (score 1–5 each, pick top 3)

| Criterion | Question |
|---|---|
| Distinctive | Could a competitor ship it by swapping the logo? (low = bad) |
| Meaningful | Does it help understanding or feeling, not just decoration? |
| Structural | Does it shape content, motion, color, and copy consistently? |
| Feasible | Can it be built with SwiftUI/Metal in the team's timeframe? |
| HIG-safe | Can it live in the content layer with native controls on top? |
| Inclusive | Does it survive AX5 text, VoiceOver, Reduce Motion, color blindness? |
