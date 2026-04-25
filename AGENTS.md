# terniq/
> L2 | Parent: /Volumes/new-room/code-web-app/AGENTS.md

Members
AGENTS.md: Terniq subproject map that defines the directory skeleton, responsibility boundaries, and launch structure.
.gitignore: Git ignore rules that filter macOS artifacts so the open-source repo stays clean from the first commit.
.agents/: Local marketplace wrapper layer for the Codex marketplace manifest and development distribution metadata.
.codex-plugin/: Codex plugin manifest directory that holds `plugin.json` and plugin-level metadata.
assets/: Visual asset directory for README imagery and brand materials.
CONTRIBUTING.md: Open-source collaboration guide covering contributions, issue filing, and pull request flow.
LICENSE: Open-source license file defining usage and distribution rights for this repository.
README.md: Project entry document that explains the product, structure, and implementation order.
agents/: Specialist agent directory for review, research, and environment-audit sidecars.
commands/: Explicit command entrypoints for the `/terniq:*` command set.
docs/: Design and planning directory for product positioning, plugin structure, and launch specifications.
scripts/: Lightweight verification and maintenance helpers.
skills/: Core workflow directory containing the 8 Codex-native skills.

Architecture Decisions
Terniq exists first as the real repository skeleton for a Codex-native workflow plugin. Phase one fixes the directory boundaries for the plugin shell, 8 skills, 5 agents, and 8 commands before deepening the workflow details inside each layer.

Development Rules
When adding directories such as `skills/`, `agents/`, `commands/`, or `.codex-plugin/`, update this member list first, then keep file-level contracts and the parent map in sync.

Change Log
2026-04-25: Initialized the `terniq/` directory and added the first design specification.
2026-04-25: Established the launch skeleton for `.codex-plugin/`, `skills/`, `agents/`, and `commands/`, preserving stable directory boundaries for future implementation.
2026-04-25: Added `skills/RESOLVER.md` and `scripts/verify-terniq.sh` to complete routing and lightweight self-verification.
2026-04-25: Added `.agents/plugins/marketplace.json` to provide a local Codex marketplace wrapper and trial-install entrypoint.
2026-04-25: Added `.gitignore` to filter macOS artifacts for the public repository launch.
2026-04-25: Added `assets/`, `LICENSE`, and `CONTRIBUTING.md` to complete the open-source presentation and collaboration layer.
2026-04-25: Added the brand logo, social preview assets, and one-command installer to improve README polish and trial convenience.
2026-04-25: Added `assets/icons/` for multi-size icon exports and prepared `Support / Roadmap` plus a real release tag flow.

[PROTOCOL]: 变更时更新此头部，然后检查 AGENTS.md
