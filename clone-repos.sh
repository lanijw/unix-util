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

  # Extract the text between the 5th and 6th slash
  # URLs have 2 slashes in scheme (https://), so field 6 = after domain, field 7 = repo name
  folder=$(echo "$url" | cut -d'/' -f6-)

  if [[ -z "$folder" ]]; then
    echo "Warning: could not parse folder name from '$url', skipping"
    continue
  fi

  echo "Cloning '$url' into './$folder' ..."
  git clone "$url" "$folder"
done < "$file"

