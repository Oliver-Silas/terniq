# terniq-write/
> L2 | Parent: /Volumes/new-room/code-web-app/terniq/skills/AGENTS.md

Members
AGENTS.md: `terniq-write` module map describing the boundaries of the editing and revision workflow.
SKILL.md: `terniq-write` skill definition covering rewrites, polish, and CN/EN text consistency.

Architecture Decisions
`terniq-write` owns editing only, not research, retrieval, or generalized content generation. Its responsibility is to make existing text more natural and more accurate.

Development Rules
When extending this skill, protect original meaning, preserve structural stability, and keep audience lock. Do not turn it into a freestyle writing tool.

Change Log
2026-04-25: Initialized the `terniq-write` skill skeleton.

[PROTOCOL]: 变更时更新此头部，然后检查 AGENTS.md
