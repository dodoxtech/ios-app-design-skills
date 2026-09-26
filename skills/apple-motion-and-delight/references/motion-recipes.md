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
