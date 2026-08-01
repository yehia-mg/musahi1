#!/usr/bin/env bash
# Dolphin specifically bypasses Kvantum (which silently overrides our
# qt6ct text colors) and uses Qt's built-in Fusion style instead, which
# strictly respects QPalette values with no theme-specific overrides.
export QT_STYLE_OVERRIDE=Fusion
export QT_QUICK_CONTROLS_STYLE=Fusion
exec dolphin "$@"
