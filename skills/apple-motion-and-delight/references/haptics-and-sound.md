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
