# agents/
> L2 | Parent: /Volumes/new-room/code-web-app/terniq/AGENTS.md

Members
AGENTS.md: Agent directory map defining specialist sidecar responsibilities and trigger boundaries.
environment-auditor.md: Codex environment audit sidecar for `terniq-health`.
researcher.md: Deep research sidecar for `terniq-learn`.
reviewer-architecture.md: Architecture review sidecar for `terniq-check`.
reviewer-frontend.md: Frontend and UI review sidecar for `terniq-check` and `terniq-design`.
reviewer-security.md: Security review sidecar for `terniq-check`.

Architecture Decisions
`agents/` only contains specialist roles dispatched by skills, not user-facing workflows. The primary flow always belongs to a skill; agents exist to solve parallel or specialized reasoning tasks.

Development Rules
When adding an agent, define its owning skill, input boundary, and output format before updating this directory map.

Change Log
2026-04-25: Created the Terniq agent directory and registered the 5 launch specialist sidecars.

[PROTOCOL]: 变更时更新此头部，然后检查 AGENTS.md
