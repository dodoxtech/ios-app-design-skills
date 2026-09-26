#!/usr/bin/env bash
# Packages the skills for each target:
#   dist/claude/<skill>.zip        → upload in claude.ai (Settings › Capabilities › Skills) or Claude API
#   dist/chatgpt/knowledge/*.md    → one merged file per skill, for Custom GPT / Project knowledge
#   dist/chatgpt/instructions.md   → paste into the Custom GPT "Instructions" field
#   dist/single-file/apple-hig-skills.md → everything in one file (any LLM, system prompt or attachment)
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
SKILLS="$ROOT/skills"
DIST="$ROOT/dist"

rm -rf "$DIST"
mkdir -p "$DIST/claude" "$DIST/chatgpt/knowledge" "$DIST/single-file"

# Merge a skill's SKILL.md and all supporting markdown into one document.
merge_skill() {
  local dir="$1"
  cat "$dir/SKILL.md"
  find "$dir" -type f -name '*.md' ! -name 'SKILL.md' | sort | while read -r f; do
    printf '\n\n---\n\n<!-- file: %s -->\n\n' "${f#"$dir"/}"
    cat "$f"
  done
}

for dir in "$SKILLS"/*/; do
  dir="${dir%/}"
  name="$(basename "$dir")"

  (cd "$SKILLS" && zip -qr "$DIST/claude/$name.zip" "$name" -x '*.DS_Store')
  merge_skill "$dir" > "$DIST/chatgpt/knowledge/$name.md"

  {
    printf '\n\n# ===== SKILL: %s =====\n\n' "$name"
    merge_skill "$dir"
  } >> "$DIST/single-file/apple-hig-skills.md"
done

cp "$ROOT/chatgpt/instructions.md" "$DIST/chatgpt/instructions.md"

chars=$(wc -c < "$DIST/chatgpt/instructions.md" | tr -d ' ')
if [ "$chars" -gt 8000 ]; then
  echo "warning: chatgpt/instructions.md is $chars chars (Custom GPT limit is 8000)" >&2
fi

echo "Built:"
find "$DIST" -type f | sed "s|$ROOT/||" | sort
