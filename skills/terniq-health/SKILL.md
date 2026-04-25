---
name: terniq-health
description: Audit the Codex operating environment, including AGENTS instructions, skill layout, plugin visibility, connectors, automations, and verification discipline.
when_to_use: audit codex, check my codex setup, why is codex weird, 检查下 codex 环境, 看下配置对不对
metadata:
  version: "0.1.0"
---

# Terniq Health

Use this skill to audit the Codex environment itself.

Audit the real Codex operating stack, not a different host's mythology.

## Core Rules

- Inspect AGENTS, skills, plugins, connectors, automations, and verification habits.
- Separate missing data from confirmed faults.
- Give concrete next actions when possible.
- Do not assume Claude-style hooks or CLAUDE.md stacks.

## Audit Layers

Terniq Health audits these layers in order:

1. instructions
2. skills
3. plugin and marketplace visibility
4. connectors and tool availability
5. automations where present
6. verification discipline

The point is not completeness theater. The point is to find the layer actually causing drift or broken behavior.

## Step 0: Classify Complexity

Use a light complexity model:

- Simple: mostly local instructions and a small skill surface
- Standard: multiple local skills, plugins, or connectors
- Complex: many skills, multiple plugins, automations, and tool-layer dependencies

The audit should scale with reality. Do not run a giant audit on a tiny setup.

## Step 1: Collect Facts

Gather only real local facts:

- root and local `AGENTS.md`
- visible skill directories
- plugin enablement and manifests
- marketplace presence when relevant
- connector visibility
- active automations when relevant
- signs of verification behavior or its absence

If data is unavailable, mark it as unavailable. That is not automatically a finding.

## Step 2: Analyze

Ask:

- are the instructions coherent and current
- do the local skills match the intended workflow surface
- are plugins visible and correctly scoped
- are connectors or tools expected but missing
- are automations aligned with real workflows
- is "done" being claimed without evidence

Use `environment-auditor` when the environment is broad enough that parallel analysis helps.

## Step 3: Report

Group findings by severity:

- Critical: directly breaks safety, trust, or core functionality
- Structural: causes drift, fragility, or persistent confusion
- Incremental: worth fixing, but not blocking

Every finding should include:

- symptom
- why it matters
- concrete next action

## Non-Goals

- Do not auto-fix environment changes without confirmation.
- Do not report unavailable data as a bug.
- Do not expand into irrelevant platform archaeology.

## Design-System Audit Mode

Activate when the user asks about:

- font loading
- design-token drift
- style inconsistency
- frontend environment weirdness tied to the system rather than a single component

In that mode, inspect:

- font paths and fallback chains
- token usage vs hardcoded values
- CSS variable drift
- environment causes of styling mismatch

## Gotchas

| What happened | Rule |
|---------------|------|
| Audited the wrong instruction layer | read root and local AGENTS first |
| Treated missing data as confirmed failure | separate unavailable from broken |
| Described the setup instead of finding the broken layer | identify the misaligned layer explicitly |
| Drifted into another host's config model | stay inside Codex reality |
