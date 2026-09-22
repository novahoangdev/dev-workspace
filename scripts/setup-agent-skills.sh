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

[[ -d "$SOURCE" ]] || { echo "Skills directory not found: $SOURCE"; exit 1; }

sync_skills() {
  local target_dir="$1"
  mkdir -p "$target_dir"

  # Remove only stale symlinks that point back into this workspace's skill source.
  for target in "$target_dir"/*; do
    [[ -L "$target" ]] || continue
    local linked
    linked="$(readlink "$target")"
    if [[ "$linked" == "$SOURCE/"* && ! -e "$linked" ]]; then
      rm "$target"
      echo "Removed stale link: $target"
    fi
  done

  for skill in "$SOURCE"/*; do
    [[ -d "$skill" ]] || continue
    local name target
    name="$(basename "$skill")"
    target="$target_dir/$name"

    if [[ -L "$target" && "$(readlink "$target")" == "$skill" ]]; then
      echo "OK: $name"
      continue
    fi
    if [[ -e "$target" || -L "$target" ]]; then
      echo "Skip existing: $target"
      continue
    fi
    ln -s "$skill" "$target"
    echo "Linked: $name"
  done
}

# Claude project-local compatibility. General frontend work uses Claude's native capability.
sync_skills "$ROOT/.claude/skills"

# Optional user-global Claude skills. We intentionally do not mirror into Codex;
# Codex should rely on AGENTS.md/native capability unless a skill is explicitly installed there.
if [[ "$GLOBAL" == true ]]; then
  sync_skills "$HOME/.claude/skills"
fi

echo "Shared skills ready. Default routing remains zero skills unless a specialized workflow is needed."
