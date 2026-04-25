# assets/icons/
> L2 | Parent: /Volumes/new-room/code-web-app/terniq/assets/AGENTS.md

Members
AGENTS.md: Icon export directory map describing the boundary for multi-size favicon and app icon assets.
favicon-16x16.png: Small browser favicon export.
favicon-32x32.png: Standard browser favicon export.
apple-touch-icon.png: Apple home-screen icon export.
icon-128.png: Medium-size icon export for plugins or apps.
icon-192.png: Common web-app icon export.
icon-256.png: High-resolution general icon export.
icon-512.png: Large store and social sharing icon export.
favicon.ico: Windows and browser-compatible ICO icon.
terniq.icns: macOS `icns` icon asset.

Architecture Decisions
`icons/` stores only exports derived from the primary logo. It does not duplicate brand design source files, so `../terniq-logo.png` remains the single source of truth.

Development Rules
After updating the primary logo, regenerate the full icon set while keeping filenames stable so the README and plugin manifest do not drift.

Change Log
2026-04-25: Initialized `icons/` and exported the multi-size favicon and app icon set.

[PROTOCOL]: 变更时更新此头部，然后检查 AGENTS.md
