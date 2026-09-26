# Apple HIG Mobile Design Skills

Seven agent skills that make Claude or ChatGPT act as a senior iOS/iPadOS product designer and creative director who follows
Apple's [Human Interface Guidelines](https://developer.apple.com/design/human-interface-guidelines)
(iOS 26 / Liquid Glass era).

| Skill | Type | Use it to |
|---|---|---|
| [`apple-hig-foundations`](skills/apple-hig-foundations/SKILL.md) | Knowledge | Layout, device sizes, typography & Dynamic Type, color, Liquid Glass, SF Symbols, motion, icons, accessibility |
| [`apple-hig-components`](skills/apple-hig-components/SKILL.md) | Knowledge | Pick and configure the right bar, sheet, alert, menu, button, list, field, and search component |
| [`apple-hig-patterns`](skills/apple-hig-patterns/SKILL.md) | Knowledge | Onboarding, permissions, sign in, loading/empty/error states, feedback, settings, UX writing |
| [`apple-hig-design-review`](skills/apple-hig-design-review/SKILL.md) | Workflow | Audit a screenshot, mockup, or SwiftUI/UIKit code → severity-ranked report with HIG citations |
| [`apple-hig-screen-design`](skills/apple-hig-screen-design/SKILL.md) | Workflow | Brief → IA → screen spec → states → accessibility → copy → optional SwiftUI starter |
| [`apple-creative-direction`](skills/apple-creative-direction/SKILL.md) | Creative | Concept & metaphor, 3 directions (refined → expressive → wild), visual identity, signature moments, HIG guardrails, anti-clichés |
| [`apple-motion-and-delight`](skills/apple-motion-and-delight/SKILL.md) | Creative | Motion language (springs, choreography), signature interactions, delight catalog, haptics, SwiftUI motion recipes |

**Two layers:** the creative skills push for a distinctive concept ("be conventional where people act,
unforgettable where people feel"); the HIG skills act as guardrails. A typical flow is
`apple-creative-direction` → `apple-motion-and-delight` → `apple-hig-screen-design` → `apple-hig-design-review`.

Every skill labels advice as **`HIG › <page>`** (stated by Apple) or **`Convention`** (common practice),
so designers and engineers can tell a rule from a preference.

## Layout

```
skills/<name>/
  SKILL.md            # YAML frontmatter (name, description) + instructions
  references/*.md     # detail loaded on demand (tables, checklists)
  assets/*.md         # output templates
chatgpt/instructions.md   # Custom GPT system instructions (< 8000 chars)
scripts/build.sh          # packages everything into dist/
```

The format is the open Agent Skills `SKILL.md` standard: plain Markdown and only the portable
frontmatter fields (`name`, `description`), no tool-specific scripts.

## Install

Run `./scripts/build.sh` first to create `dist/`.

### Claude Code
```bash
# Available in every project
cp -R skills/* ~/.claude/skills/
# or only in one project
mkdir -p .claude/skills && cp -R skills/* .claude/skills/
```
Claude loads a skill automatically when your request matches its description. You can also ask for one
by name: "use apple-hig-design-review on this screenshot".

### Claude.ai / Claude Desktop
Settings › Capabilities › Skills › Upload skill → upload each `dist/claude/<skill>.zip`.

### Claude API (Agent Skills)
Upload each skill folder through the Skills API and attach the skill IDs to your requests.
See Anthropic's Agent Skills documentation.

### ChatGPT: Custom GPT or Project (works on any plan that supports them)
1. Create a GPT (or a Project).
2. Paste `dist/chatgpt/instructions.md` into **Instructions**.
3. Upload the seven files in `dist/chatgpt/knowledge/` as **Knowledge**.
4. Turn on image input so it can review screenshots.

### OpenAI Codex / ChatGPT skills
Where your OpenAI client supports `SKILL.md` skills, copy the `skills/*` folders into its skills
directory (for Codex CLI, `~/.codex/skills/`; check your version's docs for the exact path).

### Any other LLM
Attach or paste `dist/single-file/apple-hig-skills.md` as a system prompt or file.

## Example prompts

- "Review this checkout screen against the HIG." *(attach screenshot)*
- "Design the onboarding and permission flow for a receipt-scanning expense app. iPhone first, iOS 26."
- "Should editing a profile be a push or a sheet? We have unsaved-changes risk."
- "Audit this SwiftUI view for HIG and accessibility problems." *(paste code)*
- "Give me a Dark Mode-safe color system for a brand with accent #FF5A1F."
- "Write the empty, error, and offline states for our Library tab."
- "Give me 3 creative directions for a sleep-tracking app — one of them should be wild."
- "Design a signature interaction and a motion language for our habit app. It feels too generic."
- "Our onboarding is a 3-page carousel. Make it memorable without breaking the HIG."

## Sources & maintenance

- Written from the HIG as of April 2026 (Liquid Glass guidance added June 2025, device specs through
  iPhone 17 / iPhone Air).
- Creative layer draws on the 2026 Apple Design Award winners, WWDC18 *Designing Fluid Interfaces*,
  WWDC25 Liquid Glass sessions, and design-engineering practice (Emil Kowalski, Learn UI).
- WWDC26 refined Liquid Glass rendering; review the Liquid Glass sections against the latest HIG.
- When Apple updates the HIG (usually at WWDC in June and at iPhone launches in September), recheck
  `references/layout-and-devices.md` (device sizes), the Liquid Glass sections, and `swiftui-mapping.md`.
- These skills summarize and point to Apple's guidance; they aren't affiliated with Apple.
  The Human Interface Guidelines belong to Apple Inc.
