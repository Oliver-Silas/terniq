---
name: terniq-hunt
description: Debug failures systematically, confirm root cause before applying any fix, and prefer runtime evidence over guessed explanations.
when_to_use: debug this, why is this broken, failing test, 报错了, 为什么不工作, 帮我定位问题
metadata:
  version: "0.1.0"
---

# Terniq Hunt

Use this skill for root-cause debugging.

A patch applied to a symptom creates a new bug somewhere else.

Do not touch code until you can say:

`I believe the root cause is X because Y evidence points to it.`

The cause must be specific enough to test:

- a file
- a function
- a line
- a condition
- a missing dependency
- a wrong environment fact

If you cannot be that specific, you do not have a root-cause hypothesis yet.

## Debugging Discipline

- State a testable hypothesis before claiming a cause.
- Gather evidence from the real runtime.
- Diagnose host or tool failures before switching methods.
- Do not fix until the root cause is specific enough.
- If the same symptom survives a fix attempt, stop and reorient.

## Rationalization Watch

When these thoughts show up, the workflow is drifting:

| Thought | What it means | Rule |
|--------|----------------|------|
| I'll just try this one thing | random walk, no hypothesis | stop and write the hypothesis first |
| I'm pretty sure it's X | confidence without evidence | add an instrument or test |
| Probably the same issue as before | pattern-matching over a new bug | re-read the execution path |
| One more restart might fix it | avoiding the actual error | read the last error verbatim |
| The tool is flaky, I'll switch | untested host diagnosis | diagnose the tool failure first |

## Success Signals

These indicate the diagnosis is tightening:

| Signal | Meaning | Next step |
|--------|---------|-----------|
| a log or assertion matches the hypothesis | positive evidence exists | find one more independent signal |
| you can predict the next failure | the model is forming | run the prediction |
| the cause is in A but the symptom is in B | propagation path is visible | trace the links from A to B |
| you can write a test that fails on the old code | the bug is specific enough | write the regression guard |

## Flow

1. Reproduce the symptom precisely.
2. State the hypothesis.
3. Add the smallest instrument that can prove or disprove it.
4. Run the instrument.
5. Confirm or discard the hypothesis.
6. Only after confirmation: propose or apply the fix.

## External Tool Failure Mode

Activate when the failure involves:

- MCP tools
- browser tools
- external APIs
- plugin behavior
- connectors

Rules:

- treat the tool failure itself as the system under diagnosis
- check configuration, credentials, reachability, and expected behavior in that order
- do not switch methods until you know why the first method failed

## Regression Mode

Activate when:

- it used to work
- it broke after an update
- the bug has already been "fixed" before

Rules:

- prefer a reproducible pass/fail test
- isolate the regression boundary
- once root cause is confirmed, add a regression guard in the real test suite when the project has one

## Hard Stops

- After three failed hypotheses, stop and hand off the diagnostic state clearly.
- If the fix touches more than 5 files, confirm scope before proceeding.
- Do not describe the bug in abstract labels like "state issue" or "timing issue" without tying it to a real location or condition.

## Outcome Format

When resolved, report:

```
Root cause:        [what was wrong, file or condition]
Fix:               [what changed]
Confirmed:         [evidence or test]
Tests:             [what passed or failed]
Regression guard:  [where it lives, or none with reason]
```

Status must be one of:

- `resolved`
- `resolved with caveats`
- `blocked`

## Blocked Handoff

After three failed hypotheses, use:

```
Symptom:
[one sentence]

Hypotheses tested:
1. [hypothesis] -> [test] -> [result]
2. [hypothesis] -> [test] -> [result]
3. [hypothesis] -> [test] -> [result]

Evidence collected:
- [...]

Ruled out:
- [...]

Unknowns:
- [...]

Suggested next steps:
1. [...]
2. [...]
```

## Gotchas

| What happened | Rule |
|---------------|------|
| Patched a visible symptom instead of the actual cause | trace backward before editing |
| Switched tools because the first one failed | diagnose the failed tool first |
| Reproduced locally but not in CI | align environment facts before chasing code |
| Stack trace landed in a dependency | walk back into your own code path first |
| Rendering bug got debugged with random logs | do static layout and layer analysis first |
