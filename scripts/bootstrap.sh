#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
FILE="$ROOT/repos.txt"

if [[ ! -f "$FILE" ]]; then
  echo "repos.txt not found. Create it from the public template:"
  echo "  cp repos.example.txt repos.txt"
  exit 1
fi

while read -r target url rest; do
  [[ -z "${target:-}" || "$target" == \#* ]] && continue
  [[ -z "${url:-}" ]] && { echo "Invalid entry: $target"; continue; }
  dest="$ROOT/$target"
  if [[ -d "$dest/.git" ]]; then echo "Already cloned: $target"; continue; fi
  if [[ -d "$dest" && -n "$(ls -A "$dest" 2>/dev/null)" ]]; then echo "Skip non-empty path: $target"; continue; fi
  mkdir -p "$(dirname "$dest")"
  git clone "$url" "$dest"
done < "$FILE"

echo "Workspace bootstrap complete."
