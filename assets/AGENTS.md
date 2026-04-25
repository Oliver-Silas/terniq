# assets/
> L2 | Parent: /Volumes/new-room/code-web-app/terniq/AGENTS.md

Members
AGENTS.md: Visual asset directory map describing the boundaries for README imagery and brand materials.
icons/: Multi-size icon export directory for favicons, app icons, and platform-compatible assets.
terniq-logo.png: Terniq brand logo used by the README, plugin manifest, and future repository avatar direction.
terniq-social-preview.png: GitHub social preview image and README banner that carries the repository hero visual.

Architecture Decisions
`assets/` holds public presentation resources only. It does not contain runtime code, which keeps product logic separate from documentation visuals.

Development Rules
When adding README imagery, prefer minimal, reusable, brand-consistent assets. The logo and banner should share one visual language.

Change Log
2026-04-25: Initialized `assets/` and added the first workflow visual.
2026-04-25: Replaced the README hero from an `SVG` sketch with a minimal raster hero image for a stronger public-repo presentation.
2026-04-25: Added `terniq-logo.png` and `terniq-social-preview.png` to complete the brand entrypoint and GitHub social preview.
2026-04-25: Added `icons/` as the export directory for multi-size favicons and app icons.

[PROTOCOL]: 变更时更新此头部，然后检查 AGENTS.md
