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
