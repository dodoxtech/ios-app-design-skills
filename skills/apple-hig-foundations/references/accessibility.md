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
