# terniq-read/
> L2 | Parent: /Volumes/new-room/code-web-app/terniq/skills/AGENTS.md

Members
AGENTS.md: `terniq-read` module map describing the boundaries of the external-material retrieval and saving workflow.
SKILL.md: `terniq-read` skill definition covering URL/PDF retrieval, normalization, and save reporting.

Architecture Decisions
`terniq-read` is an ingestion workflow, not a research summarizer. Its job is to turn external material into usable input.

Development Rules
When extending this skill, make routing, save strategy, and stop boundaries explicit. Do not mix in explanation or analysis.

Change Log
2026-04-25: Initialized the `terniq-read` skill skeleton.

[PROTOCOL]: 变更时更新此头部，然后检查 AGENTS.md
