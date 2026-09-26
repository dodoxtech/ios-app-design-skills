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
