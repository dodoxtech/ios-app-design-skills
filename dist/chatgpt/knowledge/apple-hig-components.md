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
