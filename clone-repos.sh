#!/usr/bin/env bash

# Vibe-coded with the help of Claude Code.

set -euo pipefail

if [[ $# -ne 1 ]]; then
  echo "Usage: $0 <repos-file>"
  exit 1
fi

file="$1"

if [[ ! -f "$file" ]]; then
  echo "Error: file '$file' not found"
  exit 1
fi

while IFS= read -r url || [[ -n "$url" ]]; do
  url="${url//$'\r'/}"
  [[ -z "$url" || "$url" == \#* ]] && continue

  echo "Cloning '$url' ..."
  git clone "$url"
done < "$file"

