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
