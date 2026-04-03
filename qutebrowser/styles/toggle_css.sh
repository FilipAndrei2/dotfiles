#! /usr/bin/env bash
CSS_DIR="$HOME/.config/qutebrowser/styles"
CURRENT="$CSS_DIR/current.css"
CUSTOM="$CSS_DIR/custom.css"
DEFAULT="$CSS_DIR/none.css"

if cmp -s "$CURRENT" "$CUSTOM"; then
  cp "$DEFAULT" "$CURRENT"
else
  cp "$CUSTOM" "$CURRENT"
fi
