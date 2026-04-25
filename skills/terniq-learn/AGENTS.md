# terniq-learn/
> L2 | Parent: /Volumes/new-room/code-web-app/terniq/skills/AGENTS.md

Members
AGENTS.md: `terniq-learn` module map describing the boundaries of the research and understanding workflow.
SKILL.md: `terniq-learn` skill definition covering synthesis from raw material into structured understanding or draft output.

Architecture Decisions
`terniq-learn` owns research synthesis, not raw retrieval. Collection should be supplied by `terniq-read` first.

Development Rules
When extending this skill, strengthen mode switching, source quality, and structured output. Do not let it degrade into a quick summarizer.

Change Log
2026-04-25: Initialized the `terniq-learn` skill skeleton.

[PROTOCOL]: 变更时更新此头部，然后检查 AGENTS.md
