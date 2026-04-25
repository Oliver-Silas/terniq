# terniq-design/
> L2 | Parent: /Volumes/new-room/code-web-app/terniq/skills/AGENTS.md

Members
AGENTS.md: `terniq-design` module map describing the boundaries of the visual and frontend-direction workflow.
SKILL.md: `terniq-design` skill definition covering UI direction setting, screenshot iteration, and browser acceptance.

Architecture Decisions
`terniq-design` owns visual and interaction direction only. It does not handle pure backend logic, and every visible change should treat browser verification as part of the workflow.

Development Rules
When extending this skill, make the design direction, verification steps, and frontend boundary explicit. Do not let it degrade into generic style advice.

Change Log
2026-04-25: Initialized the `terniq-design` skill skeleton.

[PROTOCOL]: 变更时更新此头部，然后检查 AGENTS.md
