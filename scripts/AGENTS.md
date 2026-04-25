# scripts/
> L2 | Parent: /Volumes/new-room/code-web-app/terniq/AGENTS.md

Members
AGENTS.md: Scripts directory map describing the boundary for lightweight verification tooling.
install.sh: One-command installer that clones the repository locally, creates the marketplace wrapper, wires it into Codex, and enables the plugin.
verify-terniq.sh: Structural consistency checker that keeps skills, commands, the README, and the resolver synchronized.

Architecture Decisions
`scripts/` only contains deterministic maintenance tools. It does not own judgment-heavy workflows; judgment belongs to skills, verification belongs to scripts.

Development Rules
When adding a script, prefer zero-dependency or low-dependency designs and make the input/output contract explicit. Do not smuggle business logic into verification scripts.

Change Log
2026-04-25: Initialized the scripts directory and added `verify-terniq.sh` as the lightweight self-verification entrypoint.
2026-04-25: Added `install.sh` as the one-command open-source trial entrypoint.

[PROTOCOL]: 变更时更新此头部，然后检查 AGENTS.md
