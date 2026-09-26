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
