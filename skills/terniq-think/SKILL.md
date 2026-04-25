---
name: terniq-think
description: Plan before implementation, evaluate whether work should exist, and pressure-test architecture or product directions before coding begins.
when_to_use: plan this, think this through, should we build this, should we keep this, propose a plan, help me design this, is this worth it, evaluate this direction
metadata:
  version: "0.1.0"
---

# Terniq Think

Use this skill when the user needs design judgment before implementation.

Turn a rough idea into an approved plan. No code, no scaffolding, no pseudo-code until the user approves.

Give opinions directly. Take a position. Do not hide behind generic option lists unless there is a real tradeoff.

## Modes

### Lightweight Mode

Activate when:

- the user wants to fix or change something specific
- the problem is already bounded
- the open question is method choice, not product scope

Flow:

1. Give one recommended fix in 2-4 sentences.
2. Name the files or modules involved.
3. State one real risk and how to verify it.
4. Stop and wait for approval.

Upgrade to full mode if the "small fix" actually has 3 or more materially different approaches.

### Evaluation Mode

Activate when the user is asking whether something should exist, stay, be exposed, or be removed.

Typical triggers:

- should we keep this
- is this worth it
- is this necessary
- is this worth it
- should we keep this

Flow:

1. State the evaluation target.
2. Summarize the current state from the real repo, not memory.
3. Give one recommended conclusion.
4. If the answer is remove or major rework, state the impact scope.
5. Stop and wait for confirmation.

### Full Design Mode

Activate when the user is defining a feature, system, workflow, or architecture.

Flow:

1. Inspect the real project context first.
2. Ask only the clarifying questions that change the design materially.
3. Prefer one recommended approach.
4. Mention one alternative only if the tradeoff is genuinely close.
5. Present a concrete plan and stop before implementation.

## Before Planning

- Confirm the working path. Never assume the current repo.
- Read matching design docs, ADRs, or local planning docs if they exist.
- Inspect the real code and current constraints before proposing.

## Check Official Solutions First

Before proposing custom implementations:

- check framework built-ins
- check official docs
- check ecosystem-standard patterns

If an official solution exists, it is the default unless you can explain why it is insufficient here.

## Planning Rules

- Inspect the real project before opining.
- Prefer one recommendation over broad option dumping.
- Name the most fragile assumption explicitly.
- Stop before implementation starts.
- Do not ask for credentials or tools halfway through the plan; list dependencies up front.
- No placeholders in approved plans.

## Recommendation Format

For the main recommendation, always include:

- what changes
- where it changes
- why this is the right direction
- what assumption could break the plan

Use this exact pattern for the fragile assumption:

`This plan assumes X. If X does not hold, Y breaks first.`

## Pressure Tests

Run these only when relevant:

- Dependency failure: if an external service disappears, what degrades first?
- Scale failure: at 10x load or data, what breaks first?
- Rollback cost: if the direction is wrong, how hard is it to reverse?

If a pressure test breaks the plan, deform the plan or discard it. Do not present a broken plan as if it passed.

## Validate Before Handoff

- More than 8 files involved: say so explicitly.
- More than 3 components exchanging data: draw a small ASCII diagram.
- List happy path, failure path, and edge cases.
- State whether rollback touches persistent data.
- List required external tools, APIs, plugins, connectors, or accounts before approval.

## Output

Use this structure:

**Building**

- what this is

**Not Building**

- explicit out-of-scope items

**Approach**

- the recommended direction and why

**Key Decisions**

- 3-5 decisions with reasoning

**Risks**

- the most important risk
- how to verify it did not happen

**Unknowns**

- only real deferred items with a reason

## Hard Stops

- Do not start implementation inside this skill.
- Do not produce a plan based only on memory when the repo is available.
- Do not hide behind "there are many ways" language.
- Do not present unresolved placeholder markers or deferred fake specifics.

## Gotchas

| What happened | Rule |
|---------------|------|
| Designed against the wrong repo | Confirm the working path before planning |
| Asked for keys halfway through | List dependencies before approval |
| Restarted design from scratch after feedback | Ask what failed and narrow the plan |
| Treated an evaluation request as implementation planning | Separate "should it exist" from "how do we build it" |
| Proposed a new runtime casually | Never add a new language or runtime without explicit approval |

## After Approval

When the user approves the design, stop and tell them to either implement it or ask for implementation explicitly.
