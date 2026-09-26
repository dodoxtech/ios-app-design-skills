---
name: apple-creative-direction
description: Creative direction for iPhone/iPad apps that are bold, distinctive, and memorable while still respecting Apple's Human Interface Guidelines — concept and metaphor generation, visual identity (type, color, illustration, texture), signature moments, and multiple design directions from safe to wild, each checked against HIG guardrails. Use when someone wants an app to feel unique, creative, surprising, "Apple Design Award-worthy", less generic or less template-like, or asks for a design concept, art direction, moodboard, or brand expression for an iOS app.
---

# Apple Creative Direction

You are a **creative director** who has shipped Apple Design Award–level apps. Your job is to make
an app *unmistakable* — something people screenshot and show friends — without breaking the
platform muscle memory that makes iOS feel effortless.

Core belief: **Be conventional where people act, be unforgettable where people feel.**

```
          PEOPLE ACT HERE → keep native            PEOPLE FEEL HERE → go bold
  navigation · back · tabs · sheets · gestures    content · concept · color · type · illustration
  system controls · text input · alerts           motion · sound · haptics · empty states · data viz
  accessibility settings                          onboarding · rewards · transitions · app icon
```

## The creative process (always follow, in order)

### 1. Find the soul (the "why it exists")
Before any visuals, write in one line each:
- **Emotional job**: how should people *feel* after 10 seconds? (calm, powerful, curious, cared for…)
- **The core noun**: the one thing this app is about (a tide, a habit, a meal, a song).
- **The truth**: an insight about users that competitors ignore.

### 2. Generate a concept through a metaphor
Great apps have an organizing idea, not a style. Use `references/creative-techniques.md` to generate
**at least 8 raw ideas** fast, then pick the strongest 3. Techniques: metaphor mapping, the
physical-object test, cross-domain borrowing, constraint flips, "what would a game do", time/place
anchoring, material imagination, exaggerate one thing.

A strong concept passes the **3S test**:
- **Singular** — can be said in ≤7 words ("Your finances as a living garden").
- **Structural** — it shapes *content, motion, and color*, not just decoration.
- **Sustainable** — works on screen 30, not just the hero screen.

### 3. Present three directions on a novelty ladder

| Direction | Novelty | What changes | Risk |
|---|---|---|---|
| **A · Refined native** | 20% custom | System structure; distinctive type, color, content presentation, one signature moment | Low — may feel familiar |
| **B · Expressive** | 50% custom | A clear metaphor drives visuals + motion; custom data viz, illustrated states, 2–3 signature moments | Medium |
| **C · Wild card** | 80% custom *in the content layer only* | The content *is* the interface (e.g. a full-screen living chart, a world, a canvas); chrome stays native | High — needs strong usability testing |

Even Direction C keeps: standard navigation model, Back/Close, sheets, system text input, alerts,
Dynamic Type, VoiceOver. **Wildness lives in the content layer; the control layer stays native.**

For each direction deliver: name, one-line concept, moodboard in words (5 adjectives + 5 references
from outside of apps), type pairing, palette with roles, material/texture, motion personality,
2–3 signature moments, the hero screen described top-to-bottom, and what makes it risky.

### 4. Build the identity system (chosen direction)
Use `assets/creative-brief-template.md`. Cover:
- **Typography with a voice** — a display face (or SF Pro in an unexpected width/weight: Expanded,
  Condensed, Rounded, Black) for big moments; SF Pro for UI and body. Scale display type *hard* (48–96 pt
  hero numbers/titles) for contrast against calm body text. Body stays on Dynamic Type text styles.
- **Color from the concept, not from a template** — derive the palette from the core noun
  (sky at dusk, soil, neon arcade, paper and ink). One accent for interactivity; expressive colors
  live in content, illustration, and data. Palettes can **change with context** (time of day,
  season, data state, user progress) — as Tide Guide matches the sky.
- **Texture & material** — grain, paper, gradients (MeshGradient), photography, 3D renders **in
  the content layer**. Liquid Glass stays on controls; let your rich content be what the glass refracts.
- **Illustration & iconography language** — one illustration style; custom SF Symbols that match
  SF weight so they sit beside system symbols.
- **Motion personality** — pick 3 adjectives (e.g. "buoyant, patient, precise") and hand off to
  the `apple-motion-and-delight` skill.
- **Sound & haptics** — optional sonic logo, haptic signature for the core moment.
- **App icon** — layered, one bold idea, works in dark/clear/tinted.

### 5. Design signature moments
Pick **1 hero + 2 supporting** moments where the app earns its personality. Best places:
first launch/first success, the core action, completion/reward, empty states, pull-to-refresh,
data reveal, streaks/milestones, error recovery, the share card. See `references/ada-case-studies.md`
for how award winners did it.

### 6. Run the guardrail pass (mandatory)
Check every creative choice with `references/guardrails.md`. If the `apple-hig-design-review`
skill is available, run its P0/P1 checklist too. For each conflict, **find the creative version
that complies** instead of dropping the idea (e.g. low-contrast artistic text → keep it as a
decorative layer, put real text above it at 4.5:1).

### 7. Kill the clichés
Before delivering, scan `references/anti-cliches.md`. If a direction could be any app's with the
logo swapped, push it further.

## Creative rules of thumb

- **One big idea > ten small tricks.** Everything should rhyme with the concept.
- **Surprise once, then be reliable.** Novel first encounter, predictable forever after.
- **Content is the hero.** The most creative apps make the *data* beautiful (charts, maps, photos,
  words) rather than decorating the chrome.
- **Constraints breed style.** Choose 2–3 self-imposed constraints ("only one color plus black",
  "everything is a card from a deck", "no lines, only space").
- **Steal from outside software.** Posters, editorial magazines, museum wayfinding, packaging,
  instruments, board games, film title sequences, architecture.
- **Make it personal.** Reflect the user's own data, time, place, and progress back at them.
- **Delight must be earned and skippable.** Never slow down the 100th use to entertain the first.
- **Accessibility is a creative constraint, not a limit.** ADA Inclusivity winners (Guitar Wiz,
  Pine Hearts) are distinctive *because* they designed for Dynamic Type, contrast, and color independence.

## Output format

```
# Creative Direction — <App>
Soul: emotional job · core noun · truth
Raw ideas (8+, one line each)
Direction A / B / C  (table + details per direction)
Recommendation: <direction> — why, and what to test
Identity system (brief template)
Signature moments (hero + 2)
Guardrail check: ✓ / conflicts → compliant creative fix
Next: prototype order (what to build first to validate the concept)
```

When the environment can render visuals (HTML artifact, SVG, Design tool), offer to mock up the hero
screen of each direction at 402×874 pt so the directions can be compared side by side.

## Related skills
- `apple-motion-and-delight` — motion language, signature interactions, haptics, delight catalog.
- `apple-hig-foundations`, `apple-hig-components`, `apple-hig-patterns` — the rules to stay within.
- `apple-hig-screen-design` — turn the chosen direction into buildable screen specs.
- `apple-hig-design-review` — audit the result.


---

<!-- file: assets/creative-brief-template.md -->

# Creative Brief — {App Name}

## Soul
- **Emotional job:** {how people feel after 10 seconds}
- **Core noun:** {the one thing}
- **Truth:** {insight competitors ignore}
- **Concept (≤7 words):** {e.g. "Your money as a living garden"}
- **Self-imposed constraints:** {2–3}

## Personality
- **5 adjectives:** {…}
- **Is / Is not:** {calm, not sleepy} · {playful, not childish} · {precise, not cold}
- **References outside apps:** {poster, object, place, film, material}

## Typography
| Role | Face | Usage | Notes |
|---|---|---|---|
| Display | {SF Pro Expanded Black / custom} | Hero numbers, section titles | 48–96 pt; scales with Dynamic Type (`relativeTo: .largeTitle`) |
| UI & body | SF Pro | Everything else via text styles | Never below 11 pt |
| Accent | {SF Mono / Rounded / serif} | {data, timestamps, quotes} | |

## Color
| Role | Light | Dark | Increased contrast | Contrast checked |
|---|---|---|---|---|
| Accent (interactive only) | | | | vs background, white-on-accent |
| Content expressive 1 | | | | decorative / ≥3:1 for graphics |
| Content expressive 2 | | | | |
| Backgrounds | system or {custom} | | | |
| Contextual shift | {how palette changes with time/state/data} | | | |

## Material & texture (content layer)
{grain, paper, mesh gradient, photo treatment, 3D} — and how Liquid Glass controls read on top of it.

## Illustration & icons
- Illustration style: {…}; no text inside illustrations.
- Custom SF Symbols: {list}, matched to SF weight.
- App icon idea: {…} — dark / clear / tinted versions considered.

## Motion personality → handed to `apple-motion-and-delight`
- 3 adjectives: {…}
- Default spring: {e.g. `.smooth` / `.snappy` / `.spring(duration: 0.4, bounce: 0.15)`}
- Reduce Motion principle: {…}

## Sound & haptics
- Haptic signature: {event → pattern}
- Sound: {optional; respects silent mode}

## Signature moments
| # | Moment | Trigger | What happens | Frequency | Reduce Motion version |
|---|---|---|---|---|---|
| Hero | | | | once / rare / daily | |
| 2 | | | | | |
| 3 | | | | | |

## Guardrail check
| Creative choice | HIG risk | Compliant version | Status |
|---|---|---|---|

## Validation plan
- Prototype first: {hero screen + hero moment}
- Test: 5 users — first-impression words, can they complete the core task without help, AX5/VoiceOver pass.


---

<!-- file: references/ada-case-studies.md -->

# Apple Design Award case studies — what "creative but native" looks like

Source: Apple Newsroom, "Apple reveals winners of the 2026 Apple Design Awards" (June 2026),
https://developer.apple.com/design/awards/ . Quotes are Apple's award descriptions. Lessons are
interpretations — study the apps themselves before relying on specifics.

## ADA categories = a creativity scorecard

Use Apple's six categories to judge a direction:

| Category | What Apple rewards | Question for your design |
|---|---|---|
| Delight and Fun | Memorable, engaging, joyful | Where is the moment people smile? |
| Inclusivity | Great experience for people of all abilities and languages | Is it *better*, not just usable, with accessibility settings? |
| Innovation | Novel use of Apple technologies | What only-on-Apple capability do we use (Liquid Glass, widgets, Live Activities, spatial, haptics, App Intents)? |
| Interaction | Intuitive, effortless, tailored to the platform | Does it need zero instructions? |
| Social Impact | Meaningful improvement in people's lives | What real problem does it make lighter? |
| Visuals and Graphics | Stunning imagery, skillful execution, cohesive theme | Is every screen part of one visual world? |

## 2026 winners — lessons

| App / Game | Category | Apple's words | Creative lesson |
|---|---|---|---|
| **grug** (Ocho) | Delight & Fun | "playful way to discover and embrace daily wisdom"; "a small but meaningful moment of reflection" | Delight can be *small and daily*. Design one tiny ritual people return to. |
| **Is This Seat Taken?** (Poti Poti) | Delight & Fun (game) | "Playful interactive elements… create a sense of charm" | Charm comes from characters and tactile interactions, not complexity. |
| **Guitar Wiz** | Inclusivity | Uses "Dynamic Type, Increased Contrast, and Differentiate Without Color" plus spoken instructions | Accessibility features *are* a design feature. Design the AX version on purpose. |
| **Pine Hearts** | Inclusivity (game) | "enhanced text legibility, customizable controls, and adjusted motion and sensory feedback" | Offer comfort settings for motion/feedback; personality survives them. |
| **NBA** (visionOS) | Innovation | "watch up to five live games at once", "floating leaderboards", "3D court with tabletop mode" | Innovation = a new *capability* only this platform allows, not a new skin. |
| **Blue Prince** | Innovation (game) | "environmental storytelling found in hanging pictures and hand-scribbled notes" | Let the environment and content carry the story, not UI chrome. |
| **Moonlitt** | Interaction | "easy onboarding and best-in-class Liquid Glass integration" | A strong theme (the moon) + native Liquid Glass controls + frictionless onboarding wins. |
| **Sago Mini Jinja's Garden** | Interaction (game) | "effortless swipe-to-move controls, letting kids keep their focus on exploring" | The best interaction is the one nobody has to explain. |
| **Primary: News in Depth** | Social Impact | "smartly organized… to help users thoughtfully engage with news" | Calm, organized structure can itself be the differentiator. |
| **Consume Me** | Social Impact (game) | "Balances gameplay with profound care" | Mechanics can express emotion and empathy. |
| **Tide Guide** | Visuals & Graphics | "full-screen charts… filled with custom animations"; "Liquid Glass integration, aquatic theme, and sky-matching palette" | **The canonical pattern:** data as full-screen art + themed palette that responds to real conditions + native glass controls on top. |
| **Cyberpunk 2077** | Visuals (game) | "Takes full advantage of Apple silicon… advanced Metal features" | Technical craft is part of visual quality. |

## Patterns across winners

1. **One theme, fully committed** (moon, tides, garden, transit) — everything rhymes.
2. **Content is the spectacle** — charts, worlds, and imagery carry the visual identity.
3. **Native chrome** — Liquid Glass and standard navigation on top of expressive content.
4. **Zero-instruction interaction** — the metaphor teaches the gestures.
5. **Accessibility as craft** — not a checklist at the end.
6. **Small, repeatable rituals** beat one-off spectacle.

## Where to keep studying

- Apple Design Awards archive (every year's winners and finalists): https://developer.apple.com/design/awards/
- App Store editorial stories ("Meet the ADA winners", "Apps we love") — the screenshots show real screens.
- WWDC design videos: https://developer.apple.com/videos/design/ — especially *Designing Fluid
  Interfaces* (WWDC18), *Meet Liquid Glass* and *Get to know the new design system* (WWDC25), and the WWDC26 design sessions.
- Real shipped flows: Mobbin, Screensdesign (reference only — never copy).


---

<!-- file: references/anti-cliches.md -->

# Anti-clichés — signs a design is generic

If three or more of these apply, the direction isn't distinctive yet. Push further.

## Visual clichés
- Purple-to-blue (or pink-to-orange) gradient hero with no reason tied to the concept.
- Glassmorphism on every card (and, in iOS 26, custom glass on content competing with Liquid Glass).
- Rounded white cards on light gray, with the same 16-pt radius and soft shadow, repeated forever.
- Generic 3D blob / abstract shapes illustration pack; smiling flat people with purple skin.
- A dashboard of equal-weight cards with no hierarchy ("bento grid" for its own sake).
- Emoji as the entire personality.
- Neumorphism with low-contrast controls.
- Stock photography of people pointing at laptops.
- Every screen starts with "Good morning, {Name} 👋".

## Structural clichés
- Onboarding = 3 swipeable carousel pages of features + "Get Started".
- Hamburger menu or floating "+" hovering over the tab bar.
- Paywall before any value.
- Confetti for everything.
- Charts that are just default bars with no story.
- Settings-list look applied to screens that should be expressive.

## Motion clichés
- Everything fades up by 20 pt with the same ease on every screen load.
- Bouncy springs on serious data (finance, health).
- Lottie animation unrelated to the concept.
- Skeleton shimmer on content that loads in 100 ms.

## Copy clichés
- "Oops! Something went wrong."
- "Unlock your potential." / "Supercharge your productivity."
- "Let's get started!" on every primary button.

## How to escape
1. Return to the **core noun** and **metaphor** — derive color, shape, and motion from it.
2. Apply one **constraint flip** from creative-techniques.md.
3. Replace one decorative element with **the user's own data** made beautiful.
4. Choose a reference from **outside apps** (poster, object, place) and translate one principle.
5. Remove 30% of elements. Distinctiveness often comes from restraint.


---

<!-- file: references/creative-techniques.md -->

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


---

<!-- file: references/guardrails.md -->

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
