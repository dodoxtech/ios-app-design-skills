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
