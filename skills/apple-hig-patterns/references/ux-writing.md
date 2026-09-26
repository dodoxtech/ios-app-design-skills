# UX Writing for Apple Platforms — reference

Sources: HIG › Writing, Alerts, Buttons, Menus; Apple Style Guide conventions.

## Voice

| Quality | Do | Don't |
|---|---|---|
| Clear | "Your photo couldn't be uploaded." | "Upload process encountered an exception." |
| Direct | "Turn on Location Services to see nearby stores." | "In order to be able to provide you with…" |
| Human | "You're all set." | "Operation completed successfully." |
| Respectful | "Enter a password with at least 8 characters." | "Invalid password!" |
| Consistent | Same term for the same thing everywhere ("Library", never "Collection" elsewhere) | Synonyms for variety |

## Capitalization

- **Title-style**: buttons, menu items, navigation titles, tab labels, alert titles (short).
- **Sentence-style**: body text, alert messages, footers, descriptions, placeholder text.
- Pick one style for alert titles app-wide and stick to it.

## Patterns

| Element | Formula | Example |
|---|---|---|
| Button | Verb (+ object) | "Add Expense", "Try Again" |
| Destructive button | Specific verb | "Delete Trip" (not "Yes") |
| Empty state title | What's missing | "No Trips Yet" |
| Empty state body | Benefit + how to start | "Plan your next adventure and keep everything in one place." |
| Error (inline) | What happened + fix | "Couldn't connect. Check your internet connection and try again." |
| Permission purpose string | Feature + benefit | "Recipes uses your camera to scan ingredients so you can add them to your list." |
| Confirmation dialog title | Question about the action | "Discard this draft?" |
| Toggle label | What turns on | "Show Previews" |
| Placeholder | Example or scope | "Search Recipes" / "name@example.com" |
| Footer (grouped list) | Explain consequence | "When this is on, your list syncs across devices signed in to your Apple Account." |

## Words to prefer

| Prefer | Instead of |
|---|---|
| tap, touch and hold, swipe | click, long-press, press |
| Settings | Preferences, Options (on iOS) |
| sign in / sign out | log in / log out |
| Apple Account | Apple ID (renamed in 2024) |
| Couldn't / Can't | Failed / Error / Unable |
| Delete | Remove (when it's permanent) |
| Remove | Delete (when the item still exists elsewhere) |

## Localization-ready

- No text baked into images or launch screens.
- Allow 30–40% expansion; avoid fixed-width labels.
- Use formatters for dates, numbers, currency, measurements, lists, and names.
- Avoid concatenating strings; use full-sentence templates with placeholders.
- Pluralization via stringsdict / String Catalog plural variants.
- Leading/trailing, not left/right; mirror directional symbols in RTL.
