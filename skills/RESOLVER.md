# Terniq Skill Resolver

Trigger routing for the Terniq workflow suite.

This file is the canonical human-readable index for:

- which user intent maps to which skill
- how ambiguous requests should be separated
- which workflows commonly chain together

If `SKILL.md` descriptions or command ownership changes, update this file in the same batch.

## Workflow Routing

### Pre-Build

| Trigger | Skill |
|---------|-------|
| feature planning, architecture choice, "how should we build this", "is this worth it", "should we keep this", propose a plan, help me design this, evaluate the direction | `skills/terniq-think/SKILL.md` |
| UI direction, redesign, visible interface work, screenshot complaint, build this page, design this component, the styling feels off | `skills/terniq-design/SKILL.md` |

### Post-Build

| Trigger | Skill |
|---------|-------|
| review this diff, before merge, review the code, check this before merge, review my changes | `skills/terniq-check/SKILL.md` |
| issue triage, PR triage, review all, batch review | `skills/terniq-check/SKILL.md` (Triage Mode) |

### Diagnostic

| Trigger | Skill |
|---------|-------|
| failing test, broken behavior, debug this, there is an error, why does this not work | `skills/terniq-hunt/SKILL.md` |
| Codex feels inconsistent, plugin drift, connector mismatch, environment audit, check my Codex environment | `skills/terniq-health/SKILL.md` |

### Content In

| Trigger | Skill |
|---------|-------|
| read this URL, fetch this page, save this PDF, inspect this link, fetch this document | `skills/terniq-read/SKILL.md` |

### Content Throughput

| Trigger | Skill |
|---------|-------|
| research this topic, deep dive, learn this topic, investigate this, organize these materials | `skills/terniq-learn/SKILL.md` |
| edit this text, rewrite this, remove the AI stiffness, revise this draft, polish this | `skills/terniq-write/SKILL.md` |

## Disambiguation

When multiple skills could match, apply these rules:

1. Most specific wins.
   `terniq-design` beats `terniq-think` for UI direction.

2. Retrieval comes before synthesis.
   If the user gives a URL and wants the content fetched, start with `terniq-read`.
   If they want interpretation after retrieval, chain into `terniq-learn`.

3. Debugging beats review when there is a live symptom.
   Broken runtime behavior, failing tests, and "why does this not work" go to `terniq-hunt`.
   Completed implementation review goes to `terniq-check`.

4. Environment drift is not code debugging.
   Plugin visibility, connector mismatches, automation weirdness, or instruction drift go to `terniq-health`.

5. Editing is not research.
   If the prose already exists and needs cleanup, use `terniq-write`.
   If the understanding still needs to be built, use `terniq-learn`.

6. Evaluation is not implementation.
   "Should this exist" and "is this worth it" go to `terniq-think` Evaluation Mode.

## Explicit Commands

These commands are the deterministic entry points:

- `/terniq:plan` -> `terniq-think`
- `/terniq:design` -> `terniq-design`
- `/terniq:review` -> `terniq-check`
- `/terniq:debug` -> `terniq-hunt`
- `/terniq:read` -> `terniq-read`
- `/terniq:research` -> `terniq-learn`
- `/terniq:edit` -> `terniq-write`
- `/terniq:health` -> `terniq-health`

## Common Chains

- `terniq-think` -> implement -> `terniq-check`
- `terniq-hunt` -> fix -> `terniq-check`
- `terniq-read` -> `terniq-learn` -> `terniq-write`
- `terniq-design` -> browser verification -> `terniq-check`
- `terniq-health` -> environment fixes -> `terniq-health`

## Maintenance Rule

If a skill is renamed, split, merged, or re-scoped:

1. update its `SKILL.md`
2. update this resolver
3. update commands
4. run `scripts/verify-terniq.sh`
