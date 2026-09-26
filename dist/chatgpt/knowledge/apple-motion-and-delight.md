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
