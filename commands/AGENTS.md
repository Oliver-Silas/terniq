# commands/
> L2 | Parent: /Volumes/new-room/code-web-app/terniq/AGENTS.md

Members
AGENTS.md: Command directory map defining the explicit `/terniq:*` entrypoints and their owning workflows.
debug.md: `/terniq:debug` command spec routed to `terniq-hunt`.
design.md: `/terniq:design` command spec routed to `terniq-design`.
edit.md: `/terniq:edit` command spec routed to `terniq-write`.
health.md: `/terniq:health` command spec routed to `terniq-health`.
plan.md: `/terniq:plan` command spec routed to `terniq-think`.
read.md: `/terniq:read` command spec routed to `terniq-read`.
research.md: `/terniq:research` command spec routed to `terniq-learn`.
review.md: `/terniq:review` command spec routed to `terniq-check`.

Architecture Decisions
`commands/` provides explicit entrypoints only. It must not duplicate full skill logic; the command layer exists to trigger workflows deterministically, not to become a second product surface.

Development Rules
Every command file must point to exactly one owning skill. If a command only works by combining two workflows, the boundary design is wrong.

Change Log
2026-04-25: Created the Terniq command directory and registered the 8 launch command entrypoints.

[PROTOCOL]: 变更时更新此头部，然后检查 AGENTS.md
