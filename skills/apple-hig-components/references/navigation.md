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
