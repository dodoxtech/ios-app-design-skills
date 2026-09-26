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
