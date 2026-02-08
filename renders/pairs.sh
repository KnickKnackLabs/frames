#!/usr/bin/env bash
# Render as "(X,Y)->Z" showing two inputs producing an output
# Usage: pairs.sh <index> <comma-separated-sequence>
IDX=$1
IFS=',' read -ra SEQ <<< "$2"
NEXT=$((IDX + 1))
NEXT2=$((IDX + 2))
if [ "$NEXT2" -ge "${#SEQ[@]}" ]; then
  echo "Error: pairs render requires elements at indices $IDX, $NEXT, $NEXT2, but sequence only has ${#SEQ[@]} values" >&2
  exit 1
fi
echo "(${SEQ[$IDX]},${SEQ[$NEXT]})->${SEQ[$NEXT2]}"
