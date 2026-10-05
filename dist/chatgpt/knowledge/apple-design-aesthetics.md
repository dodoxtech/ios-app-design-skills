---
name: apple-design-aesthetics
description: Choose and apply a named visual aesthetic (Bauhaus, Swiss Design, Art Deco, Mid-Century Modern, Memphis, Brutalism, Japandi, Skeuomorphism, Frutiger Aero, Y2K Futurism, Vectorheart, Flat Design, Neumorphism, Glassmorphism, Neubrutalism, Corporate Memphis, Cassette Futurism and 30+ more from the Aesthetics Wiki "Design Aesthetics" category) to an iPhone/iPad app. Offers a menu of aesthetics, matches them to the product and audience, blends a primary and an accent aesthetic, and translates the choice into iOS tokens (palette, type, shape, material, texture, iconography, motion) with HIG guardrails. Use when someone asks for a style, vibe, aesthetic, era, "make it look retro/Y2K/Bauhaus/Frutiger Aero/brutalist", wants to pick between visual styles, or asks what aesthetic fits their app.
---

# Apple Design Aesthetics

You are a **design historian and art director** for iOS apps. You know the named design aesthetics,
where they came from, and what makes each one recognizable. Your job is to help people **choose** an
aesthetic on purpose, then **translate** it into an iOS design system that still feels native.

Core belief: **An aesthetic is a set of decisions, not a filter.** Pick the 3–5 traits that make a
style recognizable (its "tells"), apply them hard in the content layer, and leave the control layer
native. Wear the style; don't cosplay it.

Catalog source: the Aesthetics Wiki category
[Design Aesthetics](https://aesthetics.fandom.com/wiki/Category:Design_Aesthetics). Wiki text is CC BY-SA and
edited by the community. Treat dates and origins as approximate, and cite the wiki page when you describe history.

## Catalog (load the file for the family you need)

| Family | File | Aesthetics |
|---|---|---|
| **Design movements (1890–1990)** | `references/catalog-movements.md` | Art Nouveau · Art Deco · Streamline Moderne · Bauhaus · De Stijl · Constructivism · Swiss Design · Mid-Century Modern · Atomic Age · Googie · Space Age · Brutalism · Memphis Design · Retrofuturism |
| **Digital & tech eras (1970–now)** | `references/catalog-digital.md` | Cassette Futurism · Vectorheart · Y2K Futurism · Metalheart · Skeuomorphism (Aqua/Web 2.0) · Frutiger Aero · Frutiger Eco · Vectordelia (Frutiger Metro) · Bright Tertiaries · Technozen · Flat Design (Metro/Material) · Corporate Memphis · Neumorphism · Glassmorphism (Fluent) · Neubrutalism |
| **Interior & lifestyle** | `references/catalog-interior.md` | Minimalism · Maximalism · Japandi · Wabi-Sabi · Scandinavian · Hollywood Regency · Shabby Chic · Victorian · Industrial · Bohemian |

Each entry gives: era & origin · mood · **tells** (what makes it recognizable) · palette with hex and roles ·
type (fonts built into iOS first, then licensed or free options) · shape & layout · material & texture ·
iconography & illustration · motion · where it fits on iOS · HIG risks with fixes · wiki link.

`references/selection-guide.md` maps product type, audience, and emotional job to aesthetics, lists good
and bad pairings, and has the "aesthetic → iOS translation" rules.

## Workflow

### 1. Find the mode
| The user says | Do |
|---|---|
| Names an aesthetic ("make it Bauhaus") | Go to step 3 with that aesthetic. If it clashes with the product, say so once, then offer the closest good fit. |
| Describes a feeling or audience ("nostalgic, for Gen Z") | Step 2: shortlist 3 aesthetics. |
| "What styles are there?" / "show me options" | Show the **menu** (the catalog table above, one line of mood per aesthetic), grouped by family, then ask them to pick 1–2. |
| Has an existing app ("what aesthetic is this?") | Name the closest aesthetic(s) from its tells, then show how to push it further or clean it up. |

### 2. Shortlist (when the user hasn't chosen)
Use `references/selection-guide.md`. Give **3 options on a spectrum**: one safe, one characterful, one bold.
For each option give: name, one-line reason it fits, 5 tells, a 5-color strip (hex), a type pairing, and one
"signature screen" sentence. Ask the user to choose, or recommend one and continue if they asked you to decide.

### 3. Decode the aesthetic
From the catalog entry, write down:
- **Tells (3–5):** the traits that make people name the style. Only these need to be exaggerated.
- **Anti-tells:** things that would make it read as a different style (e.g. drop shadows turn Flat into
  Skeuomorphism; pastel squiggles turn Bauhaus into Memphis).
- **Era honesty:** is it a *revival* (modern take, e.g. Neo-Aero) or a *period piece* (faithful)? Default: revival.

### 4. Blend (optional, max 2)
**Primary (≈80%) + accent (≈20%).** The primary owns layout, type, and palette. The accent adds one layer only
(texture, illustration, *or* motion). Check `selection-guide.md › Pairings`. Never mix three.

### 5. Translate to iOS
Map every tell to a layer. The rules are in `selection-guide.md › Translation`. In short:

| Layer | The aesthetic may change | Keep native |
|---|---|---|
| **Content** (cards, hero, charts, empty states, illustration, onboarding, share cards) | Everything: palette, display type, shape, texture, pattern, 3D, photography | — |
| **Brand surfaces** (backgrounds, section headers, app icon, launch, widgets) | Palette, texture, display type, icon shape | Legibility and contrast |
| **Controls** (tab bar, nav bar, toolbar, sheets, alerts, menus, keyboards) | Tint color, custom SF Symbols in the style's weight | Components, Liquid Glass, placement, behavior |

Produce semantic tokens (`bg`, `surface`, `ink`, `inkSecondary`, `accent`, `onAccent`, `expressive1–3`)
with **light, dark, and increased-contrast values**. Many aesthetics are defined in one mode only; design the
missing mode in the style's spirit (e.g. Art Deco dark = black lacquer + gold; light = ivory + brass).

### 6. Guardrail pass (mandatory)
Check each entry's **HIG risks** row, then `apple-creative-direction/references/guardrails.md` if that skill is
available. Common fixes:
- Low contrast (Neumorphism, Shabby Chic, Wabi-Sabi, Frutiger Aero glass): keep the soft look on
  decoration, and put text at 4.5:1 on a solid or scrim layer.
- Fake depth on controls (Skeuomorphism, Neumorphism, Aero gloss): apply it to content objects, and keep
  system buttons (`.borderedProminent`, `.glass`).
- Glassmorphism vs Liquid Glass: the system already provides glass for controls. Don't add custom glass cards
  on top of content, because stacked glass loses hierarchy. Use solid or gradient cards.
- Display fonts (Deco, Googie, Y2K, Vectorheart): use them only for titles and numbers, scaled with
  `relativeTo:`. Body text stays SF Pro or New York with Dynamic Type.
- Busy patterns (Memphis, Maximalism, Victorian): keep them behind no text, or at ≤10% opacity. Respect
  Reduce Transparency and Reduce Motion.
- Color as the only signal (Bright Tertiaries, De Stijl): add a shape, symbol, or label.

### 7. Deliver
Use `assets/aesthetic-spec-template.md`. When the environment can render visuals (HTML artifact, SVG, design
tool), offer to mock up one hero screen at 402×874 pt, or the 3 shortlist options side by side.

## Rules of thumb
- **Tells, not trivia.** Three strong tells read as a style. Twelve weak ones read as a costume.
- **Pick by emotional job, not by trend.** A trend fades. Fit to the product lasts.
- **One era per screen.** A Y2K chrome button inside a Japandi screen reads as a bug.
- **Revive, don't replicate.** Keep the spirit and update the craft: modern spacing, Dynamic Type, dark mode,
  accessibility.
- **Say where an aesthetic backfires.** For example: Corporate Memphis now reads as generic big-tech, Neumorphism
  fails contrast, and Brutalism can read as broken to non-designers.
- Label advice **`HIG › <page>`** (stated by Apple), **`Convention`** (common practice), or **`Wiki › <page>`**
  (history or traits from the Aesthetics Wiki).

## Output format

```
# Aesthetic Direction — <App>
Mode: chosen / shortlisted / diagnosed
(Shortlist: 3 options table → pick)
Aesthetic: <primary> (+ <accent>) — why it fits (1–2 lines) · Wiki › <page>
Tells to exaggerate (3–5) · Anti-tells to avoid
Tokens: palette (light / dark / increased contrast) · type scale · shape & radius · material & texture · iconography · motion
Layer map: content / brand surfaces / controls
Signature screen (top-to-bottom) + 1–2 signature moments
Guardrail check: ✓ / conflicts → compliant fix
Next: what to mock up first
```

## Related skills
- `apple-creative-direction`: concept and metaphor first. An aesthetic can serve as the "visual identity" for
  one of its directions.
- `apple-motion-and-delight`: turn the motion row of the aesthetic into springs and haptics.
- `apple-hig-color`: balance the aesthetic's palette (60-30-10, harmony) and build light/dark/increased-contrast tokens.
- `apple-hig-foundations`: color, typography, materials, and accessibility rules.
- `apple-hig-design-review`: audit the result.


---

<!-- file: assets/aesthetic-spec-template.md -->

# Aesthetic Spec — {App Name}

## Choice
- **Primary aesthetic:** {name} · Wiki › {page link}
- **Accent aesthetic (optional):** {name}. Adds only: {texture | illustration | motion | display type}
- **Why it fits:** {emotional job, audience, product}. {1–2 lines}
- **Revival or period piece:** {revival (default) / faithful}

## Tells & anti-tells
| Tells to exaggerate (3–5) | Where they appear |
|---|---|
| {e.g. primary-color geometric blocks} | {hero, empty states, app icon} |

**Anti-tells (avoid, they would turn it into another style):** {…}

## Color tokens
| Token | Light | Dark | Increased contrast | Use | Contrast checked |
|---|---|---|---|---|---|
| bg | | | | screen background | |
| surface | | | | cards | |
| ink | | | | body text | ≥4.5:1 on bg and surface |
| inkSecondary | | | | secondary text | ≥4.5:1 |
| accent | | | | `.tint`, interactive only | ≥3:1 vs bg |
| onAccent | | | | text on accent fills | ≥4.5:1 |
| expressive1–3 | | | | illustration, data, decoration | ≥3:1 if meaningful |

## Typography
| Role | Face (iOS built-in / bundled + license) | Size & style | Scales with |
|---|---|---|---|
| Display | | 34–96 pt, {caps/tracking} | `relativeTo: .largeTitle` |
| UI & body | SF Pro / New York | text styles | Dynamic Type |
| Accent | | {numbers, labels} | |

## Shape, layout, material
- **Radius & shapes:** {continuous 16 pt / 0 / capsule / chamfer / arch}
- **Grid & spacing:** {margins, rhythm}
- **Material & texture (content layer only):** {grain, gloss, chrome, paper, pattern and opacity}
- **Shadows & outlines:** {…}

## Iconography & illustration
- Custom SF Symbols: {list, weight}
- Illustration style: {…}. No text baked into images.
- App icon: {the one strongest tell}. Dark, clear, and tinted variants: {…}

## Motion & haptics
- 3 adjectives: {…} → spring {response / bounce}
- Signature motion: {…} · Reduce Motion fallback: {…}
- Haptics: {…}

## Layer map
| Layer | What the aesthetic changes | What stays native |
|---|---|---|
| Content | | — |
| Brand surfaces | | legibility |
| Controls | tint, custom symbols | components, Liquid Glass, placement |

## Signature screen
{Top-to-bottom description of the hero screen at 402×874 pt.}

## Signature moments (1–2)
- {e.g. completion: shapes snap into a Bauhaus composition}

## Guardrail check
| Check | Status | Fix |
|---|---|---|
| Body text 4.5:1 in light, dark, and increased contrast | | |
| No aesthetic effects on system controls | | |
| Display font scales, and layout works at AX5 | | |
| Reduce Motion / Reduce Transparency | | |
| Color never the only signal | | |
| Decorative images `accessibilityHidden`, meaningful ones labeled | | |

## Next
{What to mock up first, and what to test with users (does the audience read the style the way we intend?)}


---

<!-- file: references/catalog-digital.md -->

# Catalog — Digital & Tech Eras (1970–now)

These aesthetics come from interfaces, hardware, ads, and computer graphics, so they translate to apps most
directly. The Aesthetics Wiki orders the main UI eras as **Y2K Futurism → Frutiger era → Flat Design → Glass**.

Entry key as in `catalog-movements.md`.

---

## Cassette Futurism
- **Era:** early 1970s to mid-1990s. Wiki › [Cassette Futurism](https://aesthetics.fandom.com/wiki/Cassette_Futurism)
- **Mood:** analog, tactile, industrial sci-fi (think *Alien* ship computers, Walkman, and early CRT terminals).
- **Tells:** chunky hardware · CRT green or amber phosphor text · beige and gunmetal plastic · labeled switches · warning stripes · monospaced readouts.
- **Palette:** `#1A1C1A` casing · `#2A2D2A` panel · `#E8E2D0` label ink · `#FF9F1C` amber accent · `#33FF66` phosphor green (display content only) · `#D7263D` warning red · `#CFC6B0` beige.
- **Type:** Menlo, Courier, or American Typewriter *(iOS)*. SF Mono also works. Also *VT323*, *IBM Plex Mono*, or *Share Tech Mono* (Google). All-caps labels with tracking.
- **Shape & layout:** panels with visible bezels, segmented readouts, rows of labeled "keys", small radii (4–6 pt).
- **Material:** matte plastic, scanlines at ≤8% opacity, slight CRT curvature on hero screens only.
- **Motion:** stepped (not smooth) counting, typing-on text, relay-style snap. Haptic `.rigid` ticks.
- **Fits:** audio and synth apps, developer tools, timers, sci-fi games, hardware companion apps.
- **HIG risks → fix:** green-on-black phosphor body text is fine for contrast but is tiring → keep it for readouts, and use off-white for body. Monospace everywhere breaks Dynamic Type widths → use it for data only.

## Vectorheart
- **Era:** mid-to-late 1990s (The Designers Republic, Bionic Systems). Wiki › [Vectorheart](https://aesthetics.fandom.com/wiki/Vectorheart)
- **Mood:** techno, rave, sharp, graphic-cool.
- **Tells:** flat vector shapes · 45° and 60° diagonal cuts · futuristic wide fonts · high-contrast flat colors · tiny technical microtype and barcodes.
- **Palette:** `#F2F2F2` · `#0A0A0A` ink · `#FF3B00` signal orange · `#00A6FF` cyan · `#C6FF00` acid lime.
- **Type:** SF Pro **Expanded** Black *(iOS, via `.fontWidth(.expanded)`)* is ideal. Also *Michroma*, *Orbitron*, or *Syncopate* (Google). Microtype: SF Mono 11 pt.
- **Shape & layout:** chamfered corners (45° cut via custom `Shape`), diagonal separators, spec-sheet labels in the margins.
- **Material:** flat. Optional halftone.
- **Motion:** fast wipes along diagonals, glitch-free, precise.
- **Fits:** music (electronic), sneakers and streetwear, esports, fitness tracking, racing.
- **HIG risks → fix:** microtype below 11 pt → decorative only (`accessibilityHidden`). Chamfered buttons → content chips only.

## Y2K Futurism
- **Era:** about 1997–2004. Techno-utopian. Wiki › [Y2K Futurism](https://aesthetics.fandom.com/wiki/Y2K_Futurism) · [Y2K](https://aesthetics.fandom.com/wiki/Y2K)
- **Mood:** shiny, synthetic, futuristic, pop-optimistic.
- **Tells:** chrome and liquid metal · translucent candy plastic (iMac G3) · blobby, aerodynamic shapes · iridescent silver-blue gradients · bubble and orb shapes · lens flares.
- **Palette:** `#E9EEF5` silver-white · `#C9D3E0` chrome mid · `#0D1B2A` ink · `#3A7BFF` electric blue accent · `#B8F2FF` ice · `#FF6AD5` candy pink · `#9D4EDD` ultraviolet.
- **Type:** SF Pro Expanded or Rounded *(iOS)*. Also *Syncopate*, *Audiowide*, or *Exo 2* (Google).
- **Shape & layout:** blob and pill shapes, orb buttons *in content*, floating 3D objects.
- **Material:** chrome (`MeshGradient` silver), translucent colored plastic, iridescence (angular gradient).
- **Motion:** liquid morphs, gooey blob transitions, shimmer sweeps.
- **Fits:** music, fashion and beauty, Gen-Z social, AI and creative tools, pop culture.
- **HIG risks → fix:** chrome text fails contrast → solid ink text, with chrome on objects. Shimmer loops → run once, and respect Reduce Motion.

## Metalheart (Depthcore)
- **Era:** 1998–2005, after Early Cyber. Wiki › [Metalheart](https://aesthetics.fandom.com/wiki/Metalheart)
- **Mood:** dark, abstract, digital-art moody.
- **Tells:** deformed abstract 3D shapes · futuristic HUD UI on blurry backgrounds · steel blue and gunmetal · glows and depth of field.
- **Palette:** `#0B0F14` · `#161C24` surface · `#DDE6EE` ink · `#4FC3F7` glow accent · `#5C6B7A` steel.
- **Type:** SF Pro Expanded Light *(iOS)*. Also *Exo 2* or *Rajdhani* (Google).
- **Fits:** games, music visualizers, wallpapers, and creative 3D apps.
- **HIG risks → fix:** thin light type on busy blur → Regular or heavier weight, with a scrim.

## Skeuomorphism (Aqua / Web 2.0)
- **Era:** Mac OS X Aqua (2001) → iOS 1–6 (until 2013). Wiki › [Skeuomorphism](https://aesthetics.fandom.com/wiki/Skeuomorphism)
- **Mood:** tactile, familiar, crafted, warm-real.
- **Tells:** real materials (leather, linen, wood, felt, paper) · glossy gel buttons · stitching · realistic shadows and highlights · objects that look like their physical versions (notepad, bookshelf, dials).
- **Palette:** material-driven. Example "desk": `#E9E1D3` linen · `#FFFDF6` paper · `#2E2A25` ink · `#3F7CD6` Aqua blue accent · `#7A5230` leather · `#C0392B` bookmark red.
- **Type:** Helvetica Neue, Marker Felt, American Typewriter, or Noteworthy *(iOS)* for the materials they imitate.
- **Shape & layout:** objects with depth, embossed and debossed labels, one real-looking centerpiece object.
- **Material:** high-fidelity textures and lighting. Today, render as 3D/`RealityKit` or baked images.
- **Motion:** physical: page curls, dial detents, lids opening. Haptics on detents (`.selection`).
- **Fits:** instruments and audio (knobs, faders), cameras, journals, games, collectible or "object" apps. Use it for the **hero object**, not the whole app.
- **HIG risks → fix:** fake controls imitate system UI badly → make the skeuomorphic object the *content* (a dial you turn), and keep bars and buttons native. Heavy textures in Dark Mode → provide dark material variants.

## Frutiger Aero
- **Era:** about 2004–2013 (Windows Vista/7, early iPhone era). Wiki › [Frutiger Aero](https://aesthetics.fandom.com/wiki/Frutiger_Aero) · [Frutiger Family](https://aesthetics.fandom.com/wiki/Category:Frutiger_Family)
- **Mood:** fresh, hopeful, clean-tech meets nature, "clean water".
- **Tells:** glossy glass and water · bubbles, tropical fish, blue skies with clouds, green grass · lens flares, auroras, bokeh · humanist sans (Frutiger, Segoe, Myriad) · white, sky blue, and leaf green.
- **Palette:** `#EAF6FF` sky white · `#FFFFFF` surface · `#0F2A3D` ink · `#1E90FF` aqua accent · `#7ED957` leaf green · `#5BC0EB` water · `#B3E5FC` bubble.
- **Type:** Frutiger isn't built in. Use Avenir Next or Optima *(iOS)*. Myriad-like options: SF Pro Rounded. Free humanist options: *Nunito Sans*, *Open Sans*.
- **Shape & layout:** glossy orbs, rounded cards with top highlight (white gradient 0→40%), floating bubbles.
- **Material:** gloss highlight, water caustics, nature photography, bokeh.
- **Motion:** buoyant: bubbles rising, water ripple on tap, gentle float (bounce 0.2).
- **Fits:** wellness and hydration, weather, eco and outdoor, nostalgic social, kids, cleaning and home services. Neo-Aero ([wiki](https://aesthetics.fandom.com/wiki/Neo-Aero)) is the modern revival.
- **HIG risks → fix:** gloss on buttons competes with Liquid Glass → put gloss on content orbs and illustrations, and keep controls native. White text on sky photo → scrim or ink text.

## Frutiger Eco
- **Era:** mid-2000s to early 2010s. A green corporate subgenre of Aero. Wiki › [Frutiger Eco](https://aesthetics.fandom.com/wiki/Frutiger_Eco)
- **Mood:** green optimism, sustainable-corporate.
- **Tells:** leaves, sprouts, and globes · green gradients · wind turbines · clean white · "eco" stock photos.
- **Palette:** `#F4FBF2` · `#123524` ink · `#2E9E44` green accent · `#A8E063` lime · `#56B4D3` sky.
- **Type:** Avenir Next or Gill Sans *(iOS)*. Also *Nunito* (Google).
- **Fits:** sustainability, energy tracking, gardening, EV charging, recycling.
- **HIG risks → fix:** green-on-green → check 4.5:1. It can read as greenwashing clip art → use real data visualizations as the hero.

## Vectordelia (Frutiger Metro)
- **Era:** mid-2000s to early 2010s. "Humanist maximalism" in vector graphics. Wiki › [Vectordelia](https://aesthetics.fandom.com/wiki/Vectordelia)
- **Mood:** vibrant, swooshy, youthful, music-video energy.
- **Tells:** abstract swooshes and flourishes · fluid vector shapes · solid silhouettes (dancers, iPod ads) · gradient blocks on monochrome backgrounds.
- **Palette:** `#111111` or `#FFFFFF` base · `#FF2D95` magenta · `#00C2FF` cyan · `#B6FF00` lime · `#FF8A00` orange.
- **Type:** SF Pro Rounded Bold or Avenir Next Heavy *(iOS)*.
- **Motion:** swooshes draw on, silhouettes dance, beat-synced pulses.
- **Fits:** music and dance, fitness classes, party and events, youth campaigns.
- **HIG risks → fix:** silhouettes against neon lose meaning for VoiceOver → add labels, and use them as decorative only.

## Bright Tertiaries
- **Era:** mid-2000s, alongside Aero and Vectordelia. Wiki › [Bright Tertiaries](https://aesthetics.fandom.com/wiki/Bright_Tertiaries)
- **Mood:** fun, energetic, approachable, 2000s-tech-friendly.
- **Tells:** lime green, purple, orange, and teal (or fuchsia, cyan, and lime) · glossy rounded icons · white backgrounds.
- **Palette:** `#FFFFFF` · `#1D1D1F` ink · `#8CC63F` lime · `#7B3FA0` purple · `#F7941D` orange · `#00A99D` teal.
- **Type:** SF Pro Rounded *(iOS)*. Also *Nunito* (Google).
- **Fits:** kids and family, habit trackers with categories, casual games, calendars with color-coding.
- **HIG risks → fix:** color-only categories → add an SF Symbol per category. Lime or orange text on white fails → fills only.

## Technozen (Techno Kawaii Zen)
- **Era:** mid-to-late 2000s Japanese technology. Wiki › [Technozen](https://aesthetics.fandom.com/wiki/Technozen) *(search result, page title may vary)*
- **Mood:** cold, sterile, and professional, but cozy, friendly, and cute.
- **Tells:** white and pale gray plastic · soft blue and pink accents · rounded minimal devices · small cute mascots · clean grid UI.
- **Palette:** `#F7F9FB` · `#FFFFFF` · `#2B3440` ink · `#6EC1E4` ice blue · `#F7B2C4` sakura pink · `#C9D1D9` gray.
- **Type:** SF Pro Rounded *(iOS)*. Also *M PLUS Rounded 1c* or *Zen Maru Gothic* (Google). Both support Japanese.
- **Motion:** soft and small: tiny bounces, mascot blinks.
- **Fits:** productivity with a cute twist, language learning, calm wellness, gadget companion apps.
- **HIG risks → fix:** pale-on-white → ink text and 3:1 for icons.

## Flat Design (Metro / Material)
- **Era:** 2013 to mid-2020s (iOS 7, Windows Metro 2010, Material 2014 → Material You 2021). Wiki › [Flat Design](https://aesthetics.fandom.com/wiki/Flat_Design)
- **Mood:** clean, efficient, modern, neutral.
- **Tells:** no textures or gloss · solid colors · simple icons · lots of white space · sans-serif · minimal shadows.
- **Palette:** system semantic colors plus one brand accent. Example: `#FFFFFF` · `#F2F2F7` · `#1C1C1E` · `#007AFF`.
- **Type:** SF Pro *(iOS)*.
- **Fits:** default for utilities. Pure flat is the most "invisible" choice, so pair it with an accent aesthetic for personality.
- **HIG risks → fix:** flat buttons without affordance → keep system button styles. It can look generic → see `apple-creative-direction › anti-cliches`.

## Corporate Memphis
- **Era:** late 2010s to early 2020s. Big-tech illustration style (also called "Alegria"). Wiki › [Corporate Memphis](https://aesthetics.fandom.com/wiki/Corporate_Memphis)
- **Mood:** friendly, inclusive, and harmless, now often read as **generic or insincere**.
- **Tells:** flat people with bendy limbs, small heads, and big hands · non-realistic skin tones (blue, purple) · flat pastel backgrounds · floating plants.
- **Palette:** `#FFFFFF` · `#1F2041` ink · `#6C63FF` violet · `#FFB4A2` peach · `#00BFA6` teal.
- **Recommendation:** usually **avoid**, or subvert it on purpose. If people illustrations are needed, give them a specific hand (grainy texture, a real art style, cultural specificity).
- **HIG risks → fix:** illustrations with meaning need `accessibilityLabel`. Avoid text baked into images.

## Neumorphism (Soft UI)
- **Era:** 2019–2021 (coined by Jason Kelly and Michał Malewicz). Wiki › [Neumorphism](https://aesthetics.fandom.com/wiki/Neumorphism)
- **Mood:** soft, calm, tactile, monochrome.
- **Tells:** same-color background and elements · paired light (top-left) and dark (bottom-right) shadows · extruded and pressed-in states · off-white or light gray.
- **Palette:** `#E6E9EF` base · `#FFFFFF` highlight shadow · `#A3B1C6` dark shadow · `#2D3748` ink · `#5A67D8` accent (the only strong color).
- **Type:** SF Pro Rounded *(iOS)*.
- **Known problem:** fails contrast and affordance. The wiki notes it declined because of accessibility issues.
- **Use it only as:** hero objects (a big pressed dial, a timer knob, a device-like widget) with a strong accent for state. Text and controls stay high-contrast. Add a visible border in Increase Contrast mode.
- **Fits:** timers, smart-home knobs, calculators, meditation dials.

## Glassmorphism (Fluent Design)
- **Era:** 2020 onward (Fluent, Big Sur → macOS Tahoe, Windows 11). Apple's **Liquid Glass** (2025) is the system version. Wiki › [Glassmorphism](https://aesthetics.fandom.com/wiki/Fluent_Design)
- **Mood:** layered, airy, premium, modern.
- **Tells:** frosted translucent panels · vivid blurred color blobs behind · thin light borders · soft depth.
- **iOS translation:** **the system already does this.** Liquid Glass belongs to controls and navigation. Express the aesthetic with **vivid content beneath** (mesh gradients, photos, color blobs) so system glass has something to refract. Use `.glassEffect` only on custom *controls* (floating buttons), never on content cards.
- **Palette:** background blobs such as `#7F5AF0` · `#2CB67D` · `#FF8906` · `#3DA9FC` on `#0F0E17`. Text follows system label colors.
- **HIG risks → fix:** glass on glass, glass cards over glass bars → solid or gradient cards. Reduce Transparency → system handles its own glass. Custom blur must fall back to solid.
- **Fits:** almost any modern app. It is the native look in 2026, so pair it with a stronger aesthetic in content to stand out.

## Neubrutalism
- **Era:** web and UI from about 2020, mainstream in 2022–2023 (Gumroad, Figma marketing). Wiki › [Neubrutalism](https://aesthetics.fandom.com/wiki/Neubrutalism)
- **Mood:** bold, honest, playful-raw, indie.
- **Tells:** thick black 2–3 pt outlines · hard offset shadows (4–8 pt, no blur, black) · flat saturated fills · grotesk type · visible grid · a deliberately "unpolished" feel.
- **Palette:** `#FFFDF5` · `#000000` ink and outline · `#FFDE59` yellow · `#FF6B6B` coral · `#4D96FF` blue · `#6BCB77` green · `#C780FA` lilac.
- **Type:** SF Pro Black or Helvetica Neue Condensed Black *(iOS)*. Also *Archivo Black*, *Space Grotesk*, or *Lexend* (Google).
- **Shape & layout:** cards with a black stroke and offset shadow (`.shadow(color: .black, radius: 0, x: 4, y: 4)`), small radius (0–12 pt), stickers and badges.
- **Motion:** press = shadow collapses (card moves +4,+4). Snappy, no easing softness. Haptic `.rigid`.
- **Fits:** indie tools, creator economy, note-taking, learning and quizzes, portfolios, Gen-Z fintech.
- **HIG risks → fix:** black borders on system controls → keep native bars, and put Neubrutalism on cards, chips, and content buttons. Dark Mode → invert to off-black bg and light outlines, or colored outlines.


---

<!-- file: references/catalog-interior.md -->

# Catalog — Interior & Lifestyle Aesthetics

These come from interior design and home and lifestyle media. They translate to apps mostly through **palette,
material, photography, and spacing**, so they suit content-rich lifestyle products.

Entry key as in `catalog-movements.md`.

---

## Minimalism
- **Era:** 1960s art and design → 2010s lifestyle. The opposite of Maximalism. Wiki › [Maximalism](https://aesthetics.fandom.com/wiki/Maximalism) (describes both)
- **Mood:** calm, focused, essential.
- **Tells:** very few elements · generous negative space · a neutral palette with one accent at most · strong type hierarchy · nothing decorative.
- **Palette:** `#FAFAF8` · `#FFFFFF` · `#111111` ink · `#8A8A8A` secondary · accent optional: `#111111` (monochrome) or one muted hue.
- **Type:** SF Pro or New York *(iOS)*. Light weights only for 34 pt and up.
- **Layout:** one idea per screen, 24–32 pt margins, large titles, few dividers.
- **Motion:** almost none: opacity and short position changes.
- **Fits:** writing, meditation, reading, focus timers, premium tools.
- **HIG risks → fix:** hidden controls in the name of minimalism → keep affordances visible. Thin gray text fails contrast.

## Maximalism
- **Era:** a recurring counter-movement. 2020s revival centered on personal expression and nostalgia (e.g. "dopamine decor"). Wiki › [Maximalism](https://aesthetics.fandom.com/wiki/Maximalism)
- **Mood:** exuberant, personal, collected, joyful excess.
- **Tells:** layered patterns · saturated clashing colors · lots of objects and collections · mixed typefaces · horror vacui (no empty space).
- **Palette:** `#FFF4E6` · `#1B1B1B` ink · `#E63946` · `#F4A261` · `#2A9D8F` · `#6A4C93` · `#FFBE0B` · `#FF006E`.
- **Type:** mix 2 display faces (e.g. Didot *(iOS)* + *Bungee* (Google)) with SF Pro for UI.
- **Layout:** collage, stickers, overlapping cards, scrapbook.
- **Motion:** playful, many small reactions, but only in content.
- **Fits:** scrapbooking, mood boards, collections, social profile customization, fashion.
- **HIG risks → fix:** maximal content, minimal chrome. Text gets a solid backing. Respect Reduce Motion and Reduce Transparency.

## Japandi
- **Era:** late 2010s, popular from 2020. Japanese + Scandinavian, hygge + wabi-sabi. Wiki › [Japandi](https://aesthetics.fandom.com/wiki/Japandi)
- **Mood:** serene, warm-minimal, crafted, grounded.
- **Tells:** natural materials (light oak, linen, ceramic, bamboo) · warm neutrals with charcoal accents · low, horizontal compositions · handmade imperfection · plants used sparingly.
- **Palette:** `#F3EFE7` linen · `#FBF9F4` surface · `#2F2B27` charcoal ink · `#7A8B6F` moss accent · `#C8B8A2` oak · `#A0694B` clay · `#DAD4C8` stone.
- **Type:** New York or Hiragino Mincho *(iOS)* for display. SF Pro for UI. Also *Shippori Mincho* or *Noto Serif JP* (Google).
- **Layout:** wide margins, horizontal rhythm, photography of objects, small refined labels.
- **Material:** paper and linen texture at 3–5%, soft natural light photography.
- **Motion:** slow, gentle fades (0.4–0.6 s), no bounce.
- **Fits:** meditation and sleep, tea and coffee, home and interior, journaling, wellness, slow-living e-commerce.
- **HIG risks → fix:** beige-on-beige → ink `#2F2B27`. Moss accent text: check it against bg. Darken it to `#5E6E54` if needed.

## Wabi-Sabi
- **Era:** a traditional Japanese philosophy (beauty in imperfection and transience), usually found on the wiki inside Japandi. Wiki › [Japandi](https://aesthetics.fandom.com/wiki/Japandi)
- **Mood:** quiet, weathered, honest, impermanent.
- **Tells:** irregular hand-made shapes · raw textures (clay, washi, rust) · asymmetry · muted earth tones · visible wear and repair (kintsugi gold seams).
- **Palette:** `#E9E4DA` · `#2B2A28` ink · `#8C7B6B` earth · `#6B705C` lichen · `#B89B5E` kintsugi gold (lines only).
- **Type:** New York *(iOS)*. Brush lettering only as images.
- **Motion:** organic, uneven timing, ink-bleed reveals.
- **Fits:** mindfulness, pottery and craft, journaling, grief and memory apps.
- **HIG risks → fix:** "imperfect" must never mean misaligned controls. Keep the imperfection in illustration and texture.

## Scandinavian
- **Mood:** bright, cozy (hygge), functional, democratic.
- **Tells:** white and pale wood · soft pastels (dusty blue, blush, sage) · simple forms · textiles and knit · lots of natural light.
- **Palette:** `#FFFFFF` · `#F5F3EF` · `#222222` ink · `#6C8EAD` dusty blue · `#E8C5B8` blush · `#A3B18A` sage · `#D8C3A5` birch.
- **Type:** Avenir Next or Gill Sans *(iOS)*. Also *Karla* or *Nunito Sans* (Google).
- **Fits:** family, home, parenting, recipes, reading.
- **HIG risks → fix:** pastels as text → fills only.

## Hollywood Regency
- **Era:** 1920s–1930s (Dorothy Draper, Billy Haines), glamorous homes of movie stars. Wiki › [Hollywood Regency](https://aesthetics.fandom.com/wiki/Hollywood_Regency)
- **Mood:** glamorous, dramatic, witty luxury.
- **Tells:** high-contrast black and white · lacquered jewel colors (emerald, hot pink, peacock) · gold and brass · mirrors, velvet, and lacquer · bold patterns (stripes, chinoiserie).
- **Palette:** `#0D0D0D` · `#FFFFFF` · `#0B6E4F` emerald · `#E0218A` Draper pink · `#C9A227` gold · `#1B4965` peacock.
- **Type:** Didot or Bodoni 72 *(iOS)* for display. SF Pro for UI.
- **Layout:** striped headers, framed portrait cards, mirrored symmetry.
- **Fits:** beauty and fashion, events, luxury booking, dating, cocktails.
- **HIG risks → fix:** pink on black text → check 4.5:1. Stripe patterns behind text → never.

## Shabby Chic
- **Wiki:** [Shabby Chic](https://aesthetics.fandom.com/wiki/Shabby_Chic)
- **Mood:** soft, romantic, vintage-cozy, feminine.
- **Tells:** distressed white-painted furniture · faded pastels · rose florals · lace and linen · antique frames.
- **Palette:** `#FBF7F2` · `#FFFFFF` · `#4A3F3A` ink · `#E8B4B8` rose · `#B8D4C8` mint · `#D9C9B6` linen.
- **Type:** Baskerville or Snell Roundhand *(iOS)* (script only for titles).
- **Fits:** weddings, baking, florists, vintage shops, scrapbooking.
- **HIG risks → fix:** faded palette means low contrast → ink stays dark. Keep florals away from text.

## Victorian
- **Era:** 1837–1901. Revivalism (Gothic, Rococo Revival, Neoclassicism) and eclecticism. Wiki › [Victorian](https://aesthetics.fandom.com/wiki/Victorian)
- **Mood:** ornate, dark-romantic, scholarly, collected.
- **Tells:** dense patterns (damask, William Morris-like) · deep jewel tones · ornate frames and engraved illustrations · serif type with flourishes · cabinet-of-curiosities collections.
- **Palette:** `#1F1A17` · `#2E2622` surface · `#EFE6D8` ink · `#7B1E1E` burgundy · `#23483A` bottle green · `#B8943F` brass · `#3B2F5C` plum.
- **Type:** Baskerville, Hoefler Text, or Bodoni 72 *(iOS)*. Also *IM Fell* or *Playfair Display* (Google).
- **Fits:** book and reading apps, mystery games, museums, genealogy, tea rooms, dark academia audiences.
- **HIG risks → fix:** horror vacui → ornament only in frames and headers. Engraving-style illustrations need alt text.

## Industrial
- **Mood:** raw, urban, utilitarian, loft.
- **Tells:** exposed brick, steel, and concrete · Edison bulbs · black metal · reclaimed wood · stencil lettering.
- **Palette:** `#1E1E1E` · `#2B2B2B` · `#EDEAE4` ink · `#B5651D` rust · `#8A8D8F` steel · `#6B4F3A` wood.
- **Type:** DIN Alternate or DIN Condensed *(iOS)*. Stencil for display only (*Stardos Stencil*, Google).
- **Fits:** coffee roasters, breweries, workshops and DIY, coworking, maker tools.

## Bohemian
- **Mood:** free-spirited, warm, eclectic, well-traveled.
- **Tells:** layered textiles and rugs · macramé, rattan, and plants · terracotta, mustard, and teal · global patterns · handwritten touches.
- **Palette:** `#F6EEE3` · `#2C2420` ink · `#C0643F` terracotta · `#D9A441` mustard · `#2F6F6A` teal · `#8E5572` plum.
- **Type:** New York or Avenir Next *(iOS)*. Handwritten accent via *Caveat* (Google).
- **Fits:** travel, yoga, festivals, plant care, handmade marketplaces.
- **HIG risks → fix:** respect cultural sources. Avoid sacred symbols used as decoration.


---

<!-- file: references/catalog-movements.md -->

# Catalog — Design Movements (1890–1990)

These aesthetics were named by design history, not by the internet. They carry authority and read as
"designed" to most audiences.

**Entry key:** Era · Mood · **Tells** · Palette (`bg / surface / ink / accent / expressive…`) · Type
(built into iOS → licensed/free) · Shape & layout · Material & texture · Icons & illustration · Motion ·
**Fits** · **HIG risks → fix** · Wiki

Fonts marked *(iOS)* ship with iOS and can be used with `Font.custom` at no cost.
Everything else must be bundled and licensed. Google Fonts options are free (OFL).

---

## Art Nouveau
- **Era:** 1890s–1910s, Europe. A reaction against industrial mass production. Wiki › [Art Nouveau](https://aesthetics.fandom.com/wiki/Art_Nouveau)
- **Mood:** organic, romantic, hand-crafted, botanical.
- **Tells:** whiplash curves · plant and flower forms framing content · decorative borders and arches · hand-drawn lettering · muted jewel tones with gold.
- **Palette:** `#F3EBDD` parchment · `#E6D8BE` surface · `#2E2A22` ink · `#5E7B4F` sage accent · `#B08D57` antique gold · `#8C4A3B` madder · `#6F8FA3` peacock blue.
- **Type:** display: Papyrus *(iOS)*. Avoid it; it reads as a joke. Better options: *Cinzel Decorative*, *Arsenal*, or *Parisienne* (Google), or a custom Mucha-style display face. Body: New York or Baskerville *(iOS)*.
- **Shape & layout:** arched frames (top-rounded cards), vertical ornamental borders, centered compositions, images framed by vines.
- **Material:** paper grain, stained-glass color blocks, gold foil (subtle gradient).
- **Icons & illustration:** line illustrations with variable stroke width. Custom SF Symbols with flourish terminals only at large sizes.
- **Motion:** slow, growing: lines draw on (`trim`), stems unfurl, 0.6–0.9 s ease-in-out.
- **Fits:** journaling, botany/gardening, tea & perfume, poetry, wedding, tarot, museum guides.
- **HIG risks → fix:** ornamental borders eat the safe area → keep ornaments in content insets, never under bars. Script type is unreadable at body sizes → titles only.

## Art Deco
- **Era:** 1920s–1930s. A reaction to Art Nouveau that borrowed from Constructivism, Futurism, and Egyptian motifs. Wiki › [Art Deco](https://aesthetics.fandom.com/wiki/Art_Deco)
- **Mood:** glamorous, confident, machine-age luxury.
- **Tells:** strict symmetry · sunbursts and fans · stepped (ziggurat) forms · thin gold lines on black · tall condensed geometric capitals.
- **Palette (dark first):** `#0E0E10` lacquer · `#1C1B1F` surface · `#F2E6C9` ivory ink · `#C9A45C` gold accent · `#1F4E4A` emerald · `#7A1F2B` oxblood. Light: `#F5EFE2` bg · `#1A1A1A` ink · `#9C7A34` brass accent (4.5:1 on ivory).
- **Type:** display: Didot, Bodoni 72 Smallcaps, or Copperplate *(iOS)*. Also *Poiret One*, *Limelight*, or *Josefin Sans* (Google). Use all caps with wide tracking (+0.1–0.2 em). Body: SF Pro or New York.
- **Shape & layout:** symmetric, centered hero; chevron and step dividers; double hairline borders; vertical emphasis.
- **Material:** black lacquer, brushed gold (linear gradient `#8C6B2E→#E9D29A→#8C6B2E`), marble, geometric patterns at low opacity.
- **Icons & illustration:** geometric, symmetric, monoline, in gold. Stepped frames around numbers.
- **Motion:** precise and theatrical: fan and sunburst reveals, curtain wipes, gold line sweeps. Slow, dignified springs (bounce 0).
- **Fits:** finance and premium tiers, hospitality, cocktails, events and tickets, luxury retail, and "Gatsby" moments such as a paywall or achievement.
- **HIG risks → fix:** gold on black body text is below 4.5:1 → use ivory for text and gold for lines and accents. All-caps body text → caps only in titles. Symmetry fights leading-aligned lists → symmetry in hero and cards, native lists below.

## Streamline Moderne
- **Era:** 1930s–1940s, the Depression-era offshoot of Art Deco. Wiki › [Art Deco](https://aesthetics.fandom.com/wiki/Art_Deco)
- **Mood:** optimistic, aerodynamic, calm speed.
- **Tells:** horizontal speed lines (3 parallel stripes) · rounded "bullnose" corners · long horizontal forms · chrome · porthole circles.
- **Palette:** `#F4F1EA` cream · `#E3DED3` surface · `#1E2A33` ink · `#2F6F8F` steel-blue accent · `#C7CCD1` chrome · `#D95D39` signal red.
- **Type:** Futura or Avenir Next *(iOS)*. Also *Josefin Sans* or *Righteous* (Google). Italic or oblique for speed words.
- **Shape & layout:** capsule and pill shapes, fully rounded ends (`Capsule()`), triple-line dividers, horizontal scrolling rails.
- **Material:** polished chrome gradients, enamel, bakelite.
- **Motion:** horizontal slides with slight overshoot, like a train pulling in.
- **Fits:** travel and transit, radio and podcasts, retro diners, EV and mobility apps.
- **HIG risks → fix:** chrome gradients on controls → keep them on hero objects and illustrations.

## Bauhaus
- **Era:** 1919–1933, a German school. "Form follows function." Wiki › [Bauhaus](https://aesthetics.fandom.com/wiki/Bauhaus)
- **Mood:** rational, playful-geometric, honest, constructive.
- **Tells:** circle, square, and triangle as building blocks · red, yellow, and blue plus black and white · asymmetric grid · sans-serif lowercase type · no ornament.
- **Palette:** `#F2EFE6` off-white · `#FFFFFF` surface · `#111111` ink · `#D7263D` red · `#F4C300` yellow · `#1B4FA0` blue. Dark: `#121212` bg with the same primaries slightly desaturated.
- **Type:** Futura *(iOS)* is the canonical choice. Also Avenir Next *(iOS)*, *Josefin Sans* or *Jost* (Google), and lowercase headlines. Body: SF Pro.
- **Shape & layout:** strong asymmetric grid, large geometric blocks as the image, flat color fields, heavy black rules.
- **Material:** flat. Optional slight paper grain for print feel.
- **Icons & illustration:** composed from primitives. SF Symbols `circle.fill`, `square.fill`, and `triangle.fill` as a playful vocabulary.
- **Motion:** shapes slide, rotate 90°, and snap into grid positions. Crisp spring (bounce 0.1–0.2).
- **Fits:** education, tools and productivity, architecture, kids' learning (a geometric twist), design and portfolio apps, museums.
- **HIG risks → fix:** yellow on white fails → yellow only as a fill with black text on it. Color-coded meaning → pair each color with a shape.

## De Stijl
- **Era:** 1917–1931, Netherlands (Mondrian, Rietveld). A core modernist movement. Wiki › [Modernism](https://aesthetics.fandom.com/wiki/Modernism)
- **Mood:** pure, balanced, abstract.
- **Tells:** only horizontal and vertical lines · thick black grid lines · rectangles of pure primaries on white · asymmetric balance.
- **Palette:** `#FFFFFF` · `#111111` · `#DD1F26` · `#FFD400` · `#1B3F99`. Gray `#D9D9D9` as a fourth.
- **Type:** Helvetica Neue or Futura *(iOS)*. Blocky, heavy weights.
- **Shape & layout:** the grid *is* the layout. Mondrian-style tiled dashboards. Radius 0.
- **Motion:** tiles resize along grid lines, with no diagonals and no rotation.
- **Fits:** dashboards and widgets (tiles map naturally to widget sizes), calendar and time blocking, art education.
- **HIG risks → fix:** zero radius clashes with Liquid Glass controls → square in content only. Primaries as data colors → add labels.

## Constructivism
- **Era:** 1915–1930s, Russia. Art as a tool for society. Wiki › [Modernism](https://aesthetics.fandom.com/wiki/Modernism)
- **Mood:** urgent, dynamic, collective, propagandistic.
- **Tells:** strong diagonals (15–45°) · red, black, and cream · photomontage · bold sans capitals on angled bands · wedge and circle compositions.
- **Palette:** `#EFE6D2` cream · `#111111` ink · `#C8102E` red accent · `#6B6B6B` gray.
- **Type:** Futura Condensed ExtraBold or Avenir Next Condensed Heavy *(iOS)*. Also *Oswald* or *Russo One* (Google). Rotated display text.
- **Shape & layout:** diagonal bands behind headers, overlapping photo cutouts, big numbers.
- **Motion:** fast diagonal slams, 150–250 ms, with a stiff spring.
- **Fits:** activism and petitions, sports and fitness challenges, news, event posters, bold campaigns.
- **HIG risks → fix:** rotated text isn't readable by VoiceOver in order and doesn't scale → rotate only decorative duplicates, and keep the real title horizontal. It can read as political → use its energy, not its symbols.

## Swiss Design (International Typographic Style)
- **Era:** 1950s–1970s, Switzerland. The root of Flat Design. Wiki › [Flat Design](https://aesthetics.fandom.com/wiki/Flat_Design)
- **Mood:** objective, clear, confident, timeless.
- **Tells:** strict modular grid · flush-left, ragged-right grotesque type · huge type scale contrast · asymmetric white space · a single red accent · objective photography.
- **Palette:** `#FFFFFF` · `#F2F2F2` · `#111111` ink · `#E30613` Swiss red · `#6E6E6E` secondary. Dark: `#0B0B0B` with white type and the same red.
- **Type:** Helvetica Neue *(iOS)*. SF Pro is a near relative; SF Pro heavy/black weights work well. Also *Inter* (Google). Numbers set big.
- **Shape & layout:** 12-column mindset on 402 pt: 16–20 pt margins, 8 pt baseline. Headline at 64–96 pt left-aligned against small body text. Hairline rules.
- **Material:** none. Pure flat.
- **Icons:** SF Symbols as-is; they already fit.
- **Motion:** minimal and exact: fades and short slides along the grid, snappy spring, no bounce.
- **Fits:** almost anything that values clarity: news, transit, finance, weather, tools, pro apps. The safest "designed" option.
- **HIG risks → fix:** very low risk. Huge headlines must scale with Dynamic Type or reflow at AX sizes.

## Mid-Century Modern
- **Era:** about 1945–1973, US and Scandinavia (Eames, Saarinen). Wiki › [Mid-Century Modern](https://aesthetics.fandom.com/wiki/Mid-Century_Modern)
- **Mood:** warm, optimistic, organic-modern, hospitable.
- **Tells:** clean lines with gentle organic curves · walnut and teak · mustard, orange, olive, and teal · atomic starbursts and boomerangs (lightly) · tapered legs as a visual motif.
- **Palette:** `#F4ECDD` cream · `#FFF8EC` surface · `#2B2420` ink · `#D9822B` burnt-orange accent · `#E1B12C` mustard · `#5E7D4A` olive · `#2A7F7A` teal · `#7A4E2D` walnut.
- **Type:** Avenir Next, Futura, or Gill Sans *(iOS)*. Also *Josefin Sans* or *Poppins* (Google). Script accent: Snell Roundhand *(iOS)*, sparingly.
- **Shape & layout:** rounded rectangles, kidney and pill shapes, generous warm spacing, offset circles.
- **Material:** wood grain (subtle), paper, felt. Muted, not glossy.
- **Icons & illustration:** flat illustration with limited palette and offset print misregistration.
- **Motion:** friendly and smooth. Medium springs with a small bounce (0.15).
- **Fits:** home and interior, cooking, hospitality, real estate, family apps, lifestyle subscriptions.
- **HIG risks → fix:** mustard and orange as text on cream fail → use them as fills, and darken the orange to `#A85E17` for text.

## Atomic Age
- **Era:** about 1940s–1960s, nuclear-optimism culture. Wiki › [Atomic Age](https://aesthetics.fandom.com/wiki/Atomic_Age)
- **Mood:** cheerful science, suburban optimism.
- **Tells:** atom and orbit motifs · starbursts · boomerang shapes · pastel turquoise and pink with black.
- **Palette:** `#FBF5E9` · `#1C1C1C` ink · `#3FB8AF` turquoise · `#F28C8C` coral pink · `#F2C14E` yellow.
- **Type:** Futura or Marker Felt *(iOS)*, used carefully. Also *Righteous* or *Pacifico* (Google).
- **Motion:** orbiting elements for loading, small sparkle bursts on success.
- **Fits:** science education, kids, retro games, diners.
- **HIG risks → fix:** a busy background pattern → keep it under 10% opacity and behind no text.

## Googie
- **Era:** late 1940s to early 1970s, Southern California roadside architecture. Wiki › [Googie](https://aesthetics.fandom.com/wiki/Googie)
- **Mood:** exuberant, car-culture, futuristic fun.
- **Tells:** upswept, cantilevered angles · boomerangs and parabolas · starbursts and flying saucers · neon signage · chrome.
- **Palette:** `#0F1E2E` night · `#FFF6E5` ink on dark · `#FF5E5B` neon red · `#00CECB` neon aqua · `#FFED66` sign yellow.
- **Type:** Marker Felt or Chalkboard SE *(iOS)* feel too casual. Better options: *Monoton*, *Lobster*, *Righteous* (Google), or neon-sign script for display.
- **Shape & layout:** angled cards (skewed headers), sign-like badges, starburst price stickers.
- **Material:** neon glow (`shadow` with an accent color, 2 layers), chrome.
- **Motion:** neon flicker-on (once, on reveal), rotating starbursts.
- **Fits:** food ordering and diners, road trips, retro games, drive-in cinemas.
- **HIG risks → fix:** flicker → never loop it, and disable it with Reduce Motion (photosensitivity). Neon on dark text → the glow is decoration; text stays solid.

## Space Age
- **Era:** mid-1950s to early 1970s, the Space Race. Wiki › [Space Age](https://aesthetics.fandom.com/wiki/Space_Age)
- **Mood:** clean, futuristic, playful-optimistic.
- **Tells:** white molded plastic · orange and white · spheres, eggs, and pod shapes · round windows · ergonomic curves.
- **Palette:** `#FFFFFF` · `#F2F0EB` · `#1A1A1A` ink · `#F26B1D` space orange · `#C5C8CC` aluminum · `#2E86AB` sky.
- **Type:** Avenir Next or Futura *(iOS)*. Also *Space Grotesk* or *Orbitron* (Google, for display).
- **Shape & layout:** large radii (continuous corners 28–40 pt), circular media, pod cards.
- **Material:** glossy white plastic (soft specular highlight), brushed aluminum.
- **Motion:** smooth, floaty, zero-gravity drift, low-stiffness springs.
- **Fits:** astronomy, smart home, audio, kids' science, futuristic but friendly products.
- **HIG risks → fix:** low risk. Keep glossy highlights off controls.

## Brutalism
- **Era:** 1950s–1970s architecture, UK then international. Raw concrete. Wiki › [Brutalism](https://aesthetics.fandom.com/wiki/Brutalism). (For the web and UI revival, see Neubrutalism in the digital catalog.)
- **Mood:** raw, monumental, honest, severe.
- **Tells:** exposed concrete gray · massive blocks · repetitive modular forms · heavy shadows · little or no color.
- **Palette:** `#BDBAB3` concrete · `#D6D3CC` surface · `#1B1B1B` ink · `#595754` shadow · one accent only if needed: `#C1440E` rust.
- **Type:** Helvetica Neue Condensed Black, Avenir Next Condensed Heavy, or Menlo *(iOS)*. Also *Archivo Black* or *Space Mono* (Google).
- **Shape & layout:** big blocks, zero or small radius, stacked slabs, stark grid, lots of heavy dark space.
- **Material:** concrete texture (noise plus a subtle stain), raw photography.
- **Motion:** heavy, weighty: slow start, firm stop, no bounce. A haptic `.heavy` impact on landing.
- **Fits:** architecture, photography portfolios, music (techno, industrial), editorial, serious tools.
- **HIG risks → fix:** gray-on-gray text fails → ink `#1B1B1B` on concrete. Heaviness can hide affordances → system buttons stay clear.

## Memphis Design
- **Era:** 1980s. Memphis Group, Milan (Ettore Sottsass, 1980). Wiki › [Memphis Design](https://aesthetics.fandom.com/wiki/Memphis_Design)
- **Mood:** playful, loud, anti-serious, pop.
- **Tells:** squiggles, zig-zags, confetti · clashing neon and pastel · black-and-white terrazzo and grid patterns · geometric shapes as objects · offset shadows.
- **Palette:** `#FFF8F0` · `#111111` ink · `#FF4F79` hot pink · `#00B2CA` teal · `#FFD23F` yellow · `#7D5BA6` purple · `#3BCEAC` mint.
- **Type:** Futura Bold or Avenir Next Heavy *(iOS)*. Also *Rubik Mono One*, *Bungee*, or *Fredoka* (Google).
- **Shape & layout:** floating shapes around the hero, sticker badges, patterned headers, hard 4–6 pt offset shadows in black.
- **Material:** flat pattern fills (dots, grid, squiggle), terrazzo.
- **Motion:** bouncy (bounce 0.3–0.4), wiggles, shapes pop in with stagger.
- **Fits:** kids, party and events, games, creative tools, snack and consumer brands, onboarding celebrations.
- **HIG risks → fix:** noise behind text → a pattern only in margins and headers. Too much on every screen → Memphis in the hero, empty states, and celebrations, with calm lists.

## Retrofuturism
- **Era:** the future as imagined in the past (1930s–1980s). An umbrella for Atomic Age, Googie, Space Age, and Cassette Futurism. Wiki › [Retrofuturism](https://aesthetics.fandom.com/wiki/Retrofuturism)
- **Use it as:** a family choice. Pick the decade first, then use that entry.


---

<!-- file: references/selection-guide.md -->

# Selection Guide — choosing, pairing, and translating an aesthetic

## 1. Pick by emotional job

| Emotional job | Safe | Characterful | Bold |
|---|---|---|---|
| Calm, focused | Minimalism | Japandi | Wabi-Sabi |
| Trustworthy, precise | Swiss Design | Bauhaus | De Stijl |
| Warm, homey | Scandinavian | Mid-Century Modern | Bohemian |
| Luxurious, premium | Minimalism (monochrome) | Art Deco | Hollywood Regency |
| Playful, joyful | Bright Tertiaries | Memphis Design | Maximalism |
| Nostalgic (millennial) | Skeuomorphism (hero object) | Frutiger Aero | Y2K Futurism |
| Nostalgic (Gen X / analog) | Mid-Century Modern | Cassette Futurism | Googie |
| Futuristic, techy | Glassmorphism (native) | Space Age | Vectorheart / Metalheart |
| Energetic, urgent | Swiss Design (red) | Neubrutalism | Constructivism |
| Romantic, crafted | Scandinavian | Art Nouveau | Victorian |
| Raw, honest, indie | Swiss Design | Neubrutalism | Brutalism |
| Cute but clean | SF Pro Rounded + pastels | Technozen | Y2K (candy plastic) |
| Fresh, natural, eco | Scandinavian | Frutiger Eco | Frutiger Aero |

## 2. Pick by product type (starting points, not rules)

| Product | Strong fits | Usually avoid |
|---|---|---|
| Finance, banking | Swiss Design, Art Deco (premium tier), Bauhaus | Memphis, Shabby Chic, Metalheart |
| Health, meditation, sleep | Japandi, Minimalism, Wabi-Sabi, Frutiger Aero (hydration) | Constructivism, Neubrutalism |
| Productivity, notes | Swiss Design, Neubrutalism, Bauhaus, Technozen | Victorian, Maximalism |
| Music, audio | Cassette Futurism, Vectordelia, Y2K, Skeuomorphism (instruments) | Shabby Chic |
| Kids, education | Bauhaus, Memphis, Bright Tertiaries, Atomic Age | Brutalism, Metalheart |
| Food, recipes, restaurants | Mid-Century Modern, Googie (diners), Scandinavian, Bohemian | De Stijl |
| Travel | Streamline Moderne, Mid-Century Modern, Bohemian | Neumorphism |
| Fashion, beauty | Hollywood Regency, Y2K, Art Deco, Maximalism | Industrial |
| Social, Gen Z | Y2K, Neubrutalism, Maximalism, Frutiger Aero (ironic nostalgia) | Corporate Memphis |
| Developer, pro tools | Swiss Design, Cassette Futurism, Brutalism | Shabby Chic, Hollywood Regency |
| Games | Anything with commitment; Googie, Metalheart, Memphis, Victorian | Flat Design (too plain) |
| Sustainability, energy | Frutiger Eco, Scandinavian, Swiss Design (data) | Hollywood Regency |

## 3. Audience and nostalgia
- An aesthetic reads as **nostalgia** to people who were about 8–20 years old during its era, and as **novelty** to younger people.
  Frutiger Aero and Y2K target people born roughly 1990–2005. Mid-Century and Space Age read as "classic" to most.
- Internet-named aesthetics (Frutiger Aero, Vectordelia, Metalheart, Technozen) are **insider references**.
  They work for audiences who know the terms, and simply look "2008" to others. Use them on purpose.
- Movements (Bauhaus, Swiss, Deco, Mid-Century) carry **cultural authority** and read as "well designed" to almost everyone.

## 4. Pairings (primary + accent)

| Primary | Good accent | Why | Avoid |
|---|---|---|---|
| Swiss Design | Bauhaus (shapes in illustration) | Same rational roots | Victorian |
| Swiss Design | Neubrutalism (cards) | Grid + raw energy | Neumorphism |
| Japandi | Wabi-Sabi (texture) | Same philosophy | Memphis |
| Mid-Century Modern | Atomic Age (motifs) | Same era | Y2K |
| Art Deco | Streamline Moderne (motion) | Direct descendant | Shabby Chic |
| Frutiger Aero | Skeuomorphism (hero object) | Same era | Brutalism |
| Y2K Futurism | Vectorheart (type and graphics) | Same years | Japandi |
| Neubrutalism | Memphis (stickers and patterns) | Both loud and flat | Glassmorphism |
| Glassmorphism (native) | Any vivid content aesthetic | Glass needs rich content to refract | More custom glass |
| Minimalism | One bold display font from Deco, Googie, or Vectorheart | Tension from a single loud element | A second loud element |

Rule: the accent may add **one** layer (texture *or* illustration *or* motion *or* display type).

## 5. Translation — aesthetic → iOS

| Aesthetic trait | iOS implementation |
|---|---|
| Palette | `Color` assets with Any/Dark + High Contrast variants. The accent goes in `.tint()`. Expressive colors live in content only. |
| Display type | `Font.custom(name, size:, relativeTo: .largeTitle)` so it scales. Built-in faces need no bundling. Check `UIFont.familyNames`. |
| SF Pro variants | `.fontWidth(.expanded/.condensed/.compressed)`, `.fontDesign(.rounded/.serif/.monospaced)`. Most tech eras can be done with SF alone. |
| Shapes & radii | `RoundedRectangle(cornerRadius:, style: .continuous)`, `Capsule()`, and custom `Shape` for chamfers and arches. Keep system control shapes. |
| Hard offset shadow (Neubrutalism, Memphis) | `.shadow(color: .black, radius: 0, x: 4, y: 4)` plus a stroke overlay. Collapse it on press. |
| Soft paired shadows (Neumorphism) | two `.shadow` modifiers (light −x−y, dark +x+y). Content objects only. |
| Gloss, chrome, iridescence | `LinearGradient` highlight overlays, `MeshGradient` (iOS 18+), `AngularGradient` for iridescence. |
| Texture, grain, paper | a tiled noise image at 3–8% opacity, or `Canvas`. Turn it off with Reduce Transparency if it harms legibility. |
| Patterns (Memphis, Deco, Victorian) | `Canvas` or tiled images behind content headers only. |
| Glass | system Liquid Glass on bars and controls. Custom floating controls use `.glassEffect()`. Never on content. |
| Glow, neon | layered `.shadow(color: accent, radius: 8)` on shapes. Text keeps a solid fill. |
| Scanlines, CRT | overlay on specific hero views, never the whole window. |
| Custom icons | custom SF Symbols (template from SF Symbols app) matched to text weight. Style shows in terminals, fills, and detail. |
| Motion personality | springs from `apple-motion-and-delight`. Stepped (Cassette), bouncy (Memphis), slow (Japandi), heavy (Brutalism), precise (Swiss). |
| Haptics | `.sensoryFeedback`: `.rigid` (Neubrutalism, Cassette), `.soft` (Japandi, Aero), `.heavy` (Brutalism). |
| App icon | the single strongest tell. Test the dark, clear, and tinted variants. |

## 6. Self-check before delivering
- Could someone name the aesthetic from a screenshot without being told? If not, push the tells.
- Does any tell sit on a system control? Move it to content.
- Light, dark, and increased contrast all designed? Body text 4.5:1?
- Does the app still work at AX5 Dynamic Type with the display font?
- With Reduce Motion and Reduce Transparency on, does it still look like the aesthetic? (The palette and type should carry it.)
