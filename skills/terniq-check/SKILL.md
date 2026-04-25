---
name: terniq-check
description: Review diffs before merge, classify findings, invoke specialist reviewers when needed, and require real verification evidence.
when_to_use: review this, check my changes, before merge, 看看代码, 合并前检查, 看看 PR, review diff
metadata:
  version: "0.1.0"
---

# Terniq Check

Use this skill for post-implementation review and issue or PR triage.

Read the real diff, find the real problems, fix only what is safe to fix immediately, and do not call the work done without evidence.

## Core Rules

- Read the real diff before judging.
- Classify scope as `on target`, `drift`, or `incomplete`.
- Escalate to specialist agents only when depth justifies it.
- Do not declare success without verification evidence.
- Findings come before summary.

## Modes

### Diff Review Mode

Default when the user asks for review after implementation.

Flow:

1. Get the relevant diff.
2. Measure review depth.
3. Check scope drift before code quality.
4. Identify hard stops.
5. Run specialist review if needed.
6. Apply safe autofix only when it is unambiguous.
7. Run or inspect verification evidence.
8. Report findings first.

### Triage Mode

Activate when the user mentions:

- issue
- PR
- triage
- review all
- batch review

Flow:

1. Pull the pending items from the connected GitHub surface or `gh` if that is the active path.
2. Check whether a fix already exists.
3. Separate already shipped, merged but unreleased, and not fixed.
4. Draft action or recommendation for each item.
5. Do not write back without confirmation when the action changes external state.

## Review Depth

Measure the diff and classify:

| Depth | Criteria | Review path |
|------|----------|-------------|
| Quick | under 100 lines, 1-5 files | base review only |
| Standard | 100-500 lines, or 6-10 files | base review + conditional specialists |
| Deep | 500+ lines, 10+ files, or touches auth/payments/data mutation | all specialists + adversarial pass |

State the depth before proceeding.

## Scope Check

Before judging implementation quality, ask:

- does the diff actually do what the user asked?
- is there unrelated refactoring?
- did a new dependency appear unexpectedly?
- did the change create an abstraction that the goal did not require?

Label the result:

- `on target`
- `drift`
- `incomplete`

## Hard Stops

Flag any issue that could cause irreversible damage if merged without intervention.

Examples:

- destructive automation without confirmation
- hardcoded credentials or secret logging
- injection risks at trust boundaries
- user-visible state changes hidden behind "safe" language
- missing release artifacts when the task involved release output
- unexpected dependency additions
- unknown identifiers introduced without existing code references

## Specialist Review

Use specialist agents only for Standard and Deep reviews.

Default mapping:

- `reviewer-security`: auth, payments, secrets, validation, trust boundaries
- `reviewer-architecture`: abstraction quality, boundary damage, scope drift, maintainability regressions
- `reviewer-frontend`: visual, responsive, accessibility, interaction, or UI-heavy changes

Rules:

- do not launch agents for tiny diffs just because they exist
- merge duplicate findings by keeping the higher severity
- different locations are not duplicates just because the theme matches

## Autofix Routing

| Class | Meaning | Action |
|------|---------|--------|
| `safe_auto` | typo, missing import, obvious low-risk cleanup | apply immediately |
| `gated_auto` | likely correct but changes behavior | batch for confirmation |
| `manual` | requires product or architecture judgment | report, do not auto-apply |
| `advisory` | informational only | note briefly |

Never ask separately for each gated change. Batch them.

## Verification

Verification must be real and session-local.

Preferred evidence:

- project test command
- lint or typecheck when relevant
- browser verification for user-visible frontend changes
- live command output proving the workflow passes

Rules:

- if no verification command exists, say that explicitly
- lack of verification is a structural gap, not a pass
- for bug fixes, a regression guard is strongly preferred
- if frontend behavior changed visibly, browser verification is part of the evidence path

## Adversarial Pass

Activate on Deep review.

Ask:

- if I wanted to abuse this diff, where would I push?
- what assumption, if false, would break this badly?
- what composition failure could turn a small issue into a production problem?

Suppress weak speculation. Keep only findings with real consequence.

## Output

Findings first, ordered by severity.

Then use this sign-off:

```
files changed:    N (+X -Y)
scope:            on target / drift / incomplete
review depth:     quick / standard / deep
hard stops:       N found, N fixed, N deferred
specialists:      [security, architecture, frontend] or none
new tests:        N
verification:     [command or evidence] -> pass / fail / none
```

If there are no findings, say that explicitly and still note any verification gap or residual risk.

## Gotchas

| What happened | Rule |
|---------------|------|
| Summary came before findings | findings are the product, summary is secondary |
| Scope drift got missed because the code looked clean | always compare the diff against the stated goal first |
| Specialist agents got launched on a tiny patch | depth gate them |
| Browser-visible change shipped without visual verification | frontend evidence is required for visible changes |
| No verification command existed but the review still said pass | call it a gap, not a success |
