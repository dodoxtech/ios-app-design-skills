

# ===== SKILL: apple-creative-direction =====

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


# ===== SKILL: apple-design-aesthetics =====

---
name: apple-design-aesthetics
description: Choose and apply a named visual aesthetic (Bauhaus, Swiss Design, Art Deco, Mid-Century Modern, Memphis, Brutalism, Japandi, Skeuomorphism, Frutiger Aero, Y2K Futurism, Vectorheart, Flat Design, Neumorphism, Glassmorphism, Neubrutalism, Corporate Memphis, Cassette Futurism and 30+ more from the Aesthetics Wiki "Design Aesthetics" category) to an iPhone/iPad app. Offers a menu of aesthetics, matches them to the product and audience, blends a primary and an accent aesthetic, and translates the choice into iOS tokens (palette, type, shape, material, texture, iconography, motion) with HIG guardrails. Use when someone asks for a style, vibe, aesthetic, era, "make it look retro/Y2K/Bauhaus/Frutiger Aero/brutalist", wants to pick between visual styles, or asks what aesthetic fits their app.
---

# Apple Design Aesthetics

You are a **design historian and art director** for iOS apps. You know the named design aesthetics,
where they came from, and what makes each one recognizable. Your job is to help people **choose** an
aesthetic on purpose, then **translate** it into an iOS design system that still feels native.

Core belief: **An aesthetic is a set of decisions, not a filter.** Pick the 3–5 traits that make a
style recognizable (its "tells"), apply them hard in the content layer, and leave the control layer
native. Wear the style; don't cosplay it.

Catalog source: the Aesthetics Wiki category
[Design Aesthetics](https://aesthetics.fandom.com/wiki/Category:Design_Aesthetics). Wiki text is CC BY-SA and
edited by the community. Treat dates and origins as approximate, and cite the wiki page when you describe history.

## Catalog (load the file for the family you need)

| Family | File | Aesthetics |
|---|---|---|
| **Design movements (1890–1990)** | `references/catalog-movements.md` | Art Nouveau · Art Deco · Streamline Moderne · Bauhaus · De Stijl · Constructivism · Swiss Design · Mid-Century Modern · Atomic Age · Googie · Space Age · Brutalism · Memphis Design · Retrofuturism |
| **Digital & tech eras (1970–now)** | `references/catalog-digital.md` | Cassette Futurism · Vectorheart · Y2K Futurism · Metalheart · Skeuomorphism (Aqua/Web 2.0) · Frutiger Aero · Frutiger Eco · Vectordelia (Frutiger Metro) · Bright Tertiaries · Technozen · Flat Design (Metro/Material) · Corporate Memphis · Neumorphism · Glassmorphism (Fluent) · Neubrutalism |
| **Interior & lifestyle** | `references/catalog-interior.md` | Minimalism · Maximalism · Japandi · Wabi-Sabi · Scandinavian · Hollywood Regency · Shabby Chic · Victorian · Industrial · Bohemian |

Each entry gives: era & origin · mood · **tells** (what makes it recognizable) · palette with hex and roles ·
type (fonts built into iOS first, then licensed or free options) · shape & layout · material & texture ·
iconography & illustration · motion · where it fits on iOS · HIG risks with fixes · wiki link.

`references/selection-guide.md` maps product type, audience, and emotional job to aesthetics, lists good
and bad pairings, and has the "aesthetic → iOS translation" rules.

## Workflow

### 1. Find the mode
| The user says | Do |
|---|---|
| Names an aesthetic ("make it Bauhaus") | Go to step 3 with that aesthetic. If it clashes with the product, say so once, then offer the closest good fit. |
| Describes a feeling or audience ("nostalgic, for Gen Z") | Step 2: shortlist 3 aesthetics. |
| "What styles are there?" / "show me options" | Show the **menu** (the catalog table above, one line of mood per aesthetic), grouped by family, then ask them to pick 1–2. |
| Has an existing app ("what aesthetic is this?") | Name the closest aesthetic(s) from its tells, then show how to push it further or clean it up. |

### 2. Shortlist (when the user hasn't chosen)
Use `references/selection-guide.md`. Give **3 options on a spectrum**: one safe, one characterful, one bold.
For each option give: name, one-line reason it fits, 5 tells, a 5-color strip (hex), a type pairing, and one
"signature screen" sentence. Ask the user to choose, or recommend one and continue if they asked you to decide.

### 3. Decode the aesthetic
From the catalog entry, write down:
- **Tells (3–5):** the traits that make people name the style. Only these need to be exaggerated.
- **Anti-tells:** things that would make it read as a different style (e.g. drop shadows turn Flat into
  Skeuomorphism; pastel squiggles turn Bauhaus into Memphis).
- **Era honesty:** is it a *revival* (modern take, e.g. Neo-Aero) or a *period piece* (faithful)? Default: revival.

### 4. Blend (optional, max 2)
**Primary (≈80%) + accent (≈20%).** The primary owns layout, type, and palette. The accent adds one layer only
(texture, illustration, *or* motion). Check `selection-guide.md › Pairings`. Never mix three.

### 5. Translate to iOS
Map every tell to a layer. The rules are in `selection-guide.md › Translation`. In short:

| Layer | The aesthetic may change | Keep native |
|---|---|---|
| **Content** (cards, hero, charts, empty states, illustration, onboarding, share cards) | Everything: palette, display type, shape, texture, pattern, 3D, photography | — |
| **Brand surfaces** (backgrounds, section headers, app icon, launch, widgets) | Palette, texture, display type, icon shape | Legibility and contrast |
| **Controls** (tab bar, nav bar, toolbar, sheets, alerts, menus, keyboards) | Tint color, custom SF Symbols in the style's weight | Components, Liquid Glass, placement, behavior |

Produce semantic tokens (`bg`, `surface`, `ink`, `inkSecondary`, `accent`, `onAccent`, `expressive1–3`)
with **light, dark, and increased-contrast values**. Many aesthetics are defined in one mode only; design the
missing mode in the style's spirit (e.g. Art Deco dark = black lacquer + gold; light = ivory + brass).

### 6. Guardrail pass (mandatory)
Check each entry's **HIG risks** row, then `apple-creative-direction/references/guardrails.md` if that skill is
available. Common fixes:
- Low contrast (Neumorphism, Shabby Chic, Wabi-Sabi, Frutiger Aero glass): keep the soft look on
  decoration, and put text at 4.5:1 on a solid or scrim layer.
- Fake depth on controls (Skeuomorphism, Neumorphism, Aero gloss): apply it to content objects, and keep
  system buttons (`.borderedProminent`, `.glass`).
- Glassmorphism vs Liquid Glass: the system already provides glass for controls. Don't add custom glass cards
  on top of content, because stacked glass loses hierarchy. Use solid or gradient cards.
- Display fonts (Deco, Googie, Y2K, Vectorheart): use them only for titles and numbers, scaled with
  `relativeTo:`. Body text stays SF Pro or New York with Dynamic Type.
- Busy patterns (Memphis, Maximalism, Victorian): keep them behind no text, or at ≤10% opacity. Respect
  Reduce Transparency and Reduce Motion.
- Color as the only signal (Bright Tertiaries, De Stijl): add a shape, symbol, or label.

### 7. Deliver
Use `assets/aesthetic-spec-template.md`. When the environment can render visuals (HTML artifact, SVG, design
tool), offer to mock up one hero screen at 402×874 pt, or the 3 shortlist options side by side.

## Rules of thumb
- **Tells, not trivia.** Three strong tells read as a style. Twelve weak ones read as a costume.
- **Pick by emotional job, not by trend.** A trend fades. Fit to the product lasts.
- **One era per screen.** A Y2K chrome button inside a Japandi screen reads as a bug.
- **Revive, don't replicate.** Keep the spirit and update the craft: modern spacing, Dynamic Type, dark mode,
  accessibility.
- **Say where an aesthetic backfires.** For example: Corporate Memphis now reads as generic big-tech, Neumorphism
  fails contrast, and Brutalism can read as broken to non-designers.
- Label advice **`HIG › <page>`** (stated by Apple), **`Convention`** (common practice), or **`Wiki › <page>`**
  (history or traits from the Aesthetics Wiki).

## Output format

```
# Aesthetic Direction — <App>
Mode: chosen / shortlisted / diagnosed
(Shortlist: 3 options table → pick)
Aesthetic: <primary> (+ <accent>) — why it fits (1–2 lines) · Wiki › <page>
Tells to exaggerate (3–5) · Anti-tells to avoid
Tokens: palette (light / dark / increased contrast) · type scale · shape & radius · material & texture · iconography · motion
Layer map: content / brand surfaces / controls
Signature screen (top-to-bottom) + 1–2 signature moments
Guardrail check: ✓ / conflicts → compliant fix
Next: what to mock up first
```

## Related skills
- `apple-creative-direction`: concept and metaphor first. An aesthetic can serve as the "visual identity" for
  one of its directions.
- `apple-motion-and-delight`: turn the motion row of the aesthetic into springs and haptics.
- `apple-hig-color`: balance the aesthetic's palette (60-30-10, harmony) and build light/dark/increased-contrast tokens.
- `apple-hig-foundations`: color, typography, materials, and accessibility rules.
- `apple-hig-design-review`: audit the result.


---

<!-- file: assets/aesthetic-spec-template.md -->

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


---

<!-- file: references/catalog-digital.md -->

# Catalog — Digital & Tech Eras (1970–now)

These aesthetics come from interfaces, hardware, ads, and computer graphics, so they translate to apps most
directly. The Aesthetics Wiki orders the main UI eras as **Y2K Futurism → Frutiger era → Flat Design → Glass**.

Entry key as in `catalog-movements.md`.

---

## Cassette Futurism
- **Era:** early 1970s to mid-1990s. Wiki › [Cassette Futurism](https://aesthetics.fandom.com/wiki/Cassette_Futurism)
- **Mood:** analog, tactile, industrial sci-fi (think *Alien* ship computers, Walkman, and early CRT terminals).
- **Tells:** chunky hardware · CRT green or amber phosphor text · beige and gunmetal plastic · labeled switches · warning stripes · monospaced readouts.
- **Palette:** `#1A1C1A` casing · `#2A2D2A` panel · `#E8E2D0` label ink · `#FF9F1C` amber accent · `#33FF66` phosphor green (display content only) · `#D7263D` warning red · `#CFC6B0` beige.
- **Type:** Menlo, Courier, or American Typewriter *(iOS)*. SF Mono also works. Also *VT323*, *IBM Plex Mono*, or *Share Tech Mono* (Google). All-caps labels with tracking.
- **Shape & layout:** panels with visible bezels, segmented readouts, rows of labeled "keys", small radii (4–6 pt).
- **Material:** matte plastic, scanlines at ≤8% opacity, slight CRT curvature on hero screens only.
- **Motion:** stepped (not smooth) counting, typing-on text, relay-style snap. Haptic `.rigid` ticks.
- **Fits:** audio and synth apps, developer tools, timers, sci-fi games, hardware companion apps.
- **HIG risks → fix:** green-on-black phosphor body text is fine for contrast but is tiring → keep it for readouts, and use off-white for body. Monospace everywhere breaks Dynamic Type widths → use it for data only.

## Vectorheart
- **Era:** mid-to-late 1990s (The Designers Republic, Bionic Systems). Wiki › [Vectorheart](https://aesthetics.fandom.com/wiki/Vectorheart)
- **Mood:** techno, rave, sharp, graphic-cool.
- **Tells:** flat vector shapes · 45° and 60° diagonal cuts · futuristic wide fonts · high-contrast flat colors · tiny technical microtype and barcodes.
- **Palette:** `#F2F2F2` · `#0A0A0A` ink · `#FF3B00` signal orange · `#00A6FF` cyan · `#C6FF00` acid lime.
- **Type:** SF Pro **Expanded** Black *(iOS, via `.fontWidth(.expanded)`)* is ideal. Also *Michroma*, *Orbitron*, or *Syncopate* (Google). Microtype: SF Mono 11 pt.
- **Shape & layout:** chamfered corners (45° cut via custom `Shape`), diagonal separators, spec-sheet labels in the margins.
- **Material:** flat. Optional halftone.
- **Motion:** fast wipes along diagonals, glitch-free, precise.
- **Fits:** music (electronic), sneakers and streetwear, esports, fitness tracking, racing.
- **HIG risks → fix:** microtype below 11 pt → decorative only (`accessibilityHidden`). Chamfered buttons → content chips only.

## Y2K Futurism
- **Era:** about 1997–2004. Techno-utopian. Wiki › [Y2K Futurism](https://aesthetics.fandom.com/wiki/Y2K_Futurism) · [Y2K](https://aesthetics.fandom.com/wiki/Y2K)
- **Mood:** shiny, synthetic, futuristic, pop-optimistic.
- **Tells:** chrome and liquid metal · translucent candy plastic (iMac G3) · blobby, aerodynamic shapes · iridescent silver-blue gradients · bubble and orb shapes · lens flares.
- **Palette:** `#E9EEF5` silver-white · `#C9D3E0` chrome mid · `#0D1B2A` ink · `#3A7BFF` electric blue accent · `#B8F2FF` ice · `#FF6AD5` candy pink · `#9D4EDD` ultraviolet.
- **Type:** SF Pro Expanded or Rounded *(iOS)*. Also *Syncopate*, *Audiowide*, or *Exo 2* (Google).
- **Shape & layout:** blob and pill shapes, orb buttons *in content*, floating 3D objects.
- **Material:** chrome (`MeshGradient` silver), translucent colored plastic, iridescence (angular gradient).
- **Motion:** liquid morphs, gooey blob transitions, shimmer sweeps.
- **Fits:** music, fashion and beauty, Gen-Z social, AI and creative tools, pop culture.
- **HIG risks → fix:** chrome text fails contrast → solid ink text, with chrome on objects. Shimmer loops → run once, and respect Reduce Motion.

## Metalheart (Depthcore)
- **Era:** 1998–2005, after Early Cyber. Wiki › [Metalheart](https://aesthetics.fandom.com/wiki/Metalheart)
- **Mood:** dark, abstract, digital-art moody.
- **Tells:** deformed abstract 3D shapes · futuristic HUD UI on blurry backgrounds · steel blue and gunmetal · glows and depth of field.
- **Palette:** `#0B0F14` · `#161C24` surface · `#DDE6EE` ink · `#4FC3F7` glow accent · `#5C6B7A` steel.
- **Type:** SF Pro Expanded Light *(iOS)*. Also *Exo 2* or *Rajdhani* (Google).
- **Fits:** games, music visualizers, wallpapers, and creative 3D apps.
- **HIG risks → fix:** thin light type on busy blur → Regular or heavier weight, with a scrim.

## Skeuomorphism (Aqua / Web 2.0)
- **Era:** Mac OS X Aqua (2001) → iOS 1–6 (until 2013). Wiki › [Skeuomorphism](https://aesthetics.fandom.com/wiki/Skeuomorphism)
- **Mood:** tactile, familiar, crafted, warm-real.
- **Tells:** real materials (leather, linen, wood, felt, paper) · glossy gel buttons · stitching · realistic shadows and highlights · objects that look like their physical versions (notepad, bookshelf, dials).
- **Palette:** material-driven. Example "desk": `#E9E1D3` linen · `#FFFDF6` paper · `#2E2A25` ink · `#3F7CD6` Aqua blue accent · `#7A5230` leather · `#C0392B` bookmark red.
- **Type:** Helvetica Neue, Marker Felt, American Typewriter, or Noteworthy *(iOS)* for the materials they imitate.
- **Shape & layout:** objects with depth, embossed and debossed labels, one real-looking centerpiece object.
- **Material:** high-fidelity textures and lighting. Today, render as 3D/`RealityKit` or baked images.
- **Motion:** physical: page curls, dial detents, lids opening. Haptics on detents (`.selection`).
- **Fits:** instruments and audio (knobs, faders), cameras, journals, games, collectible or "object" apps. Use it for the **hero object**, not the whole app.
- **HIG risks → fix:** fake controls imitate system UI badly → make the skeuomorphic object the *content* (a dial you turn), and keep bars and buttons native. Heavy textures in Dark Mode → provide dark material variants.

## Frutiger Aero
- **Era:** about 2004–2013 (Windows Vista/7, early iPhone era). Wiki › [Frutiger Aero](https://aesthetics.fandom.com/wiki/Frutiger_Aero) · [Frutiger Family](https://aesthetics.fandom.com/wiki/Category:Frutiger_Family)
- **Mood:** fresh, hopeful, clean-tech meets nature, "clean water".
- **Tells:** glossy glass and water · bubbles, tropical fish, blue skies with clouds, green grass · lens flares, auroras, bokeh · humanist sans (Frutiger, Segoe, Myriad) · white, sky blue, and leaf green.
- **Palette:** `#EAF6FF` sky white · `#FFFFFF` surface · `#0F2A3D` ink · `#1E90FF` aqua accent · `#7ED957` leaf green · `#5BC0EB` water · `#B3E5FC` bubble.
- **Type:** Frutiger isn't built in. Use Avenir Next or Optima *(iOS)*. Myriad-like options: SF Pro Rounded. Free humanist options: *Nunito Sans*, *Open Sans*.
- **Shape & layout:** glossy orbs, rounded cards with top highlight (white gradient 0→40%), floating bubbles.
- **Material:** gloss highlight, water caustics, nature photography, bokeh.
- **Motion:** buoyant: bubbles rising, water ripple on tap, gentle float (bounce 0.2).
- **Fits:** wellness and hydration, weather, eco and outdoor, nostalgic social, kids, cleaning and home services. Neo-Aero ([wiki](https://aesthetics.fandom.com/wiki/Neo-Aero)) is the modern revival.
- **HIG risks → fix:** gloss on buttons competes with Liquid Glass → put gloss on content orbs and illustrations, and keep controls native. White text on sky photo → scrim or ink text.

## Frutiger Eco
- **Era:** mid-2000s to early 2010s. A green corporate subgenre of Aero. Wiki › [Frutiger Eco](https://aesthetics.fandom.com/wiki/Frutiger_Eco)
- **Mood:** green optimism, sustainable-corporate.
- **Tells:** leaves, sprouts, and globes · green gradients · wind turbines · clean white · "eco" stock photos.
- **Palette:** `#F4FBF2` · `#123524` ink · `#2E9E44` green accent · `#A8E063` lime · `#56B4D3` sky.
- **Type:** Avenir Next or Gill Sans *(iOS)*. Also *Nunito* (Google).
- **Fits:** sustainability, energy tracking, gardening, EV charging, recycling.
- **HIG risks → fix:** green-on-green → check 4.5:1. It can read as greenwashing clip art → use real data visualizations as the hero.

## Vectordelia (Frutiger Metro)
- **Era:** mid-2000s to early 2010s. "Humanist maximalism" in vector graphics. Wiki › [Vectordelia](https://aesthetics.fandom.com/wiki/Vectordelia)
- **Mood:** vibrant, swooshy, youthful, music-video energy.
- **Tells:** abstract swooshes and flourishes · fluid vector shapes · solid silhouettes (dancers, iPod ads) · gradient blocks on monochrome backgrounds.
- **Palette:** `#111111` or `#FFFFFF` base · `#FF2D95` magenta · `#00C2FF` cyan · `#B6FF00` lime · `#FF8A00` orange.
- **Type:** SF Pro Rounded Bold or Avenir Next Heavy *(iOS)*.
- **Motion:** swooshes draw on, silhouettes dance, beat-synced pulses.
- **Fits:** music and dance, fitness classes, party and events, youth campaigns.
- **HIG risks → fix:** silhouettes against neon lose meaning for VoiceOver → add labels, and use them as decorative only.

## Bright Tertiaries
- **Era:** mid-2000s, alongside Aero and Vectordelia. Wiki › [Bright Tertiaries](https://aesthetics.fandom.com/wiki/Bright_Tertiaries)
- **Mood:** fun, energetic, approachable, 2000s-tech-friendly.
- **Tells:** lime green, purple, orange, and teal (or fuchsia, cyan, and lime) · glossy rounded icons · white backgrounds.
- **Palette:** `#FFFFFF` · `#1D1D1F` ink · `#8CC63F` lime · `#7B3FA0` purple · `#F7941D` orange · `#00A99D` teal.
- **Type:** SF Pro Rounded *(iOS)*. Also *Nunito* (Google).
- **Fits:** kids and family, habit trackers with categories, casual games, calendars with color-coding.
- **HIG risks → fix:** color-only categories → add an SF Symbol per category. Lime or orange text on white fails → fills only.

## Technozen (Techno Kawaii Zen)
- **Era:** mid-to-late 2000s Japanese technology. Wiki › [Technozen](https://aesthetics.fandom.com/wiki/Technozen) *(search result, page title may vary)*
- **Mood:** cold, sterile, and professional, but cozy, friendly, and cute.
- **Tells:** white and pale gray plastic · soft blue and pink accents · rounded minimal devices · small cute mascots · clean grid UI.
- **Palette:** `#F7F9FB` · `#FFFFFF` · `#2B3440` ink · `#6EC1E4` ice blue · `#F7B2C4` sakura pink · `#C9D1D9` gray.
- **Type:** SF Pro Rounded *(iOS)*. Also *M PLUS Rounded 1c* or *Zen Maru Gothic* (Google). Both support Japanese.
- **Motion:** soft and small: tiny bounces, mascot blinks.
- **Fits:** productivity with a cute twist, language learning, calm wellness, gadget companion apps.
- **HIG risks → fix:** pale-on-white → ink text and 3:1 for icons.

## Flat Design (Metro / Material)
- **Era:** 2013 to mid-2020s (iOS 7, Windows Metro 2010, Material 2014 → Material You 2021). Wiki › [Flat Design](https://aesthetics.fandom.com/wiki/Flat_Design)
- **Mood:** clean, efficient, modern, neutral.
- **Tells:** no textures or gloss · solid colors · simple icons · lots of white space · sans-serif · minimal shadows.
- **Palette:** system semantic colors plus one brand accent. Example: `#FFFFFF` · `#F2F2F7` · `#1C1C1E` · `#007AFF`.
- **Type:** SF Pro *(iOS)*.
- **Fits:** default for utilities. Pure flat is the most "invisible" choice, so pair it with an accent aesthetic for personality.
- **HIG risks → fix:** flat buttons without affordance → keep system button styles. It can look generic → see `apple-creative-direction › anti-cliches`.

## Corporate Memphis
- **Era:** late 2010s to early 2020s. Big-tech illustration style (also called "Alegria"). Wiki › [Corporate Memphis](https://aesthetics.fandom.com/wiki/Corporate_Memphis)
- **Mood:** friendly, inclusive, and harmless, now often read as **generic or insincere**.
- **Tells:** flat people with bendy limbs, small heads, and big hands · non-realistic skin tones (blue, purple) · flat pastel backgrounds · floating plants.
- **Palette:** `#FFFFFF` · `#1F2041` ink · `#6C63FF` violet · `#FFB4A2` peach · `#00BFA6` teal.
- **Recommendation:** usually **avoid**, or subvert it on purpose. If people illustrations are needed, give them a specific hand (grainy texture, a real art style, cultural specificity).
- **HIG risks → fix:** illustrations with meaning need `accessibilityLabel`. Avoid text baked into images.

## Neumorphism (Soft UI)
- **Era:** 2019–2021 (coined by Jason Kelly and Michał Malewicz). Wiki › [Neumorphism](https://aesthetics.fandom.com/wiki/Neumorphism)
- **Mood:** soft, calm, tactile, monochrome.
- **Tells:** same-color background and elements · paired light (top-left) and dark (bottom-right) shadows · extruded and pressed-in states · off-white or light gray.
- **Palette:** `#E6E9EF` base · `#FFFFFF` highlight shadow · `#A3B1C6` dark shadow · `#2D3748` ink · `#5A67D8` accent (the only strong color).
- **Type:** SF Pro Rounded *(iOS)*.
- **Known problem:** fails contrast and affordance. The wiki notes it declined because of accessibility issues.
- **Use it only as:** hero objects (a big pressed dial, a timer knob, a device-like widget) with a strong accent for state. Text and controls stay high-contrast. Add a visible border in Increase Contrast mode.
- **Fits:** timers, smart-home knobs, calculators, meditation dials.

## Glassmorphism (Fluent Design)
- **Era:** 2020 onward (Fluent, Big Sur → macOS Tahoe, Windows 11). Apple's **Liquid Glass** (2025) is the system version. Wiki › [Glassmorphism](https://aesthetics.fandom.com/wiki/Fluent_Design)
- **Mood:** layered, airy, premium, modern.
- **Tells:** frosted translucent panels · vivid blurred color blobs behind · thin light borders · soft depth.
- **iOS translation:** **the system already does this.** Liquid Glass belongs to controls and navigation. Express the aesthetic with **vivid content beneath** (mesh gradients, photos, color blobs) so system glass has something to refract. Use `.glassEffect` only on custom *controls* (floating buttons), never on content cards.
- **Palette:** background blobs such as `#7F5AF0` · `#2CB67D` · `#FF8906` · `#3DA9FC` on `#0F0E17`. Text follows system label colors.
- **HIG risks → fix:** glass on glass, glass cards over glass bars → solid or gradient cards. Reduce Transparency → system handles its own glass. Custom blur must fall back to solid.
- **Fits:** almost any modern app. It is the native look in 2026, so pair it with a stronger aesthetic in content to stand out.

## Neubrutalism
- **Era:** web and UI from about 2020, mainstream in 2022–2023 (Gumroad, Figma marketing). Wiki › [Neubrutalism](https://aesthetics.fandom.com/wiki/Neubrutalism)
- **Mood:** bold, honest, playful-raw, indie.
- **Tells:** thick black 2–3 pt outlines · hard offset shadows (4–8 pt, no blur, black) · flat saturated fills · grotesk type · visible grid · a deliberately "unpolished" feel.
- **Palette:** `#FFFDF5` · `#000000` ink and outline · `#FFDE59` yellow · `#FF6B6B` coral · `#4D96FF` blue · `#6BCB77` green · `#C780FA` lilac.
- **Type:** SF Pro Black or Helvetica Neue Condensed Black *(iOS)*. Also *Archivo Black*, *Space Grotesk*, or *Lexend* (Google).
- **Shape & layout:** cards with a black stroke and offset shadow (`.shadow(color: .black, radius: 0, x: 4, y: 4)`), small radius (0–12 pt), stickers and badges.
- **Motion:** press = shadow collapses (card moves +4,+4). Snappy, no easing softness. Haptic `.rigid`.
- **Fits:** indie tools, creator economy, note-taking, learning and quizzes, portfolios, Gen-Z fintech.
- **HIG risks → fix:** black borders on system controls → keep native bars, and put Neubrutalism on cards, chips, and content buttons. Dark Mode → invert to off-black bg and light outlines, or colored outlines.


---

<!-- file: references/catalog-interior.md -->

# Catalog — Interior & Lifestyle Aesthetics

These come from interior design and home and lifestyle media. They translate to apps mostly through **palette,
material, photography, and spacing**, so they suit content-rich lifestyle products.

Entry key as in `catalog-movements.md`.

---

## Minimalism
- **Era:** 1960s art and design → 2010s lifestyle. The opposite of Maximalism. Wiki › [Maximalism](https://aesthetics.fandom.com/wiki/Maximalism) (describes both)
- **Mood:** calm, focused, essential.
- **Tells:** very few elements · generous negative space · a neutral palette with one accent at most · strong type hierarchy · nothing decorative.
- **Palette:** `#FAFAF8` · `#FFFFFF` · `#111111` ink · `#8A8A8A` secondary · accent optional: `#111111` (monochrome) or one muted hue.
- **Type:** SF Pro or New York *(iOS)*. Light weights only for 34 pt and up.
- **Layout:** one idea per screen, 24–32 pt margins, large titles, few dividers.
- **Motion:** almost none: opacity and short position changes.
- **Fits:** writing, meditation, reading, focus timers, premium tools.
- **HIG risks → fix:** hidden controls in the name of minimalism → keep affordances visible. Thin gray text fails contrast.

## Maximalism
- **Era:** a recurring counter-movement. 2020s revival centered on personal expression and nostalgia (e.g. "dopamine decor"). Wiki › [Maximalism](https://aesthetics.fandom.com/wiki/Maximalism)
- **Mood:** exuberant, personal, collected, joyful excess.
- **Tells:** layered patterns · saturated clashing colors · lots of objects and collections · mixed typefaces · horror vacui (no empty space).
- **Palette:** `#FFF4E6` · `#1B1B1B` ink · `#E63946` · `#F4A261` · `#2A9D8F` · `#6A4C93` · `#FFBE0B` · `#FF006E`.
- **Type:** mix 2 display faces (e.g. Didot *(iOS)* + *Bungee* (Google)) with SF Pro for UI.
- **Layout:** collage, stickers, overlapping cards, scrapbook.
- **Motion:** playful, many small reactions, but only in content.
- **Fits:** scrapbooking, mood boards, collections, social profile customization, fashion.
- **HIG risks → fix:** maximal content, minimal chrome. Text gets a solid backing. Respect Reduce Motion and Reduce Transparency.

## Japandi
- **Era:** late 2010s, popular from 2020. Japanese + Scandinavian, hygge + wabi-sabi. Wiki › [Japandi](https://aesthetics.fandom.com/wiki/Japandi)
- **Mood:** serene, warm-minimal, crafted, grounded.
- **Tells:** natural materials (light oak, linen, ceramic, bamboo) · warm neutrals with charcoal accents · low, horizontal compositions · handmade imperfection · plants used sparingly.
- **Palette:** `#F3EFE7` linen · `#FBF9F4` surface · `#2F2B27` charcoal ink · `#7A8B6F` moss accent · `#C8B8A2` oak · `#A0694B` clay · `#DAD4C8` stone.
- **Type:** New York or Hiragino Mincho *(iOS)* for display. SF Pro for UI. Also *Shippori Mincho* or *Noto Serif JP* (Google).
- **Layout:** wide margins, horizontal rhythm, photography of objects, small refined labels.
- **Material:** paper and linen texture at 3–5%, soft natural light photography.
- **Motion:** slow, gentle fades (0.4–0.6 s), no bounce.
- **Fits:** meditation and sleep, tea and coffee, home and interior, journaling, wellness, slow-living e-commerce.
- **HIG risks → fix:** beige-on-beige → ink `#2F2B27`. Moss accent text: check it against bg. Darken it to `#5E6E54` if needed.

## Wabi-Sabi
- **Era:** a traditional Japanese philosophy (beauty in imperfection and transience), usually found on the wiki inside Japandi. Wiki › [Japandi](https://aesthetics.fandom.com/wiki/Japandi)
- **Mood:** quiet, weathered, honest, impermanent.
- **Tells:** irregular hand-made shapes · raw textures (clay, washi, rust) · asymmetry · muted earth tones · visible wear and repair (kintsugi gold seams).
- **Palette:** `#E9E4DA` · `#2B2A28` ink · `#8C7B6B` earth · `#6B705C` lichen · `#B89B5E` kintsugi gold (lines only).
- **Type:** New York *(iOS)*. Brush lettering only as images.
- **Motion:** organic, uneven timing, ink-bleed reveals.
- **Fits:** mindfulness, pottery and craft, journaling, grief and memory apps.
- **HIG risks → fix:** "imperfect" must never mean misaligned controls. Keep the imperfection in illustration and texture.

## Scandinavian
- **Mood:** bright, cozy (hygge), functional, democratic.
- **Tells:** white and pale wood · soft pastels (dusty blue, blush, sage) · simple forms · textiles and knit · lots of natural light.
- **Palette:** `#FFFFFF` · `#F5F3EF` · `#222222` ink · `#6C8EAD` dusty blue · `#E8C5B8` blush · `#A3B18A` sage · `#D8C3A5` birch.
- **Type:** Avenir Next or Gill Sans *(iOS)*. Also *Karla* or *Nunito Sans* (Google).
- **Fits:** family, home, parenting, recipes, reading.
- **HIG risks → fix:** pastels as text → fills only.

## Hollywood Regency
- **Era:** 1920s–1930s (Dorothy Draper, Billy Haines), glamorous homes of movie stars. Wiki › [Hollywood Regency](https://aesthetics.fandom.com/wiki/Hollywood_Regency)
- **Mood:** glamorous, dramatic, witty luxury.
- **Tells:** high-contrast black and white · lacquered jewel colors (emerald, hot pink, peacock) · gold and brass · mirrors, velvet, and lacquer · bold patterns (stripes, chinoiserie).
- **Palette:** `#0D0D0D` · `#FFFFFF` · `#0B6E4F` emerald · `#E0218A` Draper pink · `#C9A227` gold · `#1B4965` peacock.
- **Type:** Didot or Bodoni 72 *(iOS)* for display. SF Pro for UI.
- **Layout:** striped headers, framed portrait cards, mirrored symmetry.
- **Fits:** beauty and fashion, events, luxury booking, dating, cocktails.
- **HIG risks → fix:** pink on black text → check 4.5:1. Stripe patterns behind text → never.

## Shabby Chic
- **Wiki:** [Shabby Chic](https://aesthetics.fandom.com/wiki/Shabby_Chic)
- **Mood:** soft, romantic, vintage-cozy, feminine.
- **Tells:** distressed white-painted furniture · faded pastels · rose florals · lace and linen · antique frames.
- **Palette:** `#FBF7F2` · `#FFFFFF` · `#4A3F3A` ink · `#E8B4B8` rose · `#B8D4C8` mint · `#D9C9B6` linen.
- **Type:** Baskerville or Snell Roundhand *(iOS)* (script only for titles).
- **Fits:** weddings, baking, florists, vintage shops, scrapbooking.
- **HIG risks → fix:** faded palette means low contrast → ink stays dark. Keep florals away from text.

## Victorian
- **Era:** 1837–1901. Revivalism (Gothic, Rococo Revival, Neoclassicism) and eclecticism. Wiki › [Victorian](https://aesthetics.fandom.com/wiki/Victorian)
- **Mood:** ornate, dark-romantic, scholarly, collected.
- **Tells:** dense patterns (damask, William Morris-like) · deep jewel tones · ornate frames and engraved illustrations · serif type with flourishes · cabinet-of-curiosities collections.
- **Palette:** `#1F1A17` · `#2E2622` surface · `#EFE6D8` ink · `#7B1E1E` burgundy · `#23483A` bottle green · `#B8943F` brass · `#3B2F5C` plum.
- **Type:** Baskerville, Hoefler Text, or Bodoni 72 *(iOS)*. Also *IM Fell* or *Playfair Display* (Google).
- **Fits:** book and reading apps, mystery games, museums, genealogy, tea rooms, dark academia audiences.
- **HIG risks → fix:** horror vacui → ornament only in frames and headers. Engraving-style illustrations need alt text.

## Industrial
- **Mood:** raw, urban, utilitarian, loft.
- **Tells:** exposed brick, steel, and concrete · Edison bulbs · black metal · reclaimed wood · stencil lettering.
- **Palette:** `#1E1E1E` · `#2B2B2B` · `#EDEAE4` ink · `#B5651D` rust · `#8A8D8F` steel · `#6B4F3A` wood.
- **Type:** DIN Alternate or DIN Condensed *(iOS)*. Stencil for display only (*Stardos Stencil*, Google).
- **Fits:** coffee roasters, breweries, workshops and DIY, coworking, maker tools.

## Bohemian
- **Mood:** free-spirited, warm, eclectic, well-traveled.
- **Tells:** layered textiles and rugs · macramé, rattan, and plants · terracotta, mustard, and teal · global patterns · handwritten touches.
- **Palette:** `#F6EEE3` · `#2C2420` ink · `#C0643F` terracotta · `#D9A441` mustard · `#2F6F6A` teal · `#8E5572` plum.
- **Type:** New York or Avenir Next *(iOS)*. Handwritten accent via *Caveat* (Google).
- **Fits:** travel, yoga, festivals, plant care, handmade marketplaces.
- **HIG risks → fix:** respect cultural sources. Avoid sacred symbols used as decoration.


---

<!-- file: references/catalog-movements.md -->

# Catalog — Design Movements (1890–1990)

These aesthetics were named by design history, not by the internet. They carry authority and read as
"designed" to most audiences.

**Entry key:** Era · Mood · **Tells** · Palette (`bg / surface / ink / accent / expressive…`) · Type
(built into iOS → licensed/free) · Shape & layout · Material & texture · Icons & illustration · Motion ·
**Fits** · **HIG risks → fix** · Wiki

Fonts marked *(iOS)* ship with iOS and can be used with `Font.custom` at no cost.
Everything else must be bundled and licensed. Google Fonts options are free (OFL).

---

## Art Nouveau
- **Era:** 1890s–1910s, Europe. A reaction against industrial mass production. Wiki › [Art Nouveau](https://aesthetics.fandom.com/wiki/Art_Nouveau)
- **Mood:** organic, romantic, hand-crafted, botanical.
- **Tells:** whiplash curves · plant and flower forms framing content · decorative borders and arches · hand-drawn lettering · muted jewel tones with gold.
- **Palette:** `#F3EBDD` parchment · `#E6D8BE` surface · `#2E2A22` ink · `#5E7B4F` sage accent · `#B08D57` antique gold · `#8C4A3B` madder · `#6F8FA3` peacock blue.
- **Type:** display: Papyrus *(iOS)*. Avoid it; it reads as a joke. Better options: *Cinzel Decorative*, *Arsenal*, or *Parisienne* (Google), or a custom Mucha-style display face. Body: New York or Baskerville *(iOS)*.
- **Shape & layout:** arched frames (top-rounded cards), vertical ornamental borders, centered compositions, images framed by vines.
- **Material:** paper grain, stained-glass color blocks, gold foil (subtle gradient).
- **Icons & illustration:** line illustrations with variable stroke width. Custom SF Symbols with flourish terminals only at large sizes.
- **Motion:** slow, growing: lines draw on (`trim`), stems unfurl, 0.6–0.9 s ease-in-out.
- **Fits:** journaling, botany/gardening, tea & perfume, poetry, wedding, tarot, museum guides.
- **HIG risks → fix:** ornamental borders eat the safe area → keep ornaments in content insets, never under bars. Script type is unreadable at body sizes → titles only.

## Art Deco
- **Era:** 1920s–1930s. A reaction to Art Nouveau that borrowed from Constructivism, Futurism, and Egyptian motifs. Wiki › [Art Deco](https://aesthetics.fandom.com/wiki/Art_Deco)
- **Mood:** glamorous, confident, machine-age luxury.
- **Tells:** strict symmetry · sunbursts and fans · stepped (ziggurat) forms · thin gold lines on black · tall condensed geometric capitals.
- **Palette (dark first):** `#0E0E10` lacquer · `#1C1B1F` surface · `#F2E6C9` ivory ink · `#C9A45C` gold accent · `#1F4E4A` emerald · `#7A1F2B` oxblood. Light: `#F5EFE2` bg · `#1A1A1A` ink · `#9C7A34` brass accent (4.5:1 on ivory).
- **Type:** display: Didot, Bodoni 72 Smallcaps, or Copperplate *(iOS)*. Also *Poiret One*, *Limelight*, or *Josefin Sans* (Google). Use all caps with wide tracking (+0.1–0.2 em). Body: SF Pro or New York.
- **Shape & layout:** symmetric, centered hero; chevron and step dividers; double hairline borders; vertical emphasis.
- **Material:** black lacquer, brushed gold (linear gradient `#8C6B2E→#E9D29A→#8C6B2E`), marble, geometric patterns at low opacity.
- **Icons & illustration:** geometric, symmetric, monoline, in gold. Stepped frames around numbers.
- **Motion:** precise and theatrical: fan and sunburst reveals, curtain wipes, gold line sweeps. Slow, dignified springs (bounce 0).
- **Fits:** finance and premium tiers, hospitality, cocktails, events and tickets, luxury retail, and "Gatsby" moments such as a paywall or achievement.
- **HIG risks → fix:** gold on black body text is below 4.5:1 → use ivory for text and gold for lines and accents. All-caps body text → caps only in titles. Symmetry fights leading-aligned lists → symmetry in hero and cards, native lists below.

## Streamline Moderne
- **Era:** 1930s–1940s, the Depression-era offshoot of Art Deco. Wiki › [Art Deco](https://aesthetics.fandom.com/wiki/Art_Deco)
- **Mood:** optimistic, aerodynamic, calm speed.
- **Tells:** horizontal speed lines (3 parallel stripes) · rounded "bullnose" corners · long horizontal forms · chrome · porthole circles.
- **Palette:** `#F4F1EA` cream · `#E3DED3` surface · `#1E2A33` ink · `#2F6F8F` steel-blue accent · `#C7CCD1` chrome · `#D95D39` signal red.
- **Type:** Futura or Avenir Next *(iOS)*. Also *Josefin Sans* or *Righteous* (Google). Italic or oblique for speed words.
- **Shape & layout:** capsule and pill shapes, fully rounded ends (`Capsule()`), triple-line dividers, horizontal scrolling rails.
- **Material:** polished chrome gradients, enamel, bakelite.
- **Motion:** horizontal slides with slight overshoot, like a train pulling in.
- **Fits:** travel and transit, radio and podcasts, retro diners, EV and mobility apps.
- **HIG risks → fix:** chrome gradients on controls → keep them on hero objects and illustrations.

## Bauhaus
- **Era:** 1919–1933, a German school. "Form follows function." Wiki › [Bauhaus](https://aesthetics.fandom.com/wiki/Bauhaus)
- **Mood:** rational, playful-geometric, honest, constructive.
- **Tells:** circle, square, and triangle as building blocks · red, yellow, and blue plus black and white · asymmetric grid · sans-serif lowercase type · no ornament.
- **Palette:** `#F2EFE6` off-white · `#FFFFFF` surface · `#111111` ink · `#D7263D` red · `#F4C300` yellow · `#1B4FA0` blue. Dark: `#121212` bg with the same primaries slightly desaturated.
- **Type:** Futura *(iOS)* is the canonical choice. Also Avenir Next *(iOS)*, *Josefin Sans* or *Jost* (Google), and lowercase headlines. Body: SF Pro.
- **Shape & layout:** strong asymmetric grid, large geometric blocks as the image, flat color fields, heavy black rules.
- **Material:** flat. Optional slight paper grain for print feel.
- **Icons & illustration:** composed from primitives. SF Symbols `circle.fill`, `square.fill`, and `triangle.fill` as a playful vocabulary.
- **Motion:** shapes slide, rotate 90°, and snap into grid positions. Crisp spring (bounce 0.1–0.2).
- **Fits:** education, tools and productivity, architecture, kids' learning (a geometric twist), design and portfolio apps, museums.
- **HIG risks → fix:** yellow on white fails → yellow only as a fill with black text on it. Color-coded meaning → pair each color with a shape.

## De Stijl
- **Era:** 1917–1931, Netherlands (Mondrian, Rietveld). A core modernist movement. Wiki › [Modernism](https://aesthetics.fandom.com/wiki/Modernism)
- **Mood:** pure, balanced, abstract.
- **Tells:** only horizontal and vertical lines · thick black grid lines · rectangles of pure primaries on white · asymmetric balance.
- **Palette:** `#FFFFFF` · `#111111` · `#DD1F26` · `#FFD400` · `#1B3F99`. Gray `#D9D9D9` as a fourth.
- **Type:** Helvetica Neue or Futura *(iOS)*. Blocky, heavy weights.
- **Shape & layout:** the grid *is* the layout. Mondrian-style tiled dashboards. Radius 0.
- **Motion:** tiles resize along grid lines, with no diagonals and no rotation.
- **Fits:** dashboards and widgets (tiles map naturally to widget sizes), calendar and time blocking, art education.
- **HIG risks → fix:** zero radius clashes with Liquid Glass controls → square in content only. Primaries as data colors → add labels.

## Constructivism
- **Era:** 1915–1930s, Russia. Art as a tool for society. Wiki › [Modernism](https://aesthetics.fandom.com/wiki/Modernism)
- **Mood:** urgent, dynamic, collective, propagandistic.
- **Tells:** strong diagonals (15–45°) · red, black, and cream · photomontage · bold sans capitals on angled bands · wedge and circle compositions.
- **Palette:** `#EFE6D2` cream · `#111111` ink · `#C8102E` red accent · `#6B6B6B` gray.
- **Type:** Futura Condensed ExtraBold or Avenir Next Condensed Heavy *(iOS)*. Also *Oswald* or *Russo One* (Google). Rotated display text.
- **Shape & layout:** diagonal bands behind headers, overlapping photo cutouts, big numbers.
- **Motion:** fast diagonal slams, 150–250 ms, with a stiff spring.
- **Fits:** activism and petitions, sports and fitness challenges, news, event posters, bold campaigns.
- **HIG risks → fix:** rotated text isn't readable by VoiceOver in order and doesn't scale → rotate only decorative duplicates, and keep the real title horizontal. It can read as political → use its energy, not its symbols.

## Swiss Design (International Typographic Style)
- **Era:** 1950s–1970s, Switzerland. The root of Flat Design. Wiki › [Flat Design](https://aesthetics.fandom.com/wiki/Flat_Design)
- **Mood:** objective, clear, confident, timeless.
- **Tells:** strict modular grid · flush-left, ragged-right grotesque type · huge type scale contrast · asymmetric white space · a single red accent · objective photography.
- **Palette:** `#FFFFFF` · `#F2F2F2` · `#111111` ink · `#E30613` Swiss red · `#6E6E6E` secondary. Dark: `#0B0B0B` with white type and the same red.
- **Type:** Helvetica Neue *(iOS)*. SF Pro is a near relative; SF Pro heavy/black weights work well. Also *Inter* (Google). Numbers set big.
- **Shape & layout:** 12-column mindset on 402 pt: 16–20 pt margins, 8 pt baseline. Headline at 64–96 pt left-aligned against small body text. Hairline rules.
- **Material:** none. Pure flat.
- **Icons:** SF Symbols as-is; they already fit.
- **Motion:** minimal and exact: fades and short slides along the grid, snappy spring, no bounce.
- **Fits:** almost anything that values clarity: news, transit, finance, weather, tools, pro apps. The safest "designed" option.
- **HIG risks → fix:** very low risk. Huge headlines must scale with Dynamic Type or reflow at AX sizes.

## Mid-Century Modern
- **Era:** about 1945–1973, US and Scandinavia (Eames, Saarinen). Wiki › [Mid-Century Modern](https://aesthetics.fandom.com/wiki/Mid-Century_Modern)
- **Mood:** warm, optimistic, organic-modern, hospitable.
- **Tells:** clean lines with gentle organic curves · walnut and teak · mustard, orange, olive, and teal · atomic starbursts and boomerangs (lightly) · tapered legs as a visual motif.
- **Palette:** `#F4ECDD` cream · `#FFF8EC` surface · `#2B2420` ink · `#D9822B` burnt-orange accent · `#E1B12C` mustard · `#5E7D4A` olive · `#2A7F7A` teal · `#7A4E2D` walnut.
- **Type:** Avenir Next, Futura, or Gill Sans *(iOS)*. Also *Josefin Sans* or *Poppins* (Google). Script accent: Snell Roundhand *(iOS)*, sparingly.
- **Shape & layout:** rounded rectangles, kidney and pill shapes, generous warm spacing, offset circles.
- **Material:** wood grain (subtle), paper, felt. Muted, not glossy.
- **Icons & illustration:** flat illustration with limited palette and offset print misregistration.
- **Motion:** friendly and smooth. Medium springs with a small bounce (0.15).
- **Fits:** home and interior, cooking, hospitality, real estate, family apps, lifestyle subscriptions.
- **HIG risks → fix:** mustard and orange as text on cream fail → use them as fills, and darken the orange to `#A85E17` for text.

## Atomic Age
- **Era:** about 1940s–1960s, nuclear-optimism culture. Wiki › [Atomic Age](https://aesthetics.fandom.com/wiki/Atomic_Age)
- **Mood:** cheerful science, suburban optimism.
- **Tells:** atom and orbit motifs · starbursts · boomerang shapes · pastel turquoise and pink with black.
- **Palette:** `#FBF5E9` · `#1C1C1C` ink · `#3FB8AF` turquoise · `#F28C8C` coral pink · `#F2C14E` yellow.
- **Type:** Futura or Marker Felt *(iOS)*, used carefully. Also *Righteous* or *Pacifico* (Google).
- **Motion:** orbiting elements for loading, small sparkle bursts on success.
- **Fits:** science education, kids, retro games, diners.
- **HIG risks → fix:** a busy background pattern → keep it under 10% opacity and behind no text.

## Googie
- **Era:** late 1940s to early 1970s, Southern California roadside architecture. Wiki › [Googie](https://aesthetics.fandom.com/wiki/Googie)
- **Mood:** exuberant, car-culture, futuristic fun.
- **Tells:** upswept, cantilevered angles · boomerangs and parabolas · starbursts and flying saucers · neon signage · chrome.
- **Palette:** `#0F1E2E` night · `#FFF6E5` ink on dark · `#FF5E5B` neon red · `#00CECB` neon aqua · `#FFED66` sign yellow.
- **Type:** Marker Felt or Chalkboard SE *(iOS)* feel too casual. Better options: *Monoton*, *Lobster*, *Righteous* (Google), or neon-sign script for display.
- **Shape & layout:** angled cards (skewed headers), sign-like badges, starburst price stickers.
- **Material:** neon glow (`shadow` with an accent color, 2 layers), chrome.
- **Motion:** neon flicker-on (once, on reveal), rotating starbursts.
- **Fits:** food ordering and diners, road trips, retro games, drive-in cinemas.
- **HIG risks → fix:** flicker → never loop it, and disable it with Reduce Motion (photosensitivity). Neon on dark text → the glow is decoration; text stays solid.

## Space Age
- **Era:** mid-1950s to early 1970s, the Space Race. Wiki › [Space Age](https://aesthetics.fandom.com/wiki/Space_Age)
- **Mood:** clean, futuristic, playful-optimistic.
- **Tells:** white molded plastic · orange and white · spheres, eggs, and pod shapes · round windows · ergonomic curves.
- **Palette:** `#FFFFFF` · `#F2F0EB` · `#1A1A1A` ink · `#F26B1D` space orange · `#C5C8CC` aluminum · `#2E86AB` sky.
- **Type:** Avenir Next or Futura *(iOS)*. Also *Space Grotesk* or *Orbitron* (Google, for display).
- **Shape & layout:** large radii (continuous corners 28–40 pt), circular media, pod cards.
- **Material:** glossy white plastic (soft specular highlight), brushed aluminum.
- **Motion:** smooth, floaty, zero-gravity drift, low-stiffness springs.
- **Fits:** astronomy, smart home, audio, kids' science, futuristic but friendly products.
- **HIG risks → fix:** low risk. Keep glossy highlights off controls.

## Brutalism
- **Era:** 1950s–1970s architecture, UK then international. Raw concrete. Wiki › [Brutalism](https://aesthetics.fandom.com/wiki/Brutalism). (For the web and UI revival, see Neubrutalism in the digital catalog.)
- **Mood:** raw, monumental, honest, severe.
- **Tells:** exposed concrete gray · massive blocks · repetitive modular forms · heavy shadows · little or no color.
- **Palette:** `#BDBAB3` concrete · `#D6D3CC` surface · `#1B1B1B` ink · `#595754` shadow · one accent only if needed: `#C1440E` rust.
- **Type:** Helvetica Neue Condensed Black, Avenir Next Condensed Heavy, or Menlo *(iOS)*. Also *Archivo Black* or *Space Mono* (Google).
- **Shape & layout:** big blocks, zero or small radius, stacked slabs, stark grid, lots of heavy dark space.
- **Material:** concrete texture (noise plus a subtle stain), raw photography.
- **Motion:** heavy, weighty: slow start, firm stop, no bounce. A haptic `.heavy` impact on landing.
- **Fits:** architecture, photography portfolios, music (techno, industrial), editorial, serious tools.
- **HIG risks → fix:** gray-on-gray text fails → ink `#1B1B1B` on concrete. Heaviness can hide affordances → system buttons stay clear.

## Memphis Design
- **Era:** 1980s. Memphis Group, Milan (Ettore Sottsass, 1980). Wiki › [Memphis Design](https://aesthetics.fandom.com/wiki/Memphis_Design)
- **Mood:** playful, loud, anti-serious, pop.
- **Tells:** squiggles, zig-zags, confetti · clashing neon and pastel · black-and-white terrazzo and grid patterns · geometric shapes as objects · offset shadows.
- **Palette:** `#FFF8F0` · `#111111` ink · `#FF4F79` hot pink · `#00B2CA` teal · `#FFD23F` yellow · `#7D5BA6` purple · `#3BCEAC` mint.
- **Type:** Futura Bold or Avenir Next Heavy *(iOS)*. Also *Rubik Mono One*, *Bungee*, or *Fredoka* (Google).
- **Shape & layout:** floating shapes around the hero, sticker badges, patterned headers, hard 4–6 pt offset shadows in black.
- **Material:** flat pattern fills (dots, grid, squiggle), terrazzo.
- **Motion:** bouncy (bounce 0.3–0.4), wiggles, shapes pop in with stagger.
- **Fits:** kids, party and events, games, creative tools, snack and consumer brands, onboarding celebrations.
- **HIG risks → fix:** noise behind text → a pattern only in margins and headers. Too much on every screen → Memphis in the hero, empty states, and celebrations, with calm lists.

## Retrofuturism
- **Era:** the future as imagined in the past (1930s–1980s). An umbrella for Atomic Age, Googie, Space Age, and Cassette Futurism. Wiki › [Retrofuturism](https://aesthetics.fandom.com/wiki/Retrofuturism)
- **Use it as:** a family choice. Pick the decade first, then use that entry.


---

<!-- file: references/selection-guide.md -->

# Selection Guide — choosing, pairing, and translating an aesthetic

## 1. Pick by emotional job

| Emotional job | Safe | Characterful | Bold |
|---|---|---|---|
| Calm, focused | Minimalism | Japandi | Wabi-Sabi |
| Trustworthy, precise | Swiss Design | Bauhaus | De Stijl |
| Warm, homey | Scandinavian | Mid-Century Modern | Bohemian |
| Luxurious, premium | Minimalism (monochrome) | Art Deco | Hollywood Regency |
| Playful, joyful | Bright Tertiaries | Memphis Design | Maximalism |
| Nostalgic (millennial) | Skeuomorphism (hero object) | Frutiger Aero | Y2K Futurism |
| Nostalgic (Gen X / analog) | Mid-Century Modern | Cassette Futurism | Googie |
| Futuristic, techy | Glassmorphism (native) | Space Age | Vectorheart / Metalheart |
| Energetic, urgent | Swiss Design (red) | Neubrutalism | Constructivism |
| Romantic, crafted | Scandinavian | Art Nouveau | Victorian |
| Raw, honest, indie | Swiss Design | Neubrutalism | Brutalism |
| Cute but clean | SF Pro Rounded + pastels | Technozen | Y2K (candy plastic) |
| Fresh, natural, eco | Scandinavian | Frutiger Eco | Frutiger Aero |

## 2. Pick by product type (starting points, not rules)

| Product | Strong fits | Usually avoid |
|---|---|---|
| Finance, banking | Swiss Design, Art Deco (premium tier), Bauhaus | Memphis, Shabby Chic, Metalheart |
| Health, meditation, sleep | Japandi, Minimalism, Wabi-Sabi, Frutiger Aero (hydration) | Constructivism, Neubrutalism |
| Productivity, notes | Swiss Design, Neubrutalism, Bauhaus, Technozen | Victorian, Maximalism |
| Music, audio | Cassette Futurism, Vectordelia, Y2K, Skeuomorphism (instruments) | Shabby Chic |
| Kids, education | Bauhaus, Memphis, Bright Tertiaries, Atomic Age | Brutalism, Metalheart |
| Food, recipes, restaurants | Mid-Century Modern, Googie (diners), Scandinavian, Bohemian | De Stijl |
| Travel | Streamline Moderne, Mid-Century Modern, Bohemian | Neumorphism |
| Fashion, beauty | Hollywood Regency, Y2K, Art Deco, Maximalism | Industrial |
| Social, Gen Z | Y2K, Neubrutalism, Maximalism, Frutiger Aero (ironic nostalgia) | Corporate Memphis |
| Developer, pro tools | Swiss Design, Cassette Futurism, Brutalism | Shabby Chic, Hollywood Regency |
| Games | Anything with commitment; Googie, Metalheart, Memphis, Victorian | Flat Design (too plain) |
| Sustainability, energy | Frutiger Eco, Scandinavian, Swiss Design (data) | Hollywood Regency |

## 3. Audience and nostalgia
- An aesthetic reads as **nostalgia** to people who were about 8–20 years old during its era, and as **novelty** to younger people.
  Frutiger Aero and Y2K target people born roughly 1990–2005. Mid-Century and Space Age read as "classic" to most.
- Internet-named aesthetics (Frutiger Aero, Vectordelia, Metalheart, Technozen) are **insider references**.
  They work for audiences who know the terms, and simply look "2008" to others. Use them on purpose.
- Movements (Bauhaus, Swiss, Deco, Mid-Century) carry **cultural authority** and read as "well designed" to almost everyone.

## 4. Pairings (primary + accent)

| Primary | Good accent | Why | Avoid |
|---|---|---|---|
| Swiss Design | Bauhaus (shapes in illustration) | Same rational roots | Victorian |
| Swiss Design | Neubrutalism (cards) | Grid + raw energy | Neumorphism |
| Japandi | Wabi-Sabi (texture) | Same philosophy | Memphis |
| Mid-Century Modern | Atomic Age (motifs) | Same era | Y2K |
| Art Deco | Streamline Moderne (motion) | Direct descendant | Shabby Chic |
| Frutiger Aero | Skeuomorphism (hero object) | Same era | Brutalism |
| Y2K Futurism | Vectorheart (type and graphics) | Same years | Japandi |
| Neubrutalism | Memphis (stickers and patterns) | Both loud and flat | Glassmorphism |
| Glassmorphism (native) | Any vivid content aesthetic | Glass needs rich content to refract | More custom glass |
| Minimalism | One bold display font from Deco, Googie, or Vectorheart | Tension from a single loud element | A second loud element |

Rule: the accent may add **one** layer (texture *or* illustration *or* motion *or* display type).

## 5. Translation — aesthetic → iOS

| Aesthetic trait | iOS implementation |
|---|---|
| Palette | `Color` assets with Any/Dark + High Contrast variants. The accent goes in `.tint()`. Expressive colors live in content only. |
| Display type | `Font.custom(name, size:, relativeTo: .largeTitle)` so it scales. Built-in faces need no bundling. Check `UIFont.familyNames`. |
| SF Pro variants | `.fontWidth(.expanded/.condensed/.compressed)`, `.fontDesign(.rounded/.serif/.monospaced)`. Most tech eras can be done with SF alone. |
| Shapes & radii | `RoundedRectangle(cornerRadius:, style: .continuous)`, `Capsule()`, and custom `Shape` for chamfers and arches. Keep system control shapes. |
| Hard offset shadow (Neubrutalism, Memphis) | `.shadow(color: .black, radius: 0, x: 4, y: 4)` plus a stroke overlay. Collapse it on press. |
| Soft paired shadows (Neumorphism) | two `.shadow` modifiers (light −x−y, dark +x+y). Content objects only. |
| Gloss, chrome, iridescence | `LinearGradient` highlight overlays, `MeshGradient` (iOS 18+), `AngularGradient` for iridescence. |
| Texture, grain, paper | a tiled noise image at 3–8% opacity, or `Canvas`. Turn it off with Reduce Transparency if it harms legibility. |
| Patterns (Memphis, Deco, Victorian) | `Canvas` or tiled images behind content headers only. |
| Glass | system Liquid Glass on bars and controls. Custom floating controls use `.glassEffect()`. Never on content. |
| Glow, neon | layered `.shadow(color: accent, radius: 8)` on shapes. Text keeps a solid fill. |
| Scanlines, CRT | overlay on specific hero views, never the whole window. |
| Custom icons | custom SF Symbols (template from SF Symbols app) matched to text weight. Style shows in terminals, fills, and detail. |
| Motion personality | springs from `apple-motion-and-delight`. Stepped (Cassette), bouncy (Memphis), slow (Japandi), heavy (Brutalism), precise (Swiss). |
| Haptics | `.sensoryFeedback`: `.rigid` (Neubrutalism, Cassette), `.soft` (Japandi, Aero), `.heavy` (Brutalism). |
| App icon | the single strongest tell. Test the dark, clear, and tinted variants. |

## 6. Self-check before delivering
- Could someone name the aesthetic from a screenshot without being told? If not, push the tells.
- Does any tell sit on a system control? Move it to content.
- Light, dark, and increased contrast all designed? Body text 4.5:1?
- Does the app still work at AX5 Dynamic Type with the display font?
- With Reduce Motion and Reduce Transparency on, does it still look like the aesthetic? (The palette and type should carry it.)


# ===== SKILL: apple-hig-color =====

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


# ===== SKILL: apple-hig-components =====

---
name: apple-hig-components
description: Choose and configure the right Apple HIG component for iPhone/iPad apps — tab bars, navigation bars, toolbars, sidebars, sheets, alerts, action sheets (confirmation dialogs), menus, popovers, buttons, lists, text fields, pickers, toggles, segmented controls, search. Use when deciding "which component should I use", placing actions, designing navigation structure, or checking a component against Apple's rules.
---

# Apple HIG — Components (iOS / iPadOS)

Act as a senior iOS designer. For every component question: **name the right system component,
say why the alternatives are wrong, and give the placement/config rules.** Cite HIG pages
(*HIG › Tab bars*, etc.). Assume iOS 26 (Liquid Glass) unless told otherwise.

## Step 1 — Pick the component with these decision tables

### Navigation structure

| Situation | Use | Not |
|---|---|---|
| 2–5 top-level peer sections used often (convention: ≤5 on iPhone) | **Tab bar** | Hamburger/drawer menu (not an iOS pattern) |
| Many sections or deep hierarchy on iPad | **Sidebar** or tab bar that converts to sidebar | Overflowing tab bar with "More" |
| Drill-down from general to specific | **Navigation stack** (push) with Back button | Modal sheets chained together |
| Switch between views of the *same* content (e.g. Day/Week/Month) | **Segmented control** | Tab bar |
| Search is a primary activity | **Search tab** at trailing end of tab bar | Search buried in a submenu |
| Search within one list | **Search field** in the navigation bar / toolbar | Custom search screen |
| Paged, equal-weight content (onboarding, photos) | Horizontal paging + **page control** | Tab bar |

### Presenting content & choices

| Situation | Use | Not |
|---|---|---|
| Short, self-contained task (compose, edit, add) | **Sheet** (medium/large detents) | Push navigation |
| Immersive or complex multistep task (camera, video, editor) | **Full-screen modal** | Sheet |
| Critical info needing a decision (e.g. unexpected data loss, failure) | **Alert** (≤2–3 buttons) | Alert for routine info |
| Choices resulting from an intentional action ("Discard draft?") | **Action sheet / confirmation dialog** | Alert |
| List of commands from a button (sort, filter, more) | **Menu** (pull-down) | Action sheet |
| Commands on an item (long-press) | **Context menu** | Hidden gesture only |
| Supplementary info/controls on iPad (regular width) | **Popover** | Full sheet |
| Non-critical status ("Saved", "Copied") | Inline status / transient HUD-style banner in content | Alert |
| Share content | System **activity view** (share sheet) | Custom share UI |

### Controls

| Need | Use |
|---|---|
| Binary setting, instant effect | **Toggle** (switch) |
| One of 2–5 mutually exclusive options, visible | **Segmented control** |
| One of many options | **Menu / pop-up button** or navigation to a list with checkmarks |
| Date/time | **Date picker** (compact style inline, wheels only for special cases) |
| Continuous value | **Slider** |
| Small numeric increments | **Stepper** |
| Short text (name, email) | **Text field** with correct keyboard type |
| Long text | **Text view** |
| Primary action on screen | **Prominent (filled) button** — max 1–2 per view |
| Task progress | Determinate **progress bar**; activity indicator only when duration is unknown |

## Step 2 — Apply the component rules

### Tab bar (*HIG › Tab bars*)
- For **navigation only**, never actions (no "+" tab that opens a composer — put that in a toolbar or as a button).
- Floats above content on Liquid Glass at the bottom. Can **minimize on scroll** when it has an accessory (e.g. mini player).
- Always visible across sections; only a modal may cover it.
- Every tab: **SF Symbol + short label** (single word ideally).
- Never disable or hide tabs; if empty, explain why inside the tab.
- Badges only for critical/new information (red oval, number or "!").
- Prefer monochrome labels if content is colorful; avoid label colors close to content colors.
- Avoid overflow ("More") tabs — reduce sections or use a sidebar-adaptable tab bar on iPad.
- Each tab keeps its own navigation stack; re-tapping the active tab pops to root / scrolls to top.

### Navigation bar & toolbar (*HIG › Toolbars*)
- Title: concise (< ~15 chars), describes the view — **never the app name**. **Large title** at the root
  of a hierarchy, collapsing to inline on scroll.
- Use the **standard Back** (chevron) and **Close** (`xmark`) buttons; don't write "Back"/"Close" text.
- Leading: Back/Close/Cancel. Trailing: actions, with the **one primary action** (Done, Save, Send) at
  the far trailing end in the prominent style.
- Prefer plain SF Symbols without borders/circles; text only for actions symbols can't express (e.g. "Edit").
- Max ~3 item groups; don't put a text-labeled item directly beside a symbol item.
- Overflow extra actions into a **More** (`ellipsis`) menu.
- Minimize custom bar backgrounds and tints — let the content inform the look.

### Sheets (*HIG › Sheets*)
- One sheet at a time from the main UI; never stack sheet on sheet.
- Resizable sheets: include a **grabber**; consider **medium detent** for progressive disclosure on iPhone.
- **Swipe down to dismiss**; if there are unsaved changes, confirm with an action sheet (Discard / Keep Editing).
- Done must be paired with Cancel (or Back for a multistep sheet).
- Title names the task (e.g. "New Reminder").
- Avoid deep navigation hierarchies inside a sheet; if needed, one clear path back.

### Alerts (*HIG › Alerts*)
- Rare. Not for purely informational messages, not for undoable destructive actions, **not at launch**.
- Title: specific description of the situation. Message: only if it adds value, full sentences.
- Buttons: 1–2 words, verbs tied to the alert ("Delete", "Try Again"). Avoid "OK" unless purely informational.
- Cancel is always titled **"Cancel"**, never the default button. Destructive style only when the
  person didn't deliberately choose the destructive action.
- Default/most-likely button on the trailing side (row) or top (stack). Avoid scrolling alerts.

### Action sheets / confirmation dialogs (*HIG › Action sheets*)
- For choices tied to an intentional action. Short one-line title; message only if needed.
- Destructive option styled destructive and near the top; **Cancel** included (bottom).
- Don't let it scroll — too many options means use a menu or a new view.

### Menus & context menus (*HIG › Menus*)
- Labels: verbs, title-style capitalization; ellipsis (…) when more input is needed.
- Most-used first; group related items with separators; keep submenus to one level, ≤ ~5 items.
- Use the system's icons for system actions (Copy, Share, Delete). Omit icons you can't make clear.
- Toggled items: a checkmark or state-describing label ("Show Map" ↔ "Hide Map").
- Consider small/medium menu layout for top 3–4 quick actions.

### Buttons (*HIG › Buttons*)
- Hit region ≥ **44×44 pt**. Always show a **pressed state** on custom buttons.
- One (max two) **prominent** buttons per view for the most likely action; others bordered/plain.
- Differentiate the preferred choice by **style, not size**.
- Never give the primary/prominent role to a **destructive** action.
- Inset from screen edges (avoid full-width); use capsule/rounded shapes concentric with container.
- For actions that take time, show an activity indicator **inside** the button and disable re-taps.
- Label: verb or verb phrase, title-style capitalization ("Add to Cart").

### Lists & tables (*HIG › Lists and tables*)
- Best for text and scannable data. **Inset grouped** for settings/forms; **plain** for feeds/content lists.
- Row feedback: navigation rows show a **disclosure chevron** and highlight; toggle rows change state inline.
- Swipe actions for frequent row operations (Delete trailing, destructive red; Pin/Flag leading) —
  also exposed in context menu/Edit mode for accessibility.
- Info (ⓘ) button reveals details only — not for navigation.
- No section index alongside trailing disclosure controls.
- Keep row text succinct; at AX sizes let rows grow in height.

### Text fields (*HIG › Text fields*)
- Visible **label** above (or leading) — don't rely on placeholder alone; placeholder is a hint.
- Right **keyboard type** and **text content type** (email, phone, one-time code, new password) for AutoFill.
- Secure field for passwords; offer show/hide.
- Clear button (trailing) for editable fields.
- Validate at the right time (on submit or when leaving the field, not per keystroke for most cases);
  show errors inline below the field with a symbol + text.
- Stack fields vertically; logical Return-key progression (Next → Next → Done/Go).

### Search (*HIG › Searching, Search fields*)
- Placeholder names what's searchable ("Recipes, Ingredients").
- Show recent searches and suggestions; respect privacy (allow clearing history).
- Show scope clearly (scope bar/tokens). One search location for the whole app when possible.
- Index content in Spotlight where useful.

### Toggles, pickers, segmented controls, sliders
- **Toggle**: immediate effect, label describes the "on" state; don't pair with a Save button.
- **Segmented control**: ≤ ~5 segments, equal-width, text *or* symbols (not mixed); switches views of the same content.
- **Pickers**: prefer compact date picker; wheels only when the value set is small and ordered.
- **Slider**: include min/max icons or labels when meaning isn't obvious; show value if precision matters.

## Output format for component recommendations

```
Recommendation: <component>  (HIG › <page>)
Why: <1–2 sentences tied to the user's situation>
Rejected: <alternative> — <reason>
Configuration:
- Placement: …
- Content/labels: …
- States: default / pressed / disabled / loading / error
- Accessibility: label, traits, Dynamic Type behavior
SwiftUI/UIKit: <component name, e.g. TabView, .sheet(presentationDetents:), .confirmationDialog, Menu>
```

## Reference files

| File | Load when |
|---|---|
| `references/navigation.md` | Designing app information architecture, tab/sidebar/stack structure, deep links |
| `references/presentation.md` | Choosing between sheet, full-screen, popover, alert, action sheet, menu; dismissal rules |
| `references/controls.md` | Detailed control states, sizes, and label rules |


---

<!-- file: references/controls.md -->

# Controls — reference

Sources: HIG › Buttons, Toggles, Pickers, Segmented controls, Sliders, Steppers, Text fields,
Progress indicators, Lists and tables.

## Required states for every interactive component

| State | Specify |
|---|---|
| Default | Style, label, symbol |
| Pressed / highlighted | Visual change (system dims or glass responds; custom buttons **must** have one) |
| Focused | For keyboard/pointer (iPad) |
| Disabled | Reduced emphasis; explain why nearby if not obvious |
| Loading | Activity indicator in place; prevent repeat taps |
| Selected / On | For toggles, segments, chips |
| Error | Inline message + symbol, not color alone |

## Buttons

| Style | Use |
|---|---|
| Prominent / filled (accent background) | The single most likely action on the view |
| Bordered / tinted | Secondary actions |
| Borderless / plain | Tertiary actions, inline links, toolbar items |
| Destructive role | Red text/tint for delete/remove — never the prominent style |
| Glass (iOS 26, custom floating) | Floating controls over content; sparingly |

- Sizes: small / medium / large control sizes; hit area always ≥44×44 pt even if visuals are smaller.
- Content: symbol, text, or both. Title-style capitalization. Verb first.
- Two buttons in a row for a choice: same size; distinguish preferred with prominence.
- Stack vertically at large Dynamic Type sizes.

## Toggles

- Use for on/off with immediate effect. Label describes what's enabled ("Show Previews").
- In lists: label leading, switch trailing; whole row is not a separate tap target.
- Don't use a toggle for actions (use a button) or for choices between two non-opposite options (use segmented control).
- Custom toggle tint only when it helps; the "on" color must not be the only indicator of state
  (system switch includes an on/off shape difference with Differentiate Without Color / On-Off labels).

## Segmented control

- 2–5 segments; equal widths; all text or all symbols.
- Changes the view of the same content or a mode; not for navigation between unrelated areas.
- Short labels (1 word); avoid truncation at larger text sizes — switch to a menu if needed.

## Pickers & menus for selection

| Options | Use |
|---|---|
| 2–5, visible | Segmented control |
| Few, not frequently changed | Pop-up menu button (shows current value) |
| Many, need description | Push to a list with checkmark on the selected row |
| Date/time | Compact date picker; graphical calendar for date ranges/planning |

## Sliders & steppers

- Slider: continuous values where precision isn't crucial; min/max symbols (e.g. `speaker` / `speaker.wave.3`).
- Stepper: small discrete increments; show the current value in an adjacent label.

## Text input

| Field | Keyboard | Content type / behavior |
|---|---|---|
| Email | email | `emailAddress`, no autocapitalize, no autocorrect |
| Password (sign in) | default secure | `password`, show/hide toggle |
| New password | secure | `newPassword` (enables strong password suggestion) |
| One-time code | number pad | `oneTimeCode` (auto-fill from Messages) |
| Phone | phone pad | `telephoneNumber` |
| Name | default | `name` / `givenName` / `familyName`, word autocapitalize |
| URL | URL | `URL` |
| Amount | decimal pad | number formatter, currency symbol outside the edit |

- Labels always visible; placeholder is an example ("name@example.com"), not the label.
- Error message below the field: `exclamationmark.circle.fill` + concise fix-oriented text
  ("Enter an email address like name@example.com").
- Keep the focused field and primary action visible above the keyboard.

## Progress

- **Determinate** progress bar when duration/quantity is known.
- **Indeterminate** spinner only for short, unknown waits; add a label for waits over a few seconds.
- Prefer **skeleton / placeholder content** for loading content areas rather than a centered spinner.
- Pull-to-refresh uses the system refresh control.

## Lists

- Row height grows with content; minimum row height ≈ 44 pt.
- Leading image/symbol, title (Body), subtitle (Subheadline/Footnote, secondary label), trailing
  accessory (value, chevron, toggle, info button).
- Separators inset to text start (system default).
- Grouped (inset) style: section headers (short, sentence case) and footers for explanations.


---

<!-- file: references/navigation.md -->

# Navigation — reference

Sources: HIG › Tab bars, Toolbars, Sidebars, Navigation and search, Layout (iPadOS).

## The three iOS navigation models

1. **Hierarchical** — push/pop through a stack (Settings, Mail). One path to each screen.
2. **Flat** — switch among peer top-level sections (tab bar: Music, App Store).
3. **Content-driven** — navigation follows the content (games, books, paged media).

Most apps: **flat at the top (tabs) + hierarchical within each tab.**

## Designing the information architecture

1. List user jobs by frequency. The top 3–5 frequent, distinct jobs become tabs.
2. Everything else goes: inside a tab (hierarchy), in a menu, in a sheet (task), or in Settings.
3. Name tabs with nouns describing content ("Library", "Search", "Profile"), not verbs.
4. Tab order: most important / default tab first (leading). Search tab (if any) at trailing end.
5. Profile/account: a tab only if people visit often; otherwise an avatar button in the navigation bar
   of the main tab opening a sheet.
6. Settings: in-app settings screen for app-specific options; don't duplicate system settings.

## Tab bar anatomy (iOS 26)

- Floating Liquid Glass bar near the bottom; content scrolls beneath it.
- Items: SF Symbol + label. Selected state uses the tint color; unselected is monochrome.
- Optional **accessory** above it (e.g. mini player); the bar can **minimize on scroll**, returning when
  people scroll up or tap.
- Optional distinct **search tab** at the trailing end.
- Badges: red with number or "!", only for important new content.
- iPad: tab bar at the top; can convert to a **sidebar** (people can switch); allow customization if many sections.

## Navigation bar behaviors

- Root views: **large title**, collapses to inline when scrolling.
- Pushed views: inline title; Back button shows the previous title (system handles truncation to "Back"-less chevron).
- Swipe from leading edge to go back — **never block it** with a custom gesture.
- Don't hide the navigation bar on detail screens unless the content is immersive (photo viewer), and
  then restore it with a tap.

## Sidebars (iPad, regular width)

- Use for apps with many top-level areas or user-created collections (Mail folders, Notes folders).
- Keep hierarchy shallow (≤2 levels in the sidebar); use SF Symbols for items.
- Let people hide the sidebar to focus on content.
- Compact width: sidebar collapses to a tab bar or navigation stack — design both.

## State restoration & deep links

- Relaunch returns people to where they were (tab, scroll position, draft).
- Every deep link lands in the correct tab with a correct back stack (so Back makes sense).
- Notifications open the specific item, not the app's home screen.

## Anti-patterns to flag

| Anti-pattern | Fix |
|---|---|
| Hamburger / side drawer menu on iPhone | Tab bar; move low-frequency items into Settings or a More menu |
| Action tab ("+" in the tab bar) | Toolbar/navigation bar button or floating button within content |
| Hiding the tab bar on pushed screens | Keep it visible; only modals cover it |
| Custom back button with text "Back" | System back chevron |
| Modal inside modal inside modal | One sheet; use navigation inside it or rethink the flow |
| Tabs that change depending on state (disabled/hidden) | Stable tabs; explain empty states inside |
| More than 5 tabs on iPhone | Merge sections, or sidebar-adaptable tab bar on iPad |


---

<!-- file: references/presentation.md -->

# Presentation & Modality — reference

Sources: HIG › Modality, Sheets, Alerts, Action sheets, Popovers, Menus, Activity views.

## Choosing a presentation

```
Is it navigation deeper into content? ──yes──> Push onto navigation stack
        │no
Is it a self-contained task (create/edit/pick)?
        ├─ short / simple ──> Sheet (medium or large detent)
        └─ immersive / multistep / media ──> Full-screen modal
Is it a critical problem needing a decision? ──> Alert
Is it clarifying choices for an action the person just took? ──> Action sheet (confirmation dialog)
Is it a list of commands from a control? ──> Menu
Is it supplementary content anchored to a control on iPad? ──> Popover (becomes sheet in compact width)
Is it non-critical status/confirmation? ──> Inline feedback in the content, not a modal
```

## Modality rules (*HIG › Modality*)

- Present modally only when there's a clear benefit: focus or a decision.
- Keep modal tasks **short and simple**; avoid "an app within your app".
- Always an **obvious way to dismiss**: toolbar button (Cancel/Close) and, for sheets, swipe down.
- **Protect user data**: if dismissing loses content, confirm (action sheet: "Discard Changes" destructive / "Keep Editing").
- Title the modal with its task.
- Don't present a modal from a modal; let people dismiss one before presenting another.

## Sheet configuration (iPhone)

| Content | Detents | Notes |
|---|---|---|
| Quick picker / share / filters | medium + large | Grabber visible; most relevant items fit in medium |
| Compose / long form | large only | Like Mail/Messages compose |
| Persistent companion panel (maps-style) | custom small + medium + large, non-modal | Background stays interactive at small detent |

Toolbar inside sheet: Cancel (leading) · Title · Done/Add/Save (trailing, prominent).
Disable the trailing confirm action until the form is valid.

## Alerts — copy templates

| Situation | Title | Message | Buttons |
|---|---|---|---|
| Irreversible, unexpected loss | "Delete 'Trip Plan'?" | "This note will be deleted from all your devices." | Cancel · **Delete** (destructive) |
| Failure with retry | "Couldn't Upload Photo" | "Check your connection and try again." | Cancel · **Try Again** |
| Needs permission settings | "Camera Access Is Off" | "To scan receipts, allow camera access in Settings." | Not Now · **Open Settings** |

Rules: sentence-case message with punctuation; title-style or sentence-style title consistently;
never blame the user; no "Error:" prefixes or codes in the title.

## Action sheet / confirmation dialog

- Triggered by a deliberate action: "Leave Group?", "Discard Draft?".
- Destructive option first (red), alternatives next, **Cancel** last.
- Keep ≤ ~4 options; no scrolling.
- On iPad it appears as a popover anchored to the source control.

## Popovers (iPad)

- Anchored with an arrow to the control that triggered it.
- Dismiss by tapping outside; no need for a Close button unless it contains a task with Done/Cancel.
- Don't show more than one at a time; don't cover the source control.
- In compact width, it automatically adapts to a sheet — design that version too.

## Activity view (share sheet)

- Use the system share sheet (`square.and.arrow.up`). Provide rich previews/metadata.
- Add custom activities only for app-specific actions that make sense on the shared item.

## Notifications of status (non-modal)

- Inline: "Saved" state in the button, updated timestamp, row-level status ("Sending…", "Failed — Retry").
- Transient confirmations should not require dismissal and should not carry the only copy of important info
  (people using assistive tech may miss auto-dismissing UI).


# ===== SKILL: apple-hig-design-review =====

---
name: apple-hig-design-review
description: Audit an iPhone/iPad app design against Apple's Human Interface Guidelines and produce a severity-ranked report with HIG citations and concrete fixes. Use when given a screenshot, Figma/Sketch frame, mockup description, or SwiftUI/UIKit code and asked to review, critique, audit, "check against HIG", prepare for App Store review, or improve an iOS UI.
---

# Apple HIG — Design Review

You are a senior Apple-platform design reviewer. Produce a review a design lead would trust:
**specific, evidence-based, prioritized, and fixable.** No vague praise, no generic advice.

## Inputs you can review

- Screenshots or mockups (image) — inspect visually; estimate sizes relative to known references
  (top safe-area inset ≈ 59–62 pt on Dynamic Island iPhones; bottom ≈ 34 pt; standard row ≥ 44 pt;
  body text 17 pt; screen width 393–440 pt on current iPhones).
- Design files exported as images or described in text.
- SwiftUI / UIKit code — review the UI it produces (fonts, colors, hit areas, modifiers, accessibility).
- A flow (multiple screens) — also review navigation, modality, and states between screens.

If key context is missing, **state your assumptions** (device, iOS version, Light/Dark, app purpose)
and proceed. Ask a question only if the review would be meaningless without the answer.

## Review procedure

Work through these passes in order. Use `references/checklist.md` for the detailed checks.

1. **Understand** — what is this screen for? What's the primary task? Who's the user?
2. **Structure & navigation** — correct top-level model (tab bar / sidebar / stack)? Back/Close
   standard? Tab bar used for navigation only? Modality appropriate?
3. **Layout** — safe areas, margins, alignment, hierarchy, reachability, full-width buttons, crowding.
4. **Typography** — text styles, sizes ≥11 pt, weights, hierarchy, Dynamic Type readiness.
5. **Color & materials** — semantic colors, contrast, color-only meaning, Dark Mode, Liquid Glass usage.
6. **Components** — each control is the right one and configured per HIG; states present.
7. **Iconography** — SF Symbols, consistent weights, familiar meaning, labels on tabs.
8. **Content & copy** — button verbs, alert copy, capitalization, jargon, localization risk.
9. **Accessibility** — targets ≥44 pt, VoiceOver labels, contrast, AX sizes, Reduce Motion, gesture alternatives.
10. **States & edge cases** — loading, empty, error, offline, permission denied, long text, RTL.
11. **Platform fit** — iPad/landscape adaptivity; iOS 26 Liquid Glass conventions.

## Severity scale

| Level | Meaning | Examples |
|---|---|---|
| **P0 — Blocker** | Breaks usability/accessibility for a group of users, or risks App Store rejection | Text contrast 2:1; controls under the home indicator; no way to dismiss a modal; fake permission dialog; no account deletion |
| **P1 — Major** | Clear HIG violation that hurts usability or feels non-native | Hamburger menu; action in tab bar; 3 prominent buttons; hard-coded colors break Dark Mode; custom back button |
| **P2 — Minor** | Inconsistency or polish issue | Mixed symbol weights; title-case inconsistencies; spacing off-grid |
| **Suggestion** | Opportunity beyond compliance | Use medium detent; add haptic on success; contextual tip instead of onboarding |

## Evidence standard

Every finding must include:
- **Where**: screen + element ("Checkout › Pay button").
- **What**: observed fact, with a measurement or estimate ("label ≈ 12 pt Light on #999 over white ≈ 2.8:1").
- **Why**: the rule, labeled `HIG › <page>` or `Convention`. Never cite a HIG rule you're unsure exists —
  label it `Convention` or `Best practice` instead.
- **Fix**: concrete change (component, value, copy), not "improve contrast".

## Output format

Use `assets/report-template.md`. Summary structure:

```
# HIG Review — <screen/flow name>
Assumptions: device, iOS version, appearance
Verdict: Ship / Ship with fixes / Needs rework  — one-sentence reason
Scorecard: Navigation ✓/△/✗ · Layout · Typography · Color · Components · Accessibility · States
## P0 …  ## P1 …  ## P2 …  ## Suggestions …
## What's working (max 3 bullets, specific)
## Next steps (ordered)
```

Keep the report scannable: a table per severity level with columns *Where · Issue · Rule · Fix*.
Cap at the ~15 most important findings; group repeated issues ("All 6 row icons: …").

## When reviewing code

Also flag:
- Fixed font sizes (`.font(.system(size: 15))`, `UIFont.systemFont(ofSize:)`) instead of text styles.
- Hard-coded colors (`Color(red:…)`, hex) where semantic colors apply; missing dark variants in asset catalog.
- `.onTapGesture` on non-button views (no button trait, no hit shape) — prefer `Button`.
- Frames under 44 pt on tappable elements without `contentShape`/padding.
- Images/icons without `accessibilityLabel`, or decorative images not hidden.
- Custom navigation/back buttons, disabled swipe-back.
- Custom bar backgrounds fighting Liquid Glass (`.toolbarBackground` opaque colors) on iOS 26.
- Missing `ContentUnavailableView`/empty states; no loading or error handling in the view.
- Animations without Reduce Motion checks (`accessibilityReduceMotion`).

## Related skills

Use `apple-hig-foundations` and `apple-hig-components` references for exact values and component rules
if they're available; this skill's checklist is self-contained otherwise.


---

<!-- file: assets/report-template.md -->

# HIG Review — {Screen or Flow Name}

**Assumptions:** {iPhone 17 (402×874 pt)}, {iOS 26}, {Light mode}, {app purpose}
**Verdict:** {Ship | Ship with fixes | Needs rework} — {one-sentence reason}

| Area | Status | Note |
|---|---|---|
| Navigation | ✓ / △ / ✗ | |
| Layout | | |
| Typography | | |
| Color & materials | | |
| Components | | |
| Accessibility | | |
| States | | |

## P0 — Blockers

| # | Where | Issue (evidence) | Rule | Fix |
|---|---|---|---|---|
| 1 | {Screen › Element} | {Observed fact with measurement} | HIG › {Page} | {Concrete change} |

## P1 — Major

| # | Where | Issue (evidence) | Rule | Fix |
|---|---|---|---|---|

## P2 — Minor

| # | Where | Issue (evidence) | Rule | Fix |
|---|---|---|---|---|

## Suggestions

- {Opportunity} — {why it helps}

## What's working

- {Specific strength, max 3}

## Next steps

1. {Fix all P0s — owner/effort if known}
2. {…}


---

<!-- file: references/checklist.md -->

# HIG Review Checklist (iOS / iPadOS)

Mark each: ✓ pass · △ partial · ✗ fail · n/a. Severity guidance in brackets.

## 1. Navigation & structure
- [ ] Top-level navigation uses a tab bar (iPhone) or sidebar/tab bar (iPad) — no hamburger drawer [P1]
- [ ] Tab bar contains navigation only — no action tabs [P1]
- [ ] ≤5 tabs on iPhone; each has SF Symbol + short label [P1/P2]
- [ ] Tabs are never disabled or hidden; tab bar visible except under modals [P1]
- [ ] Standard Back chevron and Close `xmark`; no "Back"/"Close" text buttons [P1]
- [ ] Swipe-back works (not blocked by custom gestures) [P1]
- [ ] Navigation title concise, describes the view, not the app name [P2]
- [ ] Large title at hierarchy roots, inline in detail views [P2]
- [ ] Single primary action trailing in the bar, prominent style [P2]

## 2. Modality
- [ ] Modal used only for a focused task or decision [P1]
- [ ] Obvious dismissal (Cancel/Close + swipe down for sheets) [P0 if none]
- [ ] Unsaved changes protected with a confirmation on dismiss [P1]
- [ ] No modal stacked on modal [P1]
- [ ] Alerts only for critical, actionable info; none at launch [P1]
- [ ] Alert buttons are specific verbs; "Cancel" titled Cancel and not default [P2]
- [ ] Destructive choices from deliberate actions use an action sheet/confirmation dialog [P2]

## 3. Layout
- [ ] Interactive content within safe areas; nothing under the home indicator or Dynamic Island [P0]
- [ ] Backgrounds/scroll content extend edge-to-edge under bars [P2]
- [ ] Content aligned to system layout margins (~16/20 pt) [P2]
- [ ] Buttons inset from screen edges (not full-bleed) and concentric with device corners [P2]
- [ ] Clear hierarchy: one focal point; important content top-leading [P1]
- [ ] Frequent actions reachable (lower/middle of screen) [P2]
- [ ] Consistent spacing scale (4/8-pt multiples) [P2, Convention]
- [ ] Works at 375×667 (SE) and 440×956 (Pro Max); landscape handled [P1]

## 4. Typography
- [ ] Every text element maps to a system text style [P1]
- [ ] No text under 11 pt; body ≈17 pt [P1]
- [ ] No Ultralight/Thin/Light weights at small sizes [P2]
- [ ] ≤2 typefaces [P2]
- [ ] Layout survives AX5 (wraps/stacks; no clipping or overlap) [P0 if essential text clipped]
- [ ] Truncation avoided for important text [P2]

## 5. Color & materials
- [ ] Text contrast ≥4.5:1 (≤17 pt) / ≥3:1 (≥18 pt or bold), Light and Dark [P0 if <3:1 for body]
- [ ] Meaning never conveyed by color alone [P1]
- [ ] Semantic system colors used; no hard-coded system color values [P1]
- [ ] Dark Mode designed (not just inverted), elevated surfaces lighter [P1]
- [ ] Accent color used consistently for interactivity only [P2]
- [ ] Liquid Glass only on controls/navigation layer, not content (cards/rows) [P1]
- [ ] Color on glass sparing: only primary action background tinted [P2]
- [ ] Bar/tab labels legible over colorful content (monochrome preferred) [P1]

## 6. Components
- [ ] Right component for each job (segmented vs tabs; menu vs action sheet; toggle vs button) [P1]
- [ ] 1–2 prominent buttons max per view [P1]
- [ ] Destructive action never styled as primary [P1]
- [ ] Custom buttons have pressed states; long actions show in-button progress [P2]
- [ ] Text fields have visible labels, correct keyboard and content types, inline validation [P1]
- [ ] Lists use proper style (inset grouped for settings/forms), chevrons for navigation rows [P2]
- [ ] Swipe actions also available via context menu/Edit [P1 for accessibility]
- [ ] System share sheet, pickers, date pickers used instead of custom look-alikes [P2]

## 7. Iconography
- [ ] SF Symbols (or custom symbols from the template) used for UI icons [P2]
- [ ] Symbol weight matches adjacent text; consistent rendering mode [P2]
- [ ] Familiar symbols keep their standard meaning [P1]
- [ ] No bordered/circled symbols in toolbars [P2]
- [ ] App icon: layered, no baked effects, no text/photos, dark/tinted variants [P2]

## 8. Content & copy
- [ ] Buttons and menu items: verbs, title-style caps [P2]
- [ ] Error messages explain what happened + how to fix; no codes/blame [P1]
- [ ] Consistent terminology [P2]
- [ ] Localization-ready (no text in images, room for +40%) [P2]

## 9. Accessibility
- [ ] All tap targets ≥44×44 pt (≥28×28 absolute minimum) [P0 if <28, P1 if <44]
- [ ] Spacing between targets adequate (~12 pt bezeled / ~24 pt borderless) [P1]
- [ ] Icon-only buttons have accessibility labels [P0]
- [ ] Logical VoiceOver order; decorative images hidden; rows grouped [P1]
- [ ] Every gesture has a visible alternative [P1]
- [ ] Reduce Motion alternative for custom animation; no flashing [P1]
- [ ] No auto-dismissing critical info; no autoplay without controls [P1]

## 10. States & edge cases
- [ ] Loading state (skeleton/cached content) [P1]
- [ ] Empty state with explanation + action [P1]
- [ ] Error & offline states inline with retry [P1]
- [ ] Permission denied state with Open Settings [P1]
- [ ] Long names, large numbers, missing images handled [P2]
- [ ] RTL layout mirrored correctly [P2]

## 11. App Store / platform risk (flag as P0)
- [ ] No custom UI imitating system permission alerts or Apple UI to mislead
- [ ] Account deletion available if account creation exists
- [ ] Sign in with Apple offered if other third-party sign-in exists (with some exceptions)
- [ ] Purchases: price/terms clear, Restore Purchases present, paywall dismissible
- [ ] No Apple product replicas in icons/symbols


# ===== SKILL: apple-hig-foundations =====

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


# ===== SKILL: apple-hig-patterns =====

---
name: apple-hig-patterns
description: Apple HIG interaction patterns for iPhone/iPad apps — launch and onboarding, permission requests, sign in, loading/empty/error/offline states, feedback and confirmations, modality, settings, search, undo, ratings/paywalls, notifications, and UX writing tone. Use when designing a flow (not a single component), deciding when to ask for permissions or show onboarding, or writing interface copy for an Apple-platform app.
---

# Apple HIG — Patterns (iOS / iPadOS)

Act as a senior iOS product designer. Patterns are about **timing and flow**: when something appears,
what interrupts the user, and what the user can undo. For each pattern give the rule, the
anti-pattern, and a concrete example. Cite *HIG › <page>*.

## Launching (*HIG › Launching*)

- **Launch instantly.** The launch screen is a nearly identical, content-free version of the first
  screen (backgrounds and bars only) — **no logos, text, ads, or splash art**.
- **Restore state**: return people to where they left off (tab, scroll position, drafts).
- Launch in the device's current orientation if both are supported.
- No alert at launch. Problems at startup (no network) show inline in the content.

## Onboarding (*HIG › Onboarding*)

Priority order — use the lightest option that works:
1. **No onboarding**: design the first screen to be self-explanatory with good defaults.
2. **Contextual tips** (TipKit-style) at the moment a feature becomes relevant.
3. **Short interactive onboarding**: teach by doing, ≤3 screens, skippable.
4. Optional tutorial, findable later (e.g. in Help/Settings); never shown again once skipped.

Rules:
- Focus on your app's value — don't teach iOS gestures.
- No license text or terms walls in onboarding (App Store shows agreements).
- Don't block onboarding on large downloads; ship enough content to start.
- **Postpone setup/customization**; ship sensible defaults.
- Ask for **ratings or purchases only after** the person has experienced value.

## Requesting permission (*HIG › Privacy, Onboarding*)

- Ask **at the moment of need** (first tap on "Scan Receipt" → camera prompt), not at launch.
- Exception: if the app literally can't function without it, explain in onboarding **before** the system prompt.
- Optional pre-prompt screen: explain the benefit in one sentence, one button that triggers the system
  alert ("Continue"). **Never** style a custom button to look like "Allow" or fake the system dialog.
- Write a specific purpose string: "Scan receipts to add expenses automatically." — not "We need camera access."
- If denied: degrade gracefully, keep the rest usable, show inline explanation with an **Open Settings** action.
- Request the **least access** needed (limited photo library, approximate location, one-time location).

## Sign in & accounts

- Let people **explore before creating an account** where possible.
- Offer **Sign in with Apple** if you offer third-party sign-in; support **passkeys** and password AutoFill.
- Use correct text content types for AutoFill (username, password, new password, one-time code).
- Account deletion must be possible from within the app (App Store requirement).

## Loading, empty, error, offline — design all four for every data screen

| State | Pattern | Avoid |
|---|---|---|
| **Loading** | Skeleton/placeholder layout matching final content; show cached content immediately and refresh in place | Full-screen spinner blocking cached data |
| **Empty (first use)** | What will appear here + one primary action ("No Trips Yet" · "Plan a Trip") with a relevant SF Symbol | Blank screen; disabled tab |
| **Empty (no results)** | Echo the query, suggest fixes ("No Results for 'sushi'. Check spelling or try a new search.") | Generic "Nothing found" |
| **Error** | Inline, in context: what happened + how to fix + Retry | Alert for recoverable errors; raw error codes |
| **Offline** | Show cached content; label stale data; queue actions and sync later | Blocking the whole app |
| **Partial** | Show what loaded; retry per failed section | Failing the whole screen |

(SwiftUI: `ContentUnavailableView` provides the system empty/no-results pattern.)

## Feedback (*HIG › Feedback*)

- Status belongs **near the item it describes** (row "Sending…", button changes to "Saved").
- Confirm significant completions (payment, submission) — proportional to importance.
- Warn **only** for unexpected, irreversible data loss. Expected loss (deleting an email) needs no warning — offer **Undo** instead.
- Tell people when something can't be done and why ("Can't get directions to your current location").
- Make feedback multi-modal: visual + haptic (+ sound where appropriate) — never color alone.

## Undo over confirmation

Prefer: perform the action → offer Undo (toolbar/snackbar-style inline control, shake to undo, or
Edit › Undo on iPad keyboard). Use confirmation dialogs only when undo is impossible.

## Modality in flows

- Create/edit flows → sheet; multistep immersive flows → full-screen; one modal at a time.
- Multistep sheet: Back (not Cancel) on steps after the first; Cancel on step one; final step has the prominent confirm.
- Swipe-to-dismiss with unsaved changes → confirmation dialog.

## Settings (*HIG › Settings*)

- Great defaults so most people never visit settings. Minimize the number of settings.
- Task-specific options live **in context** (sort/filter menus on the list), not in Settings.
- Don't duplicate system settings (Dark Mode, text size, notifications master switch) — link to them.
- Rarely changed options can go in the system Settings app; provide a button that opens it.

## Search (*HIG › Searching*)

- If search is central, make it a tab or prominent field. One place to search everything.
- Placeholder states scope; show recents and suggestions; make history clearable.

## Notifications

- Ask for notification permission after demonstrating value (e.g. after the person creates their first reminder).
- Notifications should be timely, personal, actionable; support notification actions and grouping.
- Tapping a notification opens the exact content with a sensible back stack.
- Don't use notifications for marketing without explicit opt-in.

## Paywalls & in-app purchase

- Let people understand the app's value before a paywall. Always a clear way to close.
- Clear price, period, trial terms, and **Restore Purchases**. Use StoreKit views where possible.

## UX writing (Apple voice)

- Clear, direct, friendly, concise. Speak to "you"; use "we" sparingly.
- Buttons: verbs ("Save", "Add to Library"), **title-style capitalization**. Menus too.
- Alert titles/messages: describe what happened and what to do; no blame, no jargon, no error codes in the headline.
- Use Apple's terms: "tap" (not "click") on iPhone, "Settings" (not "Preferences"), "sign in" (not "log in") is common on Apple platforms.
- Avoid "OK" when a specific verb is clearer. "Cancel" always means back out with no change.
- Ellipsis (…) in a button/menu item means more input follows.
- Numbers, dates, currency: use locale formatters; write for localization (no text in images, allow +30–40% length).

→ Copy patterns and examples: `references/ux-writing.md`

## Output format for pattern questions

```
Pattern: <name> (HIG › <page>)
When to trigger: …
Flow: step 1 → step 2 → …
Screens/states needed: …
Copy: title / body / buttons
Edge cases: denied, offline, error, returning user
Anti-patterns avoided: …
```


---

<!-- file: references/ux-writing.md -->

# UX Writing for Apple Platforms — reference

Sources: HIG › Writing, Alerts, Buttons, Menus; Apple Style Guide conventions.

## Voice

| Quality | Do | Don't |
|---|---|---|
| Clear | "Your photo couldn't be uploaded." | "Upload process encountered an exception." |
| Direct | "Turn on Location Services to see nearby stores." | "In order to be able to provide you with…" |
| Human | "You're all set." | "Operation completed successfully." |
| Respectful | "Enter a password with at least 8 characters." | "Invalid password!" |
| Consistent | Same term for the same thing everywhere ("Library", never "Collection" elsewhere) | Synonyms for variety |

## Capitalization

- **Title-style**: buttons, menu items, navigation titles, tab labels, alert titles (short).
- **Sentence-style**: body text, alert messages, footers, descriptions, placeholder text.
- Pick one style for alert titles app-wide and stick to it.

## Patterns

| Element | Formula | Example |
|---|---|---|
| Button | Verb (+ object) | "Add Expense", "Try Again" |
| Destructive button | Specific verb | "Delete Trip" (not "Yes") |
| Empty state title | What's missing | "No Trips Yet" |
| Empty state body | Benefit + how to start | "Plan your next adventure and keep everything in one place." |
| Error (inline) | What happened + fix | "Couldn't connect. Check your internet connection and try again." |
| Permission purpose string | Feature + benefit | "Recipes uses your camera to scan ingredients so you can add them to your list." |
| Confirmation dialog title | Question about the action | "Discard this draft?" |
| Toggle label | What turns on | "Show Previews" |
| Placeholder | Example or scope | "Search Recipes" / "name@example.com" |
| Footer (grouped list) | Explain consequence | "When this is on, your list syncs across devices signed in to your Apple Account." |

## Words to prefer

| Prefer | Instead of |
|---|---|
| tap, touch and hold, swipe | click, long-press, press |
| Settings | Preferences, Options (on iOS) |
| sign in / sign out | log in / log out |
| Apple Account | Apple ID (renamed in 2024) |
| Couldn't / Can't | Failed / Error / Unable |
| Delete | Remove (when it's permanent) |
| Remove | Delete (when the item still exists elsewhere) |

## Localization-ready

- No text baked into images or launch screens.
- Allow 30–40% expansion; avoid fixed-width labels.
- Use formatters for dates, numbers, currency, measurements, lists, and names.
- Avoid concatenating strings; use full-sentence templates with placeholders.
- Pluralization via stringsdict / String Catalog plural variants.
- Leading/trailing, not left/right; mirror directional symbols in RTL.


# ===== SKILL: apple-hig-screen-design =====

---
name: apple-hig-screen-design
description: Design new iPhone/iPad app screens and flows that follow Apple's Human Interface Guidelines, from a product brief to an implementation-ready spec (information architecture, layout, components, tokens, states, accessibility annotations) and optional SwiftUI starter code. Use when asked to design, wireframe, spec, or build the UI for an iOS app, screen, feature, or user flow.
---

# Apple HIG — Screen & Flow Design

You are a senior iOS product designer pairing with an engineer. Turn a brief into a design that
**feels native on day one**: system components first, custom only with a reason, every state covered,
accessibility specified. Output must be concrete enough to build without a follow-up meeting.

## Workflow

### 1. Frame the problem (keep it short)
Extract or assume, and **write the assumptions down**:
- User & context (one-handed on the go? focused session?)
- Primary task of the screen/flow (one sentence) and success metric
- Platform & targets: iPhone first? iPad? Minimum iOS (default iOS 26 / Liquid Glass; note iOS 18 fallbacks if needed)
- Data: what content, how much, how fresh; offline needs
- Brand constraints: accent color, typeface

Ask the user only if the primary task is unclear. Otherwise proceed with stated assumptions.

### 2. Information architecture
- Decide the navigation model: tab bar sections, stacks inside each tab, and which tasks are modal.
- Produce a **screen map**:

```
TabView
├─ Home (NavigationStack)  ── push → Item Detail ── sheet → Edit Item
├─ Search (search tab)
└─ Library (NavigationStack) ── push → Collection
Global modals: New Item (sheet, large detent) · Settings (sheet from avatar button)
```

- Justify each modal vs push (task vs navigation).

### 3. Screen layout (per screen)
Describe top-to-bottom, using system component names and text styles:

```
[Navigation bar] Large title "Trips" · trailing: `plus` (Add Trip, prominent? no — plain) · avatar menu
[Search field] placeholder "Search Trips"
[Content] Inset grouped List
  Section "Upcoming" — Row: 44×44 thumbnail (12-pt corner radius), Title=Headline, Subtitle=Subheadline secondaryLabel, trailing date=Footnote
[Tab bar] Trips · Explore · Profile
```

Rules to apply while laying out:
- Chrome floats on Liquid Glass; content extends under bars with scroll edge effect.
- One focal point; 1–2 prominent buttons max; primary action trailing in bar or bottom of content.
- Frequent actions in reach; destructive actions away from primary ones.
- System margins (16/20 pt), spacing on a 4/8-pt scale (Convention), corners concentric with containers.

### 4. Specify tokens (semantic, not raw)
- **Type**: text-style per element (Large Title, Headline, Body…). Never raw sizes.
- **Color**: roles → system colors (`label`, `secondaryLabel`, `systemGroupedBackground`, `tint`…);
  custom colors with Light/Dark/High-contrast variants and verified contrast.
- **Symbols**: SF Symbol names, weight/scale, rendering mode.
- **Spacing & radii**: named steps (xs 4 · s 8 · m 12 · l 16 · xl 24 · xxl 32).
- **Motion/haptics**: which events animate or give haptics, and the Reduce Motion alternative.

### 5. States (mandatory for every data-driven screen)
Loading · Empty (first use) · Empty (no results) · Error · Offline · Permission denied · Partial ·
Populated · Long content / AX5 · Editing / selection mode (if applicable).

### 6. Accessibility annotations
VoiceOver order, labels for icon-only controls, traits, grouping, custom actions for swipe actions,
AX5 reflow behavior, Reduce Motion alternative, hit areas ≥44×44 pt.

### 7. Copy
All user-facing strings: titles, buttons (verbs, title-style caps), empty/error messages,
permission purpose strings, alert text. Localization-ready.

### 8. Self-review before delivering
Run the P0/P1 items of the `apple-hig-design-review` checklist (or the quick check below) against your
own design and fix issues before presenting.

Quick check: tab bar = navigation only · standard Back/Close · no modal-on-modal · text styles
everywhere · semantic colors · contrast ≥4.5:1 · targets ≥44 pt · no color-only meaning · all states
designed · glass only on controls · ≤2 prominent buttons · Cancel paired with Done.

### 9. (Optional) SwiftUI starter
If the user wants code, generate SwiftUI that uses system components so HIG behavior comes for free.
Follow `references/swiftui-mapping.md`. Keep it compiling and minimal: real structure, placeholder data.

## Deliverable format

Use `assets/screen-spec-template.md`. For multi-screen flows: screen map first, then one spec per
screen, then a flow diagram of state transitions. If the user wants visuals and the environment can
render them, produce a wireframe (ASCII, SVG, or HTML at 402×874 pt) — label it as a wireframe, not
final visual design.

## Custom UI policy

Custom components are allowed when they serve the product (brand moments, unique data viz, games).
When proposing one, state: what system component it replaces, why, and the behaviors you must
re-implement (Dynamic Type, Dark Mode, VoiceOver, Reduce Motion, pressed/disabled states, RTL, iPad).


---

<!-- file: assets/screen-spec-template.md -->

# Screen Spec — {Screen Name}

## Summary
- **Purpose:** {one sentence — the primary task}
- **Entry points:** {tab root / pushed from X / sheet from Y / deep link / notification}
- **Exit / dismissal:** {Back, Cancel/Done, swipe down}
- **Presentation:** {push | sheet (detents) | full-screen | tab root}
- **Assumptions:** {device, iOS version, data size}

## Layout (top → bottom)

| Region | Component | Content | Type style | Color role | Notes |
|---|---|---|---|---|---|
| Navigation bar | Large title | "{Title}" | Large Title | label | Collapses on scroll |
| Bar trailing | Button (plain) | `plus` — "Add {Item}" | — | tint | Opens New {Item} sheet |
| Content | List (inset grouped) | Rows… | Body / Subheadline | label / secondaryLabel | Swipe: Delete (trailing) |
| Tab bar | Tab bar | {Tab 1} · {Tab 2} · {Tab 3} | system | system | {Tab 1} selected |

## Components & behavior

| Element | Action | Result | Feedback |
|---|---|---|---|
| {Row} | Tap | Push {Detail} | Row highlight |
| {Row} | Swipe trailing | Delete | Row removed + Undo available |
| {Add button} | Tap | Present sheet (large) | — |
| {Save} | Tap | Save & dismiss | Success haptic |

## Tokens

- **Symbols:** {`plus`, `trash`, …} — weight matches text, rendering {monochrome/hierarchical}
- **Spacing:** margins = system; row padding {12}; section spacing {24}
- **Radii:** thumbnails {12}; cards concentric with container
- **Custom colors:** {name — light / dark / HC light / HC dark — contrast result}

## States

| State | Design |
|---|---|
| Loading | {skeleton rows ×6 / cached content + refresh} |
| Empty (first use) | {symbol} · "{No Items Yet}" · "{benefit sentence}" · [{Primary Action}] |
| No results | "No Results for '{query}'" · suggestion |
| Error | Inline banner: "{Couldn't load…}" · [Try Again] |
| Offline | Cached content + "Offline — showing saved {items}" |
| Permission denied | Explanation + [Open Settings] |
| AX5 text | {rows stack; trailing values move below title} |

## Accessibility

| # (VO order) | Element | Label | Trait | Value / Hint |
|---|---|---|---|---|
| 1 | Title | "{Title}" | Header | — |
| 2 | Add button | "Add {item}" | Button | — |
| 3 | Row | "{Name}, {subtitle}, {date}" (combined) | Button | Custom actions: Delete |

- Reduce Motion: {alternative}
- Gesture alternatives: {swipe delete also in Edit mode / context menu}

## Copy

| Key | String |
|---|---|
| title | {…} |
| empty.title | {…} |
| empty.body | {…} |
| error.load | {…} |
| action.primary | {…} |

## Open questions
- {…}


---

<!-- file: references/swiftui-mapping.md -->

# HIG → SwiftUI Mapping — reference

Use system components; they carry HIG behavior (Liquid Glass, Dynamic Type, accessibility) for free.
Targets iOS 26 SDK. Where an API is iOS 26-only, guard with `if #available(iOS 26, *)` when supporting older OS.

| HIG concept | SwiftUI |
|---|---|
| Tab bar | `TabView { Tab("Home", systemImage: "house") { … } }` |
| Search tab | `Tab(role: .search) { … }` |
| Tab bar minimize on scroll | `.tabBarMinimizeBehavior(.onScrollDown)` (iOS 26) |
| Tab bar accessory (mini player) | `.tabViewBottomAccessory { … }` (iOS 26) |
| iPad sidebar-adaptable tabs | `.tabViewStyle(.sidebarAdaptable)` |
| Navigation stack | `NavigationStack { … .navigationDestination(for:) }` |
| Large / inline title | `.navigationTitle("Trips")` + `.navigationBarTitleDisplayMode(.large / .inline)` |
| Toolbar items | `.toolbar { ToolbarItem(placement: .topBarTrailing) { … } }` |
| Primary toolbar action | `ToolbarItem(placement: .confirmationAction)` (system styles it) |
| Cancel in sheet | `ToolbarItem(placement: .cancellationAction)` |
| Grouping toolbar items | `ToolbarItemGroup`, `ToolbarSpacer` (iOS 26) |
| Split view / sidebar | `NavigationSplitView` |
| Sheet with detents | `.sheet(isPresented:) { … .presentationDetents([.medium, .large]) }` |
| Grabber | `.presentationDragIndicator(.visible)` |
| Block swipe-dismiss with unsaved edits | `.interactiveDismissDisabled(hasChanges)` + confirmation dialog |
| Full-screen modal | `.fullScreenCover` |
| Alert | `.alert("Title", isPresented:) { Button("Delete", role: .destructive) {…}; Button("Cancel", role: .cancel) {} } message: { … }` |
| Action sheet | `.confirmationDialog(…)` |
| Menu | `Menu("Sort", systemImage: "arrow.up.arrow.down") { … }` |
| Context menu | `.contextMenu { … }` |
| Popover | `.popover(isPresented:)` |
| Share | `ShareLink(item:)` |
| Prominent button | `.buttonStyle(.borderedProminent)` |
| Glass button (custom floating) | `.buttonStyle(.glass)` / `.glassProminent` (iOS 26) |
| Custom glass surface (controls only) | `.glassEffect()` inside `GlassEffectContainer` (iOS 26) |
| Scroll edge effect | Automatic under bars; `.scrollEdgeEffectStyle(_:for:)` (iOS 26) to adjust |
| Destructive button | `Button("Delete", role: .destructive)` |
| List styles | `.listStyle(.insetGrouped)` / `.plain` |
| Swipe actions | `.swipeActions(edge: .trailing) { … }` |
| Pull to refresh | `.refreshable { … }` |
| Search field | `.searchable(text:prompt:)` + `.searchSuggestions` |
| Empty / no results state | `ContentUnavailableView("No Trips Yet", systemImage: "airplane", description: Text("…"))`, `ContentUnavailableView.search(text:)` |
| Text styles | `.font(.largeTitle / .title / .headline / .body / .footnote …)` |
| Custom font with Dynamic Type | `.font(.custom("Brand", size: 17, relativeTo: .body))` |
| Scaled spacing | `@ScaledMetric var padding = 12` |
| AX-size reflow | `@Environment(\.dynamicTypeSize)` + `ViewThatFits` or `AnyLayout(VStackLayout/HStackLayout)` |
| Semantic colors | `Color.primary`, `.secondary`, `Color(.systemGroupedBackground)`, `.tint` |
| Accent color | Asset catalog `AccentColor` |
| SF Symbols | `Image(systemName:)`, `.symbolRenderingMode(.hierarchical)`, `.symbolEffect(.bounce, value:)` |
| Haptics | `.sensoryFeedback(.success, trigger: value)` |
| Reduce Motion | `@Environment(\.accessibilityReduceMotion)` |
| Accessibility | `.accessibilityLabel`, `.accessibilityHint`, `.accessibilityAddTraits(.isHeader)`, `.accessibilityElement(children: .combine)`, `.accessibilityAction(named:)` |
| Tips (contextual onboarding) | TipKit: `TipView(tip)` / `.popoverTip(tip)` |
| Hit area | `.contentShape(Rectangle())` + `.frame(minWidth: 44, minHeight: 44)` |

## Starter skeleton

```swift
import SwiftUI

struct RootView: View {
    var body: some View {
        TabView {
            Tab("Trips", systemImage: "suitcase") { TripsView() }
            Tab("Explore", systemImage: "map") { Text("Explore") }
            Tab(role: .search) { Text("Search") }
        }
    }
}

struct TripsView: View {
    @State private var trips: [String] = []
    @State private var isAdding = false

    var body: some View {
        NavigationStack {
            Group {
                if trips.isEmpty {
                    ContentUnavailableView {
                        Label("No Trips Yet", systemImage: "suitcase")
                    } description: {
                        Text("Plan your next adventure and keep everything in one place.")
                    } actions: {
                        Button("Plan a Trip") { isAdding = true }
                            .buttonStyle(.borderedProminent)
                    }
                } else {
                    List {
                        ForEach(trips, id: \.self) { Text($0) }
                            .onDelete { trips.remove(atOffsets: $0) }
                    }
                    .listStyle(.insetGrouped)
                }
            }
            .navigationTitle("Trips")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Add Trip", systemImage: "plus") { isAdding = true }
                }
            }
            .sheet(isPresented: $isAdding) {
                NewTripView { trips.append($0) }
            }
        }
    }
}

struct NewTripView: View {
    var onSave: (String) -> Void
    @Environment(\.dismiss) private var dismiss
    @State private var name = ""

    var body: some View {
        NavigationStack {
            Form {
                TextField("Trip Name", text: $name)
                    .textContentType(.none)
            }
            .navigationTitle("New Trip")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancel") { dismiss() }
                }
                ToolbarItem(placement: .confirmationAction) {
                    Button("Add") { onSave(name); dismiss() }
                        .disabled(name.trimmingCharacters(in: .whitespaces).isEmpty)
                }
            }
        }
        .presentationDetents([.medium, .large])
        .interactiveDismissDisabled(!name.isEmpty)
    }
}
```

Note: when `interactiveDismissDisabled` is on, pair it with a confirmation dialog on Cancel so people
can still discard deliberately.


# ===== SKILL: apple-motion-and-delight =====

---
name: apple-motion-and-delight
description: Design motion language, signature interactions, micro-interactions, haptics, and delight moments for iPhone/iPad apps that feel fluid and alive in the spirit of Apple's "Designing Fluid Interfaces" and Liquid Glass, while respecting HIG motion and accessibility rules (Reduce Motion, interruptibility, brevity). Use when someone wants an app to feel more alive, playful, premium, tactile, or "juicy", asks for animations, transitions, gestures, haptics, celebrations, empty-state delight, or SwiftUI animation specs.
---

# Apple Motion & Delight

You are a **motion and interaction designer** who thinks like Apple's fluid-interfaces team and
works like a design engineer. Motion is not decoration: it explains *where things come from, what
changed, and what the person caused*. Delight is the reward for paying attention to details nobody
asked for.

## Core principles

1. **Direct manipulation first.** Content follows the finger 1:1, then continues with momentum.
   Release velocity carries into the animation (no dead stop, no restart).
2. **Always interruptible and reversible.** People can grab, redirect, or cancel any motion mid-flight.
   Springs, not fixed-duration curves, for anything touch-driven.
3. **Spatial consistency.** Things come from and return to where they live (zoom from the source
   card, sheet from the bottom, menu from its button).
4. **Brief and purposeful** (*HIG › Motion*). Frequent interactions get almost no animation; rare,
   meaningful moments get the show.
5. **Motion has a personality** — derived from the app's concept (see `apple-creative-direction`),
   and consistent everywhere.
6. **Multi-sensory harmony.** Visual + haptic (+ sound) land on the same frame.
7. **Motion is optional** (*HIG › Motion, Accessibility*). Every animation has a Reduce Motion version
   and never carries information alone.

## The frequency rule (decide the budget first)

| How often it happens | Motion budget | Examples |
|---|---|---|
| 100×/day (typing, scrolling, tab switch, list tap) | **None or system-only** | Keep system defaults; don't add custom motion |
| 10×/day (core action: add, complete, send, like) | **Subtle signature**: ≤ ~300 ms, one property, a haptic | Checkmark draw-on + success haptic |
| 1×/day (daily check-in, streak, first open of the day) | **Expressive**: a small scene, ≤ ~1 s, skippable | Plant grows a leaf; sky shifts to today's color |
| Rare (first success, milestone, year in review) | **Hero moment**: choreographed, up to a few seconds, tap to skip | Garden blooms; shareable card assembles |

## Motion language spec (produce this for every app)

1. **Personality** — 3 adjectives (e.g. buoyant · patient · precise).
2. **Springs** — pick 2–3 named springs and use them everywhere:
   - `snappy` for small UI responses (press, toggle, selection)
   - `smooth` for layout/position changes and transitions
   - `bouncy` (or a custom bounce) only for playful rewards
   Specify as SwiftUI `.spring(duration:bounce:)` — perceptual *duration* and *bounce* (0 = no overshoot).
   Serious domains (finance, health, pro tools) use bounce ≈ 0–0.15; playful apps 0.2–0.35.
3. **Choreography** — order of elements (primary first, supporting after), stagger interval
   (~20–50 ms per item, cap total), direction of travel.
4. **Transitions map** — for each navigation: push (system), sheet (system), zoom from source
   (iOS 18+ `navigationTransition(.zoom)`), custom hero moments.
5. **Symbol motion** — which SF Symbol effects mean what (bounce = "happened", pulse = "in progress",
   wiggle = "look here", replace = state change, draw on = completion).
6. **Haptic map** — event → haptic (see `references/haptics-and-sound.md`).
7. **Reduce Motion map** — each custom motion → its replacement (crossfade, instant, static highlight).

## Signature interaction design (the creative part)

Invent **one interaction that people remember** and that expresses the concept. Recipes:

- **Physical metaphor** — pull, stretch, pour, stack, flip, fold, press, water, wind. Map to a real
  gesture + spring + haptic detents.
- **Rubber-band with meaning** — overscroll reveals something (a hidden stat, a mascot, tomorrow's weather).
- **Content that reacts** — the data visualization breathes, tilts with the device (subtle, disabled with
  Reduce Motion), or responds to touch location.
- **Transform, don't replace** — the button morphs into the progress indicator, then into the result
  (Liquid Glass morphing between controls with `GlassEffectContainer` + `glassEffectID` for controls).
- **Numbers that count** — `contentTransition(.numericText())` for values that change.
- **Scrubbing** — drag across a chart/timeline with detent haptics at meaningful points.
- **Hold to reveal / press to preview** — context menus with custom previews.

Every signature interaction must have: a visible non-gesture alternative, a VoiceOver custom action,
a Reduce Motion version, and must not conflict with system gestures (edge swipes, home indicator).

See `references/delight-catalog.md` for ideas by moment and `references/motion-recipes.md` for
SwiftUI implementations.

## Delight rules

- **Earned** — celebrate real progress, never fake it.
- **Proportional** — the size of the celebration matches the size of the achievement.
- **Fresh** — vary rare celebrations (random from a small set; seasonal variants), keep frequent ones identical.
- **Skippable & fast** — never block the next action; tap anywhere to skip.
- **Respectful** — no confetti on sad or serious content; no delight in errors that cost the user something.
- **Personal** — the best delight reflects *their* data, name, place, or history.
- **Discoverable easter eggs are a bonus, never required** for functionality.

## Output format

```
# Motion & Delight — <App>
Personality: a · b · c
Springs: snappy = …, smooth = …, bouncy = …
Frequency budget table (interaction → budget → motion)
Signature interaction: concept · gesture · feedback · alternative · VoiceOver · Reduce Motion
Delight moments: hero + 2 (trigger, choreography with timings, haptic, sound, skip, RM version)
Transitions map
Haptic map
Reduce Motion map
SwiftUI sketch (if requested)
Review table: | Before | After | Why | (when critiquing existing motion)
```

## Related skills
- `apple-creative-direction` — concept and personality that motion must express.
- `apple-hig-foundations` — motion, haptics, accessibility rules.
- `apple-hig-design-review` — audit the result.


---

<!-- file: references/delight-catalog.md -->

# Delight Catalog — ideas by moment

Starting points, not templates. Always adapt to the app's concept (metaphor, palette, personality).
Each idea must keep a Reduce Motion version and never block the next action.

## First launch & onboarding
- **Onboarding by doing**: the first screen *is* the first task, pre-filled with a playful example the
  user edits (teach through interactivity — *HIG › Onboarding*).
- **World that wakes up**: empty canvas gently comes alive as the user makes their first choice.
- **Personal first frame**: use the user's time of day / locale to color the welcome ("Good evening"
  in dusk tones) — without asking for permissions.
- **Contextual tips** (TipKit) styled in the app's voice instead of a feature carousel.

## Core action (10×/day)
- **Tactile completion**: checkmark *draws on* (SF Symbols draw effect) + `.success` haptic.
- **Satisfying physics**: the item slides into its place (stack, jar, shelf) with a small spring.
- **Counting numbers**: totals roll with `numericText`.
- **Sound signature** (optional, respects silent mode): one short, soft sound unique to the brand.

## Progress & streaks
- **Visible growth**: progress drawn as the metaphor (plant, skyline, constellation, map path).
- **Milestone variety**: rotate among a few celebration variants for milestones so they stay fresh.
- **Gentle recovery**: a missed day is shown with kindness ("Your garden missed you") and a one-tap restart.
- **Streak freezes / grace** framed positively — no guilt mechanics.

## Empty states
- **Illustrated invitation** matching the concept (bare soil + seed packet; empty shelf + one book outline).
- **Preview of the future**: faint ghost version of what the screen will look like when filled.
- **One clear action**, written in the app's voice.
- **Playful but short copy** — one sentence of personality, one sentence of help.

## Loading & waiting
- **Content-shaped placeholders** that already hint the layout.
- **Useful waiting**: show a tip, a stat, or yesterday's highlight while loading long tasks.
- **Pull-to-refresh with character** — keep the system control, add a themed element in the content above it.

## Errors & offline
- **Honest and calm**: clear message + one fix; a small, sympathetic illustration only if the error isn't costly.
- **Offline as a mode**: "Reading saved stories" with a distinct, calm tint — not a scary banner.
- **Never** celebrate or joke when the user lost data or money.

## Data & insights
- **Data as art**: full-screen chart with themed colors, scrubbable with detent haptics (Tide Guide pattern).
- **Narrated insights**: one sentence summary above the chart ("You slept 40 minutes more than last week").
- **Year / month in review**: a story-like sequence, shareable, generated from the user's data.

## Sharing
- **Poster-quality share card**: generated image in the app's visual language, including the user's
  achievement — every share is marketing.
- **Live Activity / widget** that extends the concept to the Lock Screen and Home Screen.

## Seasonal & contextual
- **Time-of-day palettes**, subtle seasonal accents, local holiday touches (culturally aware, optional).
- **Weather- or place-aware tints** when the app already has that data.

## Easter eggs (bonus only)
- Long-press the logo, a rare mascot animation, alternate app icons unlocked by milestones.
- Never hide functionality behind them; keep them accessible via VoiceOver where meaningful.

## Delight anti-patterns
- Confetti on every tap. Mascots that interrupt. Animations that must finish before input.
- Fake progress, fake scarcity, guilt-trip streak copy. Sounds that play in silent mode.
- Delight that only works for people who can see motion or hear sound.


---

<!-- file: references/haptics-and-sound.md -->

# Haptics & Sound — reference

Source: HIG › Playing haptics, Accessibility (Hearing). SwiftUI: `.sensoryFeedback(_:trigger:)`;
custom patterns via Core Haptics (`CHHapticEngine`).

## Rules (HIG)
- Use system haptic patterns **for their documented meaning**; be consistent so people learn the mapping.
- Haptics **complement** visual (and audio) feedback — land on the same frame.
- **Don't overuse**; prefer short haptics for discrete events.
- **Make haptics optional**; the app must work without them.
- Pair audio cues with haptics and visuals for people who can't hear them.

## Event → SwiftUI feedback map

| Event | `SensoryFeedback` | Notes |
|---|---|---|
| Task completed / saved / sent | `.success` | Core action completion |
| Validation problem, needs attention | `.warning` | With inline message |
| Action failed | `.error` | With inline message + retry |
| Picker/segmented/scrub value changed | `.selection` | Detents while scrubbing charts/dials |
| Item snaps into place, drop | `.impact(weight: .light / .medium)` or `.impact(flexibility: .soft)` | Physical metaphors |
| Value goes up / down meaningfully | `.increase` / `.decrease` | Steppers, levels |
| Timer or activity start / stop | `.start` / `.stop` | |
| Alignment guide reached (drag) | `.alignment` | Snapping in editors |
| Pull-to-refresh threshold | system provides | Don't add a second one |

## Custom haptic signature (Core Haptics)
For one hero moment only, design a short pattern that mirrors the animation:
- Transient taps on visual "hits" (a seed landing, a petal opening).
- A soft continuous rumble only for sustained physical actions (pouring, stretching), ≤ ~1 s.
- Intensity/sharpness follow the concept: soft & round for calm apps; sharp for precise tools.
- Always test on device; haptics don't play in Simulator.

## Sound
- Optional, short, respects the Ring/Silent switch and system volume; off by default for frequent events.
- A "sonic logo" (≤1 s) for the hero moment can be memorable; provide a setting to turn sounds off.
- Never convey information by sound alone — add visual + haptic.


---

<!-- file: references/motion-recipes.md -->

# Motion Recipes — SwiftUI

Targets iOS 18+ unless marked; Liquid Glass APIs need iOS 26. Always read
`@Environment(\.accessibilityReduceMotion)` and provide the static/crossfade version.

## Timing reference

Springs are preferred for touch-driven motion because they are interruptible and preserve velocity
(*WWDC18 Designing Fluid Interfaces*, *WWDC23 Animate with springs*). Use these as starting points:

| Use | SwiftUI | Feel |
|---|---|---|
| Press feedback, toggles, selection | `.snappy` or `.spring(duration: 0.25, bounce: 0.1)` | Instant, crisp |
| Layout & position changes | `.smooth` or `.spring(duration: 0.4, bounce: 0)` | Calm, no overshoot |
| Playful reward | `.bouncy` or `.spring(duration: 0.5, bounce: 0.3)` | Lively |
| Opacity-only / color changes | `.easeOut(duration: 0.2)` | Quiet |
| Hero sequence | `keyframeAnimator` / `phaseAnimator`, total ≤ ~1.5 s, skippable | Choreographed |

Web design-engineering durations translate well as *upper bounds*: press 100–160 ms, small popovers
125–200 ms, menus 150–250 ms, modals 200–500 ms; avoid ease-in for UI entering the screen
(feels sluggish) — prefer ease-out or springs. (After Emil Kowalski, design-engineering notes.)

## Press feedback for custom buttons

```swift
struct PressableStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? 0.97 : 1)
            .opacity(configuration.isPressed ? 0.9 : 1)
            .animation(.snappy, value: configuration.isPressed)
    }
}
```
Standard system and glass buttons already have press states — only needed for custom buttons.

## Zoom transition from source (iOS 18+)

```swift
@Namespace private var ns

NavigationLink(value: item) { CardView(item: item) }
    .matchedTransitionSource(id: item.id, in: ns)

// destination
DetailView(item: item)
    .navigationTransition(.zoom(sourceID: item.id, in: ns))
```
Keeps spatial consistency and supports interactive swipe-to-dismiss.

## Numbers that roll

```swift
Text(total, format: .currency(code: "USD"))
    .contentTransition(.numericText(value: total))
    .animation(.snappy, value: total)
```

## SF Symbol effects as semantics

```swift
Image(systemName: "checkmark.circle.fill")
    .symbolEffect(.bounce, value: completedCount)          // "it happened"
Image(systemName: "arrow.triangle.2.circlepath")
    .symbolEffect(.rotate, isActive: isSyncing)             // "in progress"
Image(systemName: isPlaying ? "pause.fill" : "play.fill")
    .contentTransition(.symbolEffect(.replace))             // state change
```

## Scroll-driven reveal (content layer)

```swift
ForEach(items) { item in
    Row(item: item)
        .scrollTransition { content, phase in
            content
                .opacity(phase.isIdentity ? 1 : 0.6)
                .scaleEffect(phase.isIdentity ? 1 : 0.96)
        }
}
```
Keep it subtle; disable when Reduce Motion is on.

## Choreographed hero moment

```swift
struct BloomView: View {
    @Environment(\.accessibilityReduceMotion) private var reduceMotion
    var trigger: Int

    var body: some View {
        Image(systemName: "camera.macro")
            .font(.system(size: 64))
            .keyframeAnimator(initialValue: 1.0, trigger: trigger) { view, scale in
                view.scaleEffect(scale)
            } keyframes: { _ in
                if reduceMotion {
                    LinearKeyframe(1.0, duration: 0.01)
                } else {
                    SpringKeyframe(1.25, duration: 0.25, spring: .bouncy)
                    SpringKeyframe(1.0, duration: 0.35, spring: .smooth)
                }
            }
            .sensoryFeedback(.success, trigger: trigger)
    }
}
```

## Living backgrounds (content layer)

- `MeshGradient` (iOS 18+) for organic, concept-driven color fields; animate control points slowly
  (tens of seconds), pause with Reduce Motion / Low Power Mode.
- `TimelineView(.animation)` + `Canvas` for particles or generative visuals; keep them off the
  main interactive surfaces and stop them offscreen.
- Metal shaders via `.colorEffect`, `.distortionEffect`, `.layerEffect` for ripples, grain, and
  refraction in content.

## Liquid Glass morphing (controls, iOS 26)

```swift
GlassEffectContainer {
    HStack {
        if isExpanded {
            Button("Share", systemImage: "square.and.arrow.up") { }
                .buttonStyle(.glass)
                .glassEffectID("share", in: ns)
        }
        Button("More", systemImage: "ellipsis") { withAnimation(.smooth) { isExpanded.toggle() } }
            .buttonStyle(.glass)
            .glassEffectID("more", in: ns)
    }
}
```
Use for control clusters that expand/collapse; keep glass off content.

## Gesture with velocity handoff

```swift
@State private var offset: CGSize = .zero

card
    .offset(offset)
    .gesture(
        DragGesture()
            .onChanged { offset = $0.translation }            // 1:1 tracking
            .onEnded { value in
                withAnimation(.spring(duration: 0.4, bounce: 0.2)) {
                    offset = shouldDismiss(value) ? farAway(value) : .zero
                }
            }
    )
    .accessibilityAction(named: "Dismiss") { dismissCard() }  // non-gesture alternative
```
Base `shouldDismiss` on predicted end position (`value.predictedEndTranslation`), not only distance.

## Reduce Motion replacements

| Motion | Replacement |
|---|---|
| Zoom / slide / parallax | Crossfade (`.transition(.opacity)`) |
| Bouncy scale celebration | Static highlight + haptic |
| Particle / confetti | Single symbol appears, or nothing |
| Device-tilt effects | Off |
| Auto-animating backgrounds | Static frame |
