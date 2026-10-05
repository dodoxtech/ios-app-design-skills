# Apple HIG Mobile Design Skills

Nine agent skills that make Claude or ChatGPT act as a senior iOS/iPadOS product designer and creative director who follows
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
| [`apple-design-aesthetics`](skills/apple-design-aesthetics/SKILL.md) | Creative | Choose a named aesthetic (Bauhaus, Swiss, Art Deco, Memphis, Japandi, Frutiger Aero, Y2K, Neubrutalism… 40 styles) → shortlist, blend, iOS tokens, HIG guardrails |
| [`apple-hig-color`](skills/apple-hig-color/SKILL.md) | Creative + Knowledge | Emotion → palette, color harmony (analogous, complementary, triadic…), 60-30-10 proportions, light/dark/increased-contrast tokens checked against HIG › Color |

**Two layers:** the creative skills push for a distinctive concept ("be conventional where people act,
unforgettable where people feel"); the HIG skills act as guardrails. A typical flow is
`apple-creative-direction` → `apple-design-aesthetics` → `apple-hig-color` → `apple-motion-and-delight` → `apple-hig-screen-design` → `apple-hig-design-review`.

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
scripts/install.sh        # installs into Claude Code, Codex, or any skills folder
```

The format is the open Agent Skills `SKILL.md` standard: plain Markdown and only the portable
frontmatter fields (`name`, `description`), no tool-specific scripts.

## Install

### Quick install with `npx skills` (recommended for coding agents)

Uses the open [`skills` CLI](https://github.com/vercel-labs/skills) (needs Node.js 18+). It works
with Claude Code, Codex, Cursor, GitHub Copilot, Cline, OpenCode, and 70+ other agents.
```bash
# Interactive: pick skills and agents from a menu
npx skills add dodoxtech/ios-app-design-skills

# All 9 skills → Claude Code, for every project (~/.claude/skills/)
npx skills add dodoxtech/ios-app-design-skills --skill '*' -a claude-code -g -y

# All 9 skills → current project only (./.claude/skills/, commit it to share with your team)
npx skills add dodoxtech/ios-app-design-skills --skill '*' -a claude-code -y

# Only some skills
npx skills add dodoxtech/ios-app-design-skills --skill apple-creative-direction --skill apple-motion-and-delight -a claude-code -g -y

# Other agents (several -a flags allowed)
npx skills add dodoxtech/ios-app-design-skills --skill '*' -a codex -a cursor -g -y

# See what the repo contains without installing
npx skills add dodoxtech/ios-app-design-skills --list

# From a local copy (before publishing, or for testing edits)
npx skills add ./ios-app-design-skills --skill '*' -a claude-code -g -y
```

Manage installed skills:

```bash
npx skills list -g                      # what's installed globally
npx skills update -g                    # pull the latest version of installed skills
npx skills remove apple-hig-patterns -g # remove one skill
```

Notes:
- `-g` installs for your user (all projects). Without it, skills go into the current project folder.
- By default the CLI symlinks from a shared copy; add `--copy` to copy real files instead.
- Private repo? The CLI uses your existing git login (GitHub CLI, SSH key, or credential helper).
- Start a new agent session after installing.
- To publish: push this folder to GitHub as `ios-app-design-skills`. The CLI finds every
  `skills/<name>/SKILL.md` automatically; nothing else is needed.

`npx skills` covers coding agents only. For claude.ai, ChatGPT, or other chat apps, use the
sections below.

### 0. Get the files and build the packages

```bash
git clone https://github.com/dodoxtech/ios-app-design-skills # or download and unzip the folder
cd ios-app-design-skills
./scripts/build.sh                               # creates dist/ (zips for claude.ai, files for ChatGPT)
```

Requirements: macOS or Linux with `bash` and `zip` (Windows: use WSL or Git Bash).
Run `./scripts/build.sh` again after editing any skill.

Which option should I use?

| You use | Go to |
|---|---|
| Claude Code (terminal, VS Code, JetBrains, desktop app) | [A](#a-claude-code) |
| claude.ai website / Claude Desktop / Claude mobile | [B](#b-claudeai--claude-desktop) |
| Claude API in your own product | [C](#c-claude-api) |
| ChatGPT | [D](#d-chatgpt-custom-gpt-or-project) |
| OpenAI Codex CLI | [E](#e-openai-codex-cli) |
| Gemini, Cursor, or any other AI tool | [F](#f-any-other-ai-tool) |

### A. Claude Code

As a plugin (updates come with the plugin, skills are namespaced `ios-app-design-skills:<skill>`):

```
/plugin marketplace add dodoxtech/ios-app-design-skills
/plugin install ios-app-design-skills@ios-app-design-skills
```

To enable it for everyone working on a project, commit this to the project's `.claude/settings.json`:

```json
{
  "extraKnownMarketplaces": {
    "ios-app-design-skills": {
      "source": { "source": "github", "repo": "dodoxtech/ios-app-design-skills" }
    }
  },
  "enabledPlugins": {
    "ios-app-design-skills@ios-app-design-skills": true
  }
}
```

Or copy the skills directly:

```bash
./scripts/install.sh                       # all projects → ~/.claude/skills/
./scripts/install.sh --project ~/my-app    # one project  → ~/my-app/.claude/skills/ (commit it to share with your team)
./scripts/install.sh --link                # symlink instead of copy; `git pull` updates the skills
./scripts/install.sh --uninstall           # remove (add --project <path> for a project install)
```

Manual alternative: `cp -R skills/* ~/.claude/skills/`

Then:
1. Start a **new** Claude Code session. Skills are loaded at session start.
2. Check: ask *"What skills do you have available?"*. The nine `apple-*` skills should be listed.
3. Use it: Claude picks a skill automatically when your request matches its description, or you can
   name one: *"Use apple-creative-direction to give me 3 directions for a sleep app."*

### B. claude.ai / Claude Desktop

Needs a plan with Skills (Pro, Max, Team, or Enterprise). On Team/Enterprise, an admin may need to
enable Skills for the organization first.

1. Run `./scripts/build.sh`. You get one zip per skill in `dist/claude/`.
2. Open **Settings › Capabilities**. Turn on **Code execution and file creation** (Skills need it).
3. In the **Skills** section, click **Upload skill** and choose a zip from `dist/claude/`.
4. Repeat for all 9 zips, then make sure each skill is toggled **on**.
5. Start a new chat and ask for something the skill covers, e.g. *"Review this screen against the HIG"*
   with a screenshot attached.

Skills uploaded on claude.ai are also available in Claude Desktop and mobile when you're signed in to
the same account. Each zip contains one folder with `SKILL.md` at its top, which is the layout
claude.ai expects. Don't re-zip the files without that folder.

### C. Claude API

Upload each skill folder with the Skills API, then reference the skill IDs in the `container` of your
Messages requests (the code execution tool must be enabled). Endpoints, beta headers, and SDK examples:
[Agent Skills documentation](https://docs.claude.com/en/docs/agents-and-tools/agent-skills/overview).

### D. ChatGPT: Custom GPT or Project

Custom GPT (needs a paid ChatGPT plan to create one):
1. ChatGPT › **GPTs › Create › Configure**.
2. **Name:** e.g. *HIG Design Partner*. **Description:** *Senior iOS designer and creative director following Apple's HIG.*
3. **Instructions:** paste the full contents of `dist/chatgpt/instructions.md` (about 6,000 characters; the limit is 8,000).
4. **Knowledge:** upload the 9 files from `dist/chatgpt/knowledge/`.
5. **Capabilities:** turn on image generation (for mood/visual exploration) and Code Interpreter
   (optional). Web search is optional; turn it on if you want it to check the latest HIG.
6. **Conversation starters** (optional): copy a few from [Example prompts](#example-prompts).
7. **Create**, then share as *Only me*, *Anyone with the link*, or your workspace.

ChatGPT Project (no GPT builder needed):
1. Create a **Project**. Open **Project settings › Instructions** and paste `dist/chatgpt/instructions.md`.
2. Add the 9 files from `dist/chatgpt/knowledge/` as **Project files**.
3. Chat inside that project.

If your ChatGPT workspace supports `SKILL.md` skills directly, upload the zips from `dist/claude/`
the same way (the format is the same open standard).

### E. OpenAI Codex CLI

```bash
./scripts/install.sh --codex                              # → ~/.codex/skills/
CODEX_SKILLS_DIR=/custom/path ./scripts/install.sh --codex
```

The skills folder location differs between Codex versions. Check your version's docs and set
`CODEX_SKILLS_DIR`, or use `--dir <path>`. Restart Codex afterwards.

### F. Any other AI tool

Paste or attach `dist/single-file/apple-hig-skills.md` (all 9 skills in one file) as the system prompt,
custom instructions, project knowledge, or a rules file (e.g. Cursor `.cursor/rules/`, Gemini Gems).
If the tool limits prompt length, attach it as a file and use `chatgpt/instructions.md` as the prompt.

### Updating

```bash
git pull && ./scripts/build.sh
./scripts/install.sh            # Claude Code (not needed if you installed with --link)
```

On claude.ai, delete the old skill and upload the new zip. In ChatGPT, replace the Knowledge files.

### Troubleshooting

| Problem | Fix |
|---|---|
| Claude doesn't use the skill | Start a new session; check the folder is `~/.claude/skills/<name>/SKILL.md` (not nested one level deeper); name the skill in your prompt |
| claude.ai upload rejected | Upload the zips from `dist/claude/` unchanged; make sure Code execution is on |
| `permission denied` running scripts | `chmod +x scripts/*.sh` |
| `zip: command not found` | macOS: preinstalled; Ubuntu/Debian: `sudo apt install zip` |
| ChatGPT ignores the knowledge files | Keep the instructions' KNOWLEDGE FILES list; name the mode in your prompt ("Review mode: …", "Creative mode: …") |

### Cài đặt nhanh (Tiếng Việt)

0. **Nhanh nhất (Claude Code, Codex, Cursor…):**
   `npx skills add dodoxtech/ios-app-design-skills --skill '*' -a claude-code -g -y`
   (cần Node.js 18+; đổi `-a claude-code` thành `-a codex`, `-a cursor`… cho agent khác).
1. Tải repo về, mở Terminal trong thư mục, chạy `./scripts/build.sh`.
2. **Claude Code:** chạy `./scripts/install.sh`, rồi mở phiên mới. Hỏi *"What skills do you have?"* để kiểm tra.
3. **claude.ai:** Settings › Capabilities › bật *Code execution*, rồi ở mục Skills bấm *Upload skill* và
   tải lần lượt 9 file zip trong `dist/claude/`.
4. **ChatGPT:** tạo Custom GPT hoặc Project. Dán nội dung `dist/chatgpt/instructions.md` vào ô
   Instructions và tải 9 file trong `dist/chatgpt/knowledge/` lên phần Knowledge.
5. **Công cụ khác:** dùng file `dist/single-file/apple-hig-skills.md`.

Skill viết bằng tiếng Anh nhưng AI sẽ trả lời bằng ngôn ngữ bạn hỏi.

## Example prompts

- "Review this checkout screen against the HIG." *(attach screenshot)*
- "Design the onboarding and permission flow for a receipt-scanning expense app. iPhone first, iOS 26."
- "Should editing a profile be a push or a sheet? We have unsaved-changes risk."
- "Audit this SwiftUI view for HIG and accessibility problems." *(paste code)*
- "Give me a Dark Mode-safe color system for a brand with accent #FF5A1F."
- "Pick a palette for a baby sleep tracker that feels calm, safe, and tender, with 60-30-10 proportions."
- "Our fitness app colors feel muddy. Suggest a harmony scheme and fix the proportions."
- "Write the empty, error, and offline states for our Library tab."
- "Give me 3 creative directions for a sleep-tracking app — one of them should be wild."
- "Design a signature interaction and a motion language for our habit app. It feels too generic."
- "Our onboarding is a 3-page carousel. Make it memorable without breaking the HIG."
- "Show me the aesthetics I can choose from for a tea shop app." / "Make our habit app Bauhaus + Memphis."
- "Which is better for a Gen-Z finance app: Y2K Futurism, Neubrutalism, or Frutiger Aero?"

## Sources & maintenance

- Written from the HIG as of April 2026 (Liquid Glass guidance added June 2025, device specs through
  iPhone 17 / iPhone Air).
- Creative layer draws on the 2026 Apple Design Award winners, WWDC18 *Designing Fluid Interfaces*,
  WWDC25 Liquid Glass sessions, and design-engineering practice (Emil Kowalski, Learn UI).
- The aesthetics catalog follows the Aesthetics Wiki category
  [Design Aesthetics](https://aesthetics.fandom.com/wiki/Category:Design_Aesthetics) (community-edited, CC BY-SA).
  Palettes, fonts, and iOS translations are our own. Recheck the category now and then for new entries.
- WWDC26 refined Liquid Glass rendering; review the Liquid Glass sections against the latest HIG.
- When Apple updates the HIG (usually at WWDC in June and at iPhone launches in September), recheck
  `references/layout-and-devices.md` (device sizes), the Liquid Glass sections, and `swiftui-mapping.md`.
- The color skill draws on Itten (*The Art of Color*), Albers (*Interaction of Color*), Goethe's light values,
  OKLCH, and HIG › Color as updated December 2025 for Liquid Glass.
- These skills summarize and point to Apple's guidance; they aren't affiliated with Apple.
  The Human Interface Guidelines belong to Apple Inc.
