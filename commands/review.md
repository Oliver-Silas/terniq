---
description: Enter Terniq review mode explicitly. Routes into terniq-check for diff review, issue triage, specialist review, and verification-aware signoff.
---

# /terniq:review

Owning skill: `terniq-check`

Purpose:

- enter code review or triage workflow explicitly

Rule:

- route into `terniq-check`
- let the skill decide whether specialist reviewers are needed

Typical uses:

- review this diff before merge
- check whether this implementation drifted from scope
- triage these open issues or PRs
