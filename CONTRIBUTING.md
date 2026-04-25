# Contributing to Terniq

Thanks for taking a look at Terniq.

## What to contribute

Good contributions usually fall into one of these buckets:

- improve an existing workflow
- tighten routing or command wording
- add better verification guidance
- improve install or trial experience
- clarify documentation for real users

## Before opening a PR

Please make sure the change is scoped and intentional.

1. Explain what behavior you are changing.
2. Say whether it affects `skills`, `commands`, `agents`, or packaging.
3. Keep unrelated edits out of the same PR.

## Local checks

Run the lightweight consistency check before opening a PR:

```bash
bash ./scripts/verify-terniq.sh
```

If you touched install or routing docs, verify the README still matches reality.

## Style expectations

- prefer small, durable workflow changes
- keep descriptions concrete
- avoid adding vague prompt fluff
- preserve the `skills -> agents -> commands` separation
- update `AGENTS.md` when the structure changes

## Pull request notes

Helpful PRs usually include:

- what changed
- why the old behavior was weak
- how you validated the new behavior
- any follow-up work that still remains
