#!/usr/bin/env bash
set -euo pipefail

usage() {
  echo "Usage: $0 codex|claude|openclaw|all" >&2
  exit 2
}

platform="${1:-}"
source_dir="$(cd "$(dirname "$0")" && pwd)/foolish-think"

test -f "$source_dir/SKILL.md" || {
  echo "Cannot find $source_dir/SKILL.md" >&2
  exit 1
}

install_to() {
  destination="$1"
  mkdir -p "$(dirname "$destination")"
  if test -e "$destination"; then
    backup="${destination}.backup.$(date +%Y%m%d%H%M%S)"
    mv "$destination" "$backup"
    echo "Backed up existing skill to $backup"
  fi
  cp -R "$source_dir" "$destination"
  echo "Installed Foolish Think to $destination"
}

case "$platform" in
  codex)
    install_to "${CODEX_HOME:-$HOME/.codex}/skills/foolish-think"
    ;;
  claude)
    install_to "$HOME/.claude/skills/foolish-think"
    ;;
  openclaw)
    install_to "$HOME/.agents/skills/foolish-think"
    ;;
  all)
    install_to "${CODEX_HOME:-$HOME/.codex}/skills/foolish-think"
    install_to "$HOME/.claude/skills/foolish-think"
    install_to "$HOME/.agents/skills/foolish-think"
    ;;
  *)
    usage
    ;;
esac
