# terniq-check/
> L2 | Parent: /Volumes/new-room/code-web-app/terniq/skills/AGENTS.md

Members
AGENTS.md: `terniq-check` module map describing the boundaries of the review workflow and specialist agent dispatch.
SKILL.md: `terniq-check` skill definition covering diff review, triage, and pre-delivery verification.

Architecture Decisions
`terniq-check` is the pre-delivery gate. It owns scope drift calls, severity classification, verification evidence, and specialist review dispatch.

Development Rules
When extending this skill, strengthen finding quality, verification discipline, and agent trigger conditions. Do not let it collapse into a vague "take a look at the code" mode.

Change Log
2026-04-25: Initialized the `terniq-check` skill skeleton.

[PROTOCOL]: 变更时更新此头部，然后检查 AGENTS.md
