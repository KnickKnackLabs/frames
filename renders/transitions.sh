#!/usr/bin/env bash
# Render consecutive pairs as "X→Y"
# Usage: transitions.sh <index> <comma-separated-sequence>
IDX=$1
IFS=',' read -ra SEQ <<< "$2"
NEXT=$((IDX + 1))
if [ "$NEXT" -ge "${#SEQ[@]}" ]; then
  echo "Error: transitions render requires a next element at index $NEXT, but sequence only has ${#SEQ[@]} values" >&2
  exit 1
fi
echo "${SEQ[$IDX]}->${SEQ[$NEXT]}"
