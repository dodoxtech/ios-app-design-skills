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
