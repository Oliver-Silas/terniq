# terniq-health/
> L2 | Parent: /Volumes/new-room/code-web-app/terniq/skills/AGENTS.md

Members
AGENTS.md: `terniq-health` module map describing the boundaries of the Codex environment-audit workflow.
SKILL.md: `terniq-health` skill definition covering audits of AGENTS, skills, plugins, connectors, automations, and verification discipline.

Architecture Decisions
`terniq-health` audits present-day Codex reality, not the historical structure of other hosts. It only cares about environment layers that directly affect behavior quality.

Development Rules
When extending this skill, make the audit layers, missing-data handling, and executable repair advice explicit. Do not let it bloat into a platform encyclopedia.

Change Log
2026-04-25: Initialized the `terniq-health` skill skeleton.

[PROTOCOL]: 变更时更新此头部，然后检查 AGENTS.md
