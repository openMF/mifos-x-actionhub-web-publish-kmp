#!/usr/bin/env bash
#
# check-dist.sh — Shared helper across web sub-actions
#
# Validates that the input dist_dir exists, is non-empty, and contains an
# index.html. Called in pre-flight before any provider-specific CLI runs.
#
# Required env:
#   DIST_DIR — path to the built web bundle
#
set -euo pipefail

: "${DIST_DIR:?DIST_DIR must be set}"

if [[ ! -d "$DIST_DIR" ]]; then
  echo "ERROR: dist_dir not found: $DIST_DIR" >&2
  exit 1
fi

if [[ -z "$(ls -A "$DIST_DIR" 2>/dev/null)" ]]; then
  echo "ERROR: dist_dir is empty: $DIST_DIR" >&2
  exit 1
fi

if [[ ! -f "$DIST_DIR/index.html" ]]; then
  echo "WARN: no index.html at $DIST_DIR/index.html (SPA hosts may 404 on root)." >&2
fi

echo "Dist dir OK: $DIST_DIR ($(find "$DIST_DIR" -type f | wc -l) files)."
