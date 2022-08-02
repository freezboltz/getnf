#!/bin/env bash

OUTDIR="$HOME/.local/bin/"
[ -d "$OUTDIR" ] || mkdir -p $OUTDIR
state1=$(ls -1 "$OUTDIR" | grep -E "getnf")
CurrentDIR=$(pwd)
PCurrentDir=$(echo "$CurrentDIR")

[ -n "$state1" ] && rm "$OUTDIR"getnf

rsync --progress -auv "$PCurrentDir"/getnf "$OUTDIR"
