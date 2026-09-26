#!/usr/bin/env bash
# Installs the skills into a local agent's skills directory.
#
# Usage:
#   ./scripts/install.sh                      # Claude Code, all projects   (~/.claude/skills)
#   ./scripts/install.sh --project <path>     # Claude Code, one project    (<path>/.claude/skills)
#   ./scripts/install.sh --codex              # OpenAI Codex CLI            (~/.codex/skills or $CODEX_SKILLS_DIR)
#   ./scripts/install.sh --dir <path>         # any directory
#   add --link to symlink instead of copy (a `git pull` then updates the installed skills)
#   ./scripts/install.sh --uninstall [target flags]
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
SRC="$ROOT/skills"
DEST="$HOME/.claude/skills"
MODE=copy
ACTION=install

while [ $# -gt 0 ]; do
  case "$1" in
    --project)   DEST="$(cd "${2:?--project needs a path}" && pwd)/.claude/skills"; shift ;;
    --codex)     DEST="${CODEX_SKILLS_DIR:-$HOME/.codex/skills}" ;;
    --dir)       DEST="${2:?--dir needs a path}"; shift ;;
    --link)      MODE=link ;;
    --uninstall) ACTION=uninstall ;;
    -h|--help)   sed -n '2,11p' "$0"; exit 0 ;;
    *) echo "unknown option: $1" >&2; exit 1 ;;
  esac
  shift
done

mkdir -p "$DEST"

for dir in "$SRC"/*/; do
  name="$(basename "$dir")"
  target="$DEST/$name"

  if [ "$ACTION" = uninstall ]; then
    rm -rf "$target" && echo "removed  $target"
    continue
  fi

  rm -rf "$target"
  if [ "$MODE" = link ]; then
    ln -s "${dir%/}" "$target"
  else
    cp -R "${dir%/}" "$target"
  fi
  echo "$MODE  $name → $target"
done

if [ "$ACTION" = install ]; then
  echo "Done. Start a new session so the agent picks up the skills."
fi
