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
