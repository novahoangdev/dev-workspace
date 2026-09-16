#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
FILE="$ROOT/repos.txt"
while read -r target url rest; do
  [[ -z "${target:-}" || "$target" == \#* ]] && continue
  [[ -z "${url:-}" ]] && { echo "Invalid: $target"; continue; }
  dest="$ROOT/$target"
  if [[ -d "$dest/.git" ]]; then echo "Already cloned: $target"; continue; fi
  if [[ -d "$dest" && -n "$(ls -A "$dest" 2>/dev/null)" ]]; then echo "Skip non-empty: $target"; continue; fi
  mkdir -p "$(dirname "$dest")"
  git clone "$url" "$dest"
done < "$FILE"
echo "Workspace bootstrap complete."
