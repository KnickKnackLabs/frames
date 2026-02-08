#!/usr/bin/env bash
# Render four consecutive values as "X Y Z W" (space-separated)
# Usage: quad.sh <index> <comma-separated-sequence>
IDX=$1
IFS=',' read -ra SEQ <<< "$2"
END=$((IDX + 3))
if [ "$END" -ge "${#SEQ[@]}" ]; then
  echo "Error: quad render requires elements at indices $IDX through $END, but sequence only has ${#SEQ[@]} values" >&2
  exit 1
fi
echo "${SEQ[$IDX]} ${SEQ[$((IDX+1))]} ${SEQ[$((IDX+2))]} ${SEQ[$((IDX+3))]}"
