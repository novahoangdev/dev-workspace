#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SOURCE="$ROOT/.agents/skills"
GLOBAL=false

if [[ "${1:-}" == "--global" ]]; then
  GLOBAL=true
elif [[ -n "${1:-}" ]]; then
  echo "Usage: $0 [--global]"
  exit 1
fi

link_dir() {
  local target_dir="$1"
  mkdir -p "$target_dir"
  for skill in "$SOURCE"/*; do
    [[ -d "$skill" ]] || continue
    local name target
    name="$(basename "$skill")"
    target="$target_dir/$name"
    if [[ -L "$target" && "$(readlink "$target")" == "$skill" ]]; then
      echo "OK: $target"
      continue
    fi
    if [[ -e "$target" || -L "$target" ]]; then
      echo "Keep existing path: $target"
      continue
    fi
    ln -s "$skill" "$target"
    echo "Linked: $target -> $skill"
  done
}

# Claude project-local compatibility; generated locally, not committed.
link_dir "$ROOT/.claude/skills"

if [[ "$GLOBAL" == true ]]; then
  link_dir "$HOME/.agents/skills"
  link_dir "$HOME/.claude/skills"
fi

echo "Shared skills ready. Project-specific examples remain under templates/project-skills/."
