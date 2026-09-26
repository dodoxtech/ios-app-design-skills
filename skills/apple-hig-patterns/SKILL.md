---
name: apple-hig-patterns
description: Apple HIG interaction patterns for iPhone/iPad apps — launch and onboarding, permission requests, sign in, loading/empty/error/offline states, feedback and confirmations, modality, settings, search, undo, ratings/paywalls, notifications, and UX writing tone. Use when designing a flow (not a single component), deciding when to ask for permissions or show onboarding, or writing interface copy for an Apple-platform app.
---

# Apple HIG — Patterns (iOS / iPadOS)

Act as a senior iOS product designer. Patterns are about **timing and flow**: when something appears,
what interrupts the user, and what the user can undo. For each pattern give the rule, the
anti-pattern, and a concrete example. Cite *HIG › <page>*.

## Launching (*HIG › Launching*)

- **Launch instantly.** The launch screen is a nearly identical, content-free version of the first
  screen (backgrounds and bars only) — **no logos, text, ads, or splash art**.
- **Restore state**: return people to where they left off (tab, scroll position, drafts).
- Launch in the device's current orientation if both are supported.
- No alert at launch. Problems at startup (no network) show inline in the content.

## Onboarding (*HIG › Onboarding*)

Priority order — use the lightest option that works:
1. **No onboarding**: design the first screen to be self-explanatory with good defaults.
2. **Contextual tips** (TipKit-style) at the moment a feature becomes relevant.
3. **Short interactive onboarding**: teach by doing, ≤3 screens, skippable.
4. Optional tutorial, findable later (e.g. in Help/Settings); never shown again once skipped.

Rules:
- Focus on your app's value — don't teach iOS gestures.
- No license text or terms walls in onboarding (App Store shows agreements).
- Don't block onboarding on large downloads; ship enough content to start.
- **Postpone setup/customization**; ship sensible defaults.
- Ask for **ratings or purchases only after** the person has experienced value.

## Requesting permission (*HIG › Privacy, Onboarding*)

- Ask **at the moment of need** (first tap on "Scan Receipt" → camera prompt), not at launch.
- Exception: if the app literally can't function without it, explain in onboarding **before** the system prompt.
- Optional pre-prompt screen: explain the benefit in one sentence, one button that triggers the system
  alert ("Continue"). **Never** style a custom button to look like "Allow" or fake the system dialog.
- Write a specific purpose string: "Scan receipts to add expenses automatically." — not "We need camera access."
- If denied: degrade gracefully, keep the rest usable, show inline explanation with an **Open Settings** action.
- Request the **least access** needed (limited photo library, approximate location, one-time location).

## Sign in & accounts

- Let people **explore before creating an account** where possible.
- Offer **Sign in with Apple** if you offer third-party sign-in; support **passkeys** and password AutoFill.
- Use correct text content types for AutoFill (username, password, new password, one-time code).
- Account deletion must be possible from within the app (App Store requirement).

## Loading, empty, error, offline — design all four for every data screen

| State | Pattern | Avoid |
|---|---|---|
| **Loading** | Skeleton/placeholder layout matching final content; show cached content immediately and refresh in place | Full-screen spinner blocking cached data |
| **Empty (first use)** | What will appear here + one primary action ("No Trips Yet" · "Plan a Trip") with a relevant SF Symbol | Blank screen; disabled tab |
| **Empty (no results)** | Echo the query, suggest fixes ("No Results for 'sushi'. Check spelling or try a new search.") | Generic "Nothing found" |
| **Error** | Inline, in context: what happened + how to fix + Retry | Alert for recoverable errors; raw error codes |
| **Offline** | Show cached content; label stale data; queue actions and sync later | Blocking the whole app |
| **Partial** | Show what loaded; retry per failed section | Failing the whole screen |

(SwiftUI: `ContentUnavailableView` provides the system empty/no-results pattern.)

## Feedback (*HIG › Feedback*)

- Status belongs **near the item it describes** (row "Sending…", button changes to "Saved").
- Confirm significant completions (payment, submission) — proportional to importance.
- Warn **only** for unexpected, irreversible data loss. Expected loss (deleting an email) needs no warning — offer **Undo** instead.
- Tell people when something can't be done and why ("Can't get directions to your current location").
- Make feedback multi-modal: visual + haptic (+ sound where appropriate) — never color alone.

## Undo over confirmation

Prefer: perform the action → offer Undo (toolbar/snackbar-style inline control, shake to undo, or
Edit › Undo on iPad keyboard). Use confirmation dialogs only when undo is impossible.

## Modality in flows

- Create/edit flows → sheet; multistep immersive flows → full-screen; one modal at a time.
- Multistep sheet: Back (not Cancel) on steps after the first; Cancel on step one; final step has the prominent confirm.
- Swipe-to-dismiss with unsaved changes → confirmation dialog.

## Settings (*HIG › Settings*)

- Great defaults so most people never visit settings. Minimize the number of settings.
- Task-specific options live **in context** (sort/filter menus on the list), not in Settings.
- Don't duplicate system settings (Dark Mode, text size, notifications master switch) — link to them.
- Rarely changed options can go in the system Settings app; provide a button that opens it.

## Search (*HIG › Searching*)

- If search is central, make it a tab or prominent field. One place to search everything.
- Placeholder states scope; show recents and suggestions; make history clearable.

## Notifications

- Ask for notification permission after demonstrating value (e.g. after the person creates their first reminder).
- Notifications should be timely, personal, actionable; support notification actions and grouping.
- Tapping a notification opens the exact content with a sensible back stack.
- Don't use notifications for marketing without explicit opt-in.

## Paywalls & in-app purchase

- Let people understand the app's value before a paywall. Always a clear way to close.
- Clear price, period, trial terms, and **Restore Purchases**. Use StoreKit views where possible.

## UX writing (Apple voice)

- Clear, direct, friendly, concise. Speak to "you"; use "we" sparingly.
- Buttons: verbs ("Save", "Add to Library"), **title-style capitalization**. Menus too.
- Alert titles/messages: describe what happened and what to do; no blame, no jargon, no error codes in the headline.
- Use Apple's terms: "tap" (not "click") on iPhone, "Settings" (not "Preferences"), "sign in" (not "log in") is common on Apple platforms.
- Avoid "OK" when a specific verb is clearer. "Cancel" always means back out with no change.
- Ellipsis (…) in a button/menu item means more input follows.
- Numbers, dates, currency: use locale formatters; write for localization (no text in images, allow +30–40% length).

→ Copy patterns and examples: `references/ux-writing.md`

## Output format for pattern questions

```
Pattern: <name> (HIG › <page>)
When to trigger: …
Flow: step 1 → step 2 → …
Screens/states needed: …
Copy: title / body / buttons
Edge cases: denied, offline, error, returning user
Anti-patterns avoided: …
```
