# skills/
> L2 | Parent: /Volumes/new-room/code-web-app/terniq/AGENTS.md

Members
AGENTS.md: Skills directory map defining the boundaries of the 8 core workflows.
RESOLVER.md: Top-level skill routing table defining trigger phrases, ambiguity handling, and common chains.
terniq-check/: Code review and pre-delivery verification workflow.
terniq-design/: Frontend and interface design workflow.
terniq-health/: Codex environment audit workflow.
terniq-hunt/: Systematic debugging workflow.
terniq-learn/: Research and understanding workflow.
terniq-read/: External material retrieval and archiving workflow.
terniq-think/: Planning and evaluation workflow.
terniq-write/: Text editing and de-AI-stiffening workflow.

Architecture Decisions
`skills/` is the product core of Terniq. Every directory must own one complete workflow, not a loose trick or style hint.

Development Rules
When adding a skill, answer three questions first: which workflow segment it owns, why it cannot be merged into an existing skill, and where its stop boundary is.

Change Log
2026-04-25: Created the Terniq skills directory and registered the 8 launch workflows.
2026-04-25: Added `RESOLVER.md` as the skill-level routing and chaining index.

[PROTOCOL]: 变更时更新此头部，然后检查 AGENTS.md
