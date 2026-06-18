#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
EXT="$ROOT/extension"

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "  Arabizzi Extension — Load in Chrome"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "Google Chrome 137+ no longer supports auto-loading extensions"
echo "from the command line. You must load it manually once:"
echo ""
echo "  1. Open chrome://extensions"
echo "  2. Turn ON  Developer mode  (top-right toggle)"
echo "  3. Click  Load unpacked"
echo "  4. Select this folder:"
echo ""
echo "     $EXT"
echo ""
echo "After loading, Arabizzi appears with a refresh icon."
echo "Click the extension icon in the toolbar to open the popup."
echo ""
echo "UI preview (no Chrome needed):  pnpm extension:preview"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

# Open extensions page and Finder to the extension folder
open -a "Google Chrome" "chrome://extensions" 2>/dev/null || open "chrome://extensions" 2>/dev/null || true
open "$EXT"
