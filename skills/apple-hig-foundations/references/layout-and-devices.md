# Layout & Devices — reference

Source: HIG › Layout (Specifications updated September 2025).

## Design canvas recommendation

- Primary mockup canvas: **402×874 pt** (iPhone 17 / 17 Pro). Also check **375×667** (iPhone SE,
  smallest supported height) and **440×956** (Pro Max, largest).
- Export at @3x for iPhone, @2x for iPad. Always specify layouts in **points**.

## Current iPhone sizes (portrait, points)

| Width × Height | Scale | Devices |
|---|---|---|
| 440 × 956 | @3x | iPhone 17 Pro Max, 16 Pro Max |
| 430 × 932 | @3x | iPhone 16 Plus, 15 Pro Max, 15 Plus, 14 Pro Max |
| 428 × 926 | @3x | iPhone 14 Plus, 13 Pro Max, 12 Pro Max |
| 420 × 912 | @3x | iPhone Air |
| 402 × 874 | @3x | iPhone 17, 17 Pro, 16 Pro |
| 393 × 852 | @3x | iPhone 16, 15, 15 Pro, 14 Pro |
| 390 × 844 | @3x | iPhone 16e, 14, 13, 13 Pro, 12, 12 Pro |
| 375 × 812 | @3x | iPhone 13 mini, 12 mini, 11 Pro, XS, X |
| 414 × 896 | @2x/@3x | iPhone 11, 11 Pro Max, XR, XS Max |
| 375 × 667 | @2x | iPhone SE (2nd/3rd gen), 8, 7, 6s |

## iPad sizes (portrait, points, all @2x)

| Width × Height | Devices |
|---|---|
| 1024 × 1366 | iPad Pro 12.9", iPad Air 13" |
| 834 × 1194 | iPad Pro 11", iPad Pro 10.5" |
| 820 × 1180 | iPad Air 11"/10.9", iPad 11" |
| 810 × 1080 | iPad 10.2" |
| 744 × 1133 | iPad mini 8.3" |
| 768 × 1024 | iPad 9.7", iPad mini 7.9" |

## Size classes

| Device | Portrait | Landscape |
|---|---|---|
| All iPhones | Compact W, Regular H | Compact H; width is **Regular** on Plus/Max/Air models, **Compact** on others |
| All iPads (full screen) | Regular W, Regular H | Regular W, Regular H |
| iPad in Split View / Slide Over / small windows | Often **Compact W** | — |

Design rule: build the compact-width layout first; regular width typically gets a sidebar/split
view, multi-column grids, and popovers instead of sheets.

## Safe areas & system features

- Top: status bar + Dynamic Island / sensor housing. Bottom: home indicator. Sides in landscape:
  rounded corners and sensor housing.
- Background colors, images, and scroll content extend **under** all of these.
- Interactive elements and critical text stay **inside** the safe area.
- Don't place custom controls near the home indicator where they conflict with the system swipe-up gesture.
- Games: prefer full-bleed but keep HUD within safe areas; optionally offer letterboxing.

## Layout guides

- **Layout margins**: the system's standard content inset (commonly 16 pt compact, 20 pt regular).
  Align text, list content, and inset buttons to it.
- **Readable content guide**: limits line length for long text on wide screens (iPad). Use it for
  articles, settings, forms.
- **Keyboard layout guide**: keep focused fields and primary actions above the keyboard.

## Adaptive checklist

- [ ] Every screen checked on SE (375×667) and Pro Max (440×956)
- [ ] Landscape checked (or orientation lock is intentional)
- [ ] Dynamic Type xSmall → AX5 checked
- [ ] RTL mirroring checked (leading/trailing, not left/right; directional symbols flip)
- [ ] Long localized strings (German +30%, Finnish, etc.) don't truncate critical labels
- [ ] iPad: halves/thirds/quadrants window sizes; smooth transitions when resizing
- [ ] External display / Display Zoom doesn't break layout
