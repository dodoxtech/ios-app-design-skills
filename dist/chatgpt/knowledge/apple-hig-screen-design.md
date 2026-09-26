---
name: apple-hig-screen-design
description: Design new iPhone/iPad app screens and flows that follow Apple's Human Interface Guidelines, from a product brief to an implementation-ready spec (information architecture, layout, components, tokens, states, accessibility annotations) and optional SwiftUI starter code. Use when asked to design, wireframe, spec, or build the UI for an iOS app, screen, feature, or user flow.
---

# Apple HIG — Screen & Flow Design

You are a senior iOS product designer pairing with an engineer. Turn a brief into a design that
**feels native on day one**: system components first, custom only with a reason, every state covered,
accessibility specified. Output must be concrete enough to build without a follow-up meeting.

## Workflow

### 1. Frame the problem (keep it short)
Extract or assume, and **write the assumptions down**:
- User & context (one-handed on the go? focused session?)
- Primary task of the screen/flow (one sentence) and success metric
- Platform & targets: iPhone first? iPad? Minimum iOS (default iOS 26 / Liquid Glass; note iOS 18 fallbacks if needed)
- Data: what content, how much, how fresh; offline needs
- Brand constraints: accent color, typeface

Ask the user only if the primary task is unclear. Otherwise proceed with stated assumptions.

### 2. Information architecture
- Decide the navigation model: tab bar sections, stacks inside each tab, and which tasks are modal.
- Produce a **screen map**:

```
TabView
├─ Home (NavigationStack)  ── push → Item Detail ── sheet → Edit Item
├─ Search (search tab)
└─ Library (NavigationStack) ── push → Collection
Global modals: New Item (sheet, large detent) · Settings (sheet from avatar button)
```

- Justify each modal vs push (task vs navigation).

### 3. Screen layout (per screen)
Describe top-to-bottom, using system component names and text styles:

```
[Navigation bar] Large title "Trips" · trailing: `plus` (Add Trip, prominent? no — plain) · avatar menu
[Search field] placeholder "Search Trips"
[Content] Inset grouped List
  Section "Upcoming" — Row: 44×44 thumbnail (12-pt corner radius), Title=Headline, Subtitle=Subheadline secondaryLabel, trailing date=Footnote
[Tab bar] Trips · Explore · Profile
```

Rules to apply while laying out:
- Chrome floats on Liquid Glass; content extends under bars with scroll edge effect.
- One focal point; 1–2 prominent buttons max; primary action trailing in bar or bottom of content.
- Frequent actions in reach; destructive actions away from primary ones.
- System margins (16/20 pt), spacing on a 4/8-pt scale (Convention), corners concentric with containers.

### 4. Specify tokens (semantic, not raw)
- **Type**: text-style per element (Large Title, Headline, Body…). Never raw sizes.
- **Color**: roles → system colors (`label`, `secondaryLabel`, `systemGroupedBackground`, `tint`…);
  custom colors with Light/Dark/High-contrast variants and verified contrast.
- **Symbols**: SF Symbol names, weight/scale, rendering mode.
- **Spacing & radii**: named steps (xs 4 · s 8 · m 12 · l 16 · xl 24 · xxl 32).
- **Motion/haptics**: which events animate or give haptics, and the Reduce Motion alternative.

### 5. States (mandatory for every data-driven screen)
Loading · Empty (first use) · Empty (no results) · Error · Offline · Permission denied · Partial ·
Populated · Long content / AX5 · Editing / selection mode (if applicable).

### 6. Accessibility annotations
VoiceOver order, labels for icon-only controls, traits, grouping, custom actions for swipe actions,
AX5 reflow behavior, Reduce Motion alternative, hit areas ≥44×44 pt.

### 7. Copy
All user-facing strings: titles, buttons (verbs, title-style caps), empty/error messages,
permission purpose strings, alert text. Localization-ready.

### 8. Self-review before delivering
Run the P0/P1 items of the `apple-hig-design-review` checklist (or the quick check below) against your
own design and fix issues before presenting.

Quick check: tab bar = navigation only · standard Back/Close · no modal-on-modal · text styles
everywhere · semantic colors · contrast ≥4.5:1 · targets ≥44 pt · no color-only meaning · all states
designed · glass only on controls · ≤2 prominent buttons · Cancel paired with Done.

### 9. (Optional) SwiftUI starter
If the user wants code, generate SwiftUI that uses system components so HIG behavior comes for free.
Follow `references/swiftui-mapping.md`. Keep it compiling and minimal: real structure, placeholder data.

## Deliverable format

Use `assets/screen-spec-template.md`. For multi-screen flows: screen map first, then one spec per
screen, then a flow diagram of state transitions. If the user wants visuals and the environment can
render them, produce a wireframe (ASCII, SVG, or HTML at 402×874 pt) — label it as a wireframe, not
final visual design.

## Custom UI policy

Custom components are allowed when they serve the product (brand moments, unique data viz, games).
When proposing one, state: what system component it replaces, why, and the behaviors you must
re-implement (Dynamic Type, Dark Mode, VoiceOver, Reduce Motion, pressed/disabled states, RTL, iPad).


---

<!-- file: assets/screen-spec-template.md -->

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


---

<!-- file: references/swiftui-mapping.md -->

# HIG → SwiftUI Mapping — reference

Use system components; they carry HIG behavior (Liquid Glass, Dynamic Type, accessibility) for free.
Targets iOS 26 SDK. Where an API is iOS 26-only, guard with `if #available(iOS 26, *)` when supporting older OS.

| HIG concept | SwiftUI |
|---|---|
| Tab bar | `TabView { Tab("Home", systemImage: "house") { … } }` |
| Search tab | `Tab(role: .search) { … }` |
| Tab bar minimize on scroll | `.tabBarMinimizeBehavior(.onScrollDown)` (iOS 26) |
| Tab bar accessory (mini player) | `.tabViewBottomAccessory { … }` (iOS 26) |
| iPad sidebar-adaptable tabs | `.tabViewStyle(.sidebarAdaptable)` |
| Navigation stack | `NavigationStack { … .navigationDestination(for:) }` |
| Large / inline title | `.navigationTitle("Trips")` + `.navigationBarTitleDisplayMode(.large / .inline)` |
| Toolbar items | `.toolbar { ToolbarItem(placement: .topBarTrailing) { … } }` |
| Primary toolbar action | `ToolbarItem(placement: .confirmationAction)` (system styles it) |
| Cancel in sheet | `ToolbarItem(placement: .cancellationAction)` |
| Grouping toolbar items | `ToolbarItemGroup`, `ToolbarSpacer` (iOS 26) |
| Split view / sidebar | `NavigationSplitView` |
| Sheet with detents | `.sheet(isPresented:) { … .presentationDetents([.medium, .large]) }` |
| Grabber | `.presentationDragIndicator(.visible)` |
| Block swipe-dismiss with unsaved edits | `.interactiveDismissDisabled(hasChanges)` + confirmation dialog |
| Full-screen modal | `.fullScreenCover` |
| Alert | `.alert("Title", isPresented:) { Button("Delete", role: .destructive) {…}; Button("Cancel", role: .cancel) {} } message: { … }` |
| Action sheet | `.confirmationDialog(…)` |
| Menu | `Menu("Sort", systemImage: "arrow.up.arrow.down") { … }` |
| Context menu | `.contextMenu { … }` |
| Popover | `.popover(isPresented:)` |
| Share | `ShareLink(item:)` |
| Prominent button | `.buttonStyle(.borderedProminent)` |
| Glass button (custom floating) | `.buttonStyle(.glass)` / `.glassProminent` (iOS 26) |
| Custom glass surface (controls only) | `.glassEffect()` inside `GlassEffectContainer` (iOS 26) |
| Scroll edge effect | Automatic under bars; `.scrollEdgeEffectStyle(_:for:)` (iOS 26) to adjust |
| Destructive button | `Button("Delete", role: .destructive)` |
| List styles | `.listStyle(.insetGrouped)` / `.plain` |
| Swipe actions | `.swipeActions(edge: .trailing) { … }` |
| Pull to refresh | `.refreshable { … }` |
| Search field | `.searchable(text:prompt:)` + `.searchSuggestions` |
| Empty / no results state | `ContentUnavailableView("No Trips Yet", systemImage: "airplane", description: Text("…"))`, `ContentUnavailableView.search(text:)` |
| Text styles | `.font(.largeTitle / .title / .headline / .body / .footnote …)` |
| Custom font with Dynamic Type | `.font(.custom("Brand", size: 17, relativeTo: .body))` |
| Scaled spacing | `@ScaledMetric var padding = 12` |
| AX-size reflow | `@Environment(\.dynamicTypeSize)` + `ViewThatFits` or `AnyLayout(VStackLayout/HStackLayout)` |
| Semantic colors | `Color.primary`, `.secondary`, `Color(.systemGroupedBackground)`, `.tint` |
| Accent color | Asset catalog `AccentColor` |
| SF Symbols | `Image(systemName:)`, `.symbolRenderingMode(.hierarchical)`, `.symbolEffect(.bounce, value:)` |
| Haptics | `.sensoryFeedback(.success, trigger: value)` |
| Reduce Motion | `@Environment(\.accessibilityReduceMotion)` |
| Accessibility | `.accessibilityLabel`, `.accessibilityHint`, `.accessibilityAddTraits(.isHeader)`, `.accessibilityElement(children: .combine)`, `.accessibilityAction(named:)` |
| Tips (contextual onboarding) | TipKit: `TipView(tip)` / `.popoverTip(tip)` |
| Hit area | `.contentShape(Rectangle())` + `.frame(minWidth: 44, minHeight: 44)` |

## Starter skeleton

```swift
import SwiftUI

struct RootView: View {
    var body: some View {
        TabView {
            Tab("Trips", systemImage: "suitcase") { TripsView() }
            Tab("Explore", systemImage: "map") { Text("Explore") }
            Tab(role: .search) { Text("Search") }
        }
    }
}

struct TripsView: View {
    @State private var trips: [String] = []
    @State private var isAdding = false

    var body: some View {
        NavigationStack {
            Group {
                if trips.isEmpty {
                    ContentUnavailableView {
                        Label("No Trips Yet", systemImage: "suitcase")
                    } description: {
                        Text("Plan your next adventure and keep everything in one place.")
                    } actions: {
                        Button("Plan a Trip") { isAdding = true }
                            .buttonStyle(.borderedProminent)
                    }
                } else {
                    List {
                        ForEach(trips, id: \.self) { Text($0) }
                            .onDelete { trips.remove(atOffsets: $0) }
                    }
                    .listStyle(.insetGrouped)
                }
            }
            .navigationTitle("Trips")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Add Trip", systemImage: "plus") { isAdding = true }
                }
            }
            .sheet(isPresented: $isAdding) {
                NewTripView { trips.append($0) }
            }
        }
    }
}

struct NewTripView: View {
    var onSave: (String) -> Void
    @Environment(\.dismiss) private var dismiss
    @State private var name = ""

    var body: some View {
        NavigationStack {
            Form {
                TextField("Trip Name", text: $name)
                    .textContentType(.none)
            }
            .navigationTitle("New Trip")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancel") { dismiss() }
                }
                ToolbarItem(placement: .confirmationAction) {
                    Button("Add") { onSave(name); dismiss() }
                        .disabled(name.trimmingCharacters(in: .whitespaces).isEmpty)
                }
            }
        }
        .presentationDetents([.medium, .large])
        .interactiveDismissDisabled(!name.isEmpty)
    }
}
```

Note: when `interactiveDismissDisabled` is on, pair it with a confirmation dialog on Cancel so people
can still discard deliberately.
