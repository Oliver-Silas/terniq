# Terniq

Terniq is a Codex-native workflow plugin for serious software work.

It packages eight durable engineering workflows into a plugin structure that fits Codex directly:

- `skills/` hold the main workflow contracts
- `agents/` hold specialist sidecars
- `commands/` provide explicit entry points
- `.codex-plugin/plugin.json` provides plugin metadata

The product goal is simple:

- plan before coding
- debug from evidence
- review before merge
- design with intent
- read sources cleanly
- research without bluffing
- edit writing without AI stiffness
- audit the Codex environment itself

## Why

Terniq exists because speed without discipline is just a faster path to drift.

A strong coding agent should not only write code. It should help decide what is worth building, isolate root causes before patching, review diffs before merge, read source material without hallucinating, and keep the operating environment itself legible.

Terniq packages those habits into a Codex-native shape instead of treating Codex as a compatibility target.

## V1 Scope

The first release ships the full workflow suite:

- `terniq-think`
- `terniq-design`
- `terniq-check`
- `terniq-hunt`
- `terniq-read`
- `terniq-learn`
- `terniq-write`
- `terniq-health`

It also ships:

- 5 specialist agents
- 8 explicit commands
- the plugin manifest

## Workflow Suite

### Skills

- `terniq-think`: planning, evaluation, and pre-implementation design judgment
- `terniq-design`: intentional UI direction, screenshot iteration, and browser-verified frontend work
- `terniq-check`: diff review, triage, specialist review, and verification discipline
- `terniq-hunt`: root-cause debugging before any fix
- `terniq-read`: external material ingestion and normalization
- `terniq-learn`: research and synthesis from source material
- `terniq-write`: rewrite and edit prose without changing meaning
- `terniq-health`: audit the Codex operating environment

### Agents

- `reviewer-security`
- `reviewer-architecture`
- `reviewer-frontend`
- `researcher`
- `environment-auditor`

### Commands

- `/terniq:plan`
- `/terniq:design`
- `/terniq:review`
- `/terniq:debug`
- `/terniq:read`
- `/terniq:research`
- `/terniq:edit`
- `/terniq:health`

## Common Workflow Chains

Terniq skills are intentionally composable, but transitions are explicit.

- Plan a feature: `terniq-think` -> implement -> `terniq-check`
- Debug a bug: `terniq-hunt` -> fix -> `terniq-check`
- Research and write: `terniq-read` -> `terniq-learn` -> `terniq-write`
- Design and verify UI: `terniq-design` -> browser verification -> `terniq-check`
- Audit the environment: `terniq-health` -> fix drift -> rerun `terniq-health`

## How Terniq Is Organized

`skills` are the product.

`agents` are internal specialists that a skill may invoke when the work gets broad or needs parallel scrutiny.

`commands` are explicit entry points for users who do not want to rely on latent discovery.

The three layers are complementary, not redundant.

## Structure

```text
terniq/
├── .agents/         # local marketplace wrapper
├── .codex-plugin/   # plugin metadata
├── agents/          # specialist sidecars
├── commands/        # explicit /terniq:* entry points
├── docs/            # design and planning docs
├── scripts/         # lightweight verification helpers
└── skills/          # core workflows
```

## Routing

Terniq uses two entry styles:

- latent discovery through skill descriptions and trigger phrases
- explicit commands such as `/terniq:review`

The canonical routing rules live in [skills/RESOLVER.md](/Volumes/new-room/code-web-app/terniq/skills/RESOLVER.md).

## Verification

Use the lightweight verification script after changing skill names, command ownership, or README workflow lists:

```bash
bash /Volumes/new-room/code-web-app/terniq/scripts/verify-terniq.sh
```

The script checks:

- expected skill directories exist
- expected commands exist
- command ownership points to real skills
- README and resolver still mention all skills and commands

## Local Install

Terniq now includes a local Codex marketplace wrapper at [.agents/plugins/marketplace.json](/Volumes/new-room/code-web-app/terniq/.agents/plugins/marketplace.json).

The intended local install flow is:

```bash
codex plugin marketplace add /Volumes/new-room/code-web-app/terniq
```

This works because Codex expects a marketplace root, not just a bare plugin directory. The marketplace wrapper points back to the plugin root and gives Codex deterministic metadata for discovery and enablement.

After the marketplace is added, enable `terniq@terniq` in Codex plugin settings.

If you are working directly from config, the enablement entry is:

```toml
[plugins."terniq@terniq"]
enabled = true
```

If the current session does not hot-load newly enabled plugins, restart Codex and open a fresh thread.

## Installation Status

This repo is structured as a Codex plugin project and now includes a first-pass local marketplace manifest for real install testing.

What remains is not structural packaging anymore. It is runtime verification:

- confirm a fresh Codex session loads the plugin and exposes its skills
- confirm skill discovery wording is strong enough in real use

## Current State

This repository now contains:

- the plugin manifest
- the eight first-pass skill definitions
- the five specialist agents
- the eight command entry docs
- the first design spec
- the routing map
- the lightweight verification script

The remaining work is no longer structural. It is product refinement:

- tighten discovery metadata
- test real Codex triggering behavior
- improve installation and packaging flow
- add marketplace-ready assets and polish

## Limitations Right Now

- no published remote marketplace yet
- no asset pack or branded icon set yet
- no automated end-to-end trigger test yet
- command docs are strong contracts, but not yet backed by a richer command runtime layer

## Local Development Priorities

The recommended implementation order from here:

1. test direct use inside Codex
2. adjust wording based on real trigger behavior
3. improve packaging and installation flow
4. add presentation assets for a publishable release

## Reference Docs

- Design spec: [docs/2026-04-25-v1-design.md](/Volumes/new-room/code-web-app/terniq/docs/2026-04-25-v1-design.md)
- Plugin manifest: [.codex-plugin/plugin.json](/Volumes/new-room/code-web-app/terniq/.codex-plugin/plugin.json)
- Skills map: [skills/AGENTS.md](/Volumes/new-room/code-web-app/terniq/skills/AGENTS.md)
- Routing map: [skills/RESOLVER.md](/Volumes/new-room/code-web-app/terniq/skills/RESOLVER.md)
- Verification script: [scripts/verify-terniq.sh](/Volumes/new-room/code-web-app/terniq/scripts/verify-terniq.sh)
