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
