#!/usr/bin/env bash
# Render five consecutive values as "(V,W,X,Y)->Z" (structured)
# Usage: quint-struct.sh <index> <comma-separated-sequence>
IDX=$1
IFS=',' read -ra SEQ <<< "$2"
END=$((IDX + 4))
if [ "$END" -ge "${#SEQ[@]}" ]; then
  echo "Error: quint-struct render requires elements at indices $IDX through $END, but sequence only has ${#SEQ[@]} values" >&2
  exit 1
fi
echo "(${SEQ[$IDX]},${SEQ[$((IDX+1))]},${SEQ[$((IDX+2))]},${SEQ[$((IDX+3))]})->${SEQ[$((IDX+4))]}"
