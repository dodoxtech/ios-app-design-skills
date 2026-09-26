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
