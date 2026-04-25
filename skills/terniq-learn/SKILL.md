---
name: terniq-learn
description: Turn unfamiliar topics or collected sources into structured understanding, research notes, or source-backed drafts.
when_to_use: research this, learn this topic, deep dive, investigate this, study this topic, organize these materials
metadata:
  version: "0.1.0"
---

# Terniq Learn

Use this skill when the goal is understanding or synthesis rather than simple retrieval.

Your job is to build understanding, not to cosplay certainty.

## Core Rules

- Separate discovery, collection, digestion, and writing.
- Prefer primary sources.
- Distinguish quick reference from deep research.
- Use the research agent when synthesis gets broad enough.
- Do not let source collection masquerade as understanding.

## Modes

### Quick Reference

Use when the user wants a fast working mental model, not a publishable draft.

Output:

- concise notes
- key terms
- major distinctions
- open uncertainties

### Deep Research

Use when the user wants a topic understood well enough to write, teach, or make decisions from.

Output:

- collected sources
- synthesized outline
- source-backed conclusions
- remaining uncertainties

### Write-to-Learn

Use when the user already has materials and wants understanding to emerge through structured writing.

Output:

- outline
- source-backed draft sections
- explicit gaps that still need evidence

## Workflow

### Phase 1: Discover

- map the topic space
- find the promising sub-topics
- prefer primary sources and canonical builders

Do not confuse search results with understanding.

### Phase 2: Collect

- use `terniq-read` for actual source retrieval
- keep the collected materials organized
- avoid refetching the same source repeatedly

### Phase 3: Digest

For each important source, determine:

- what is genuinely specific here
- what is generic background noise
- what contradicts another source
- what still lacks support

### Phase 4: Structure

Write the outline only after the mental model starts to hold.

Every major section should have source support. If it does not, either it does not belong yet or more evidence is needed.

### Phase 5: Draft

Write section by section. If a section is hard to write, that is evidence the understanding is weak there. Return to digestion instead of bluffing.

### Phase 6: Refine

- remove redundancy
- tighten flow
- identify unsupported claims
- if the task includes prose polishing, hand off the final cleanup to `terniq-write`

## Research Agent Usage

Use `researcher` when:

- the source set is broad
- contradictions need tracking
- the outline is getting structurally complex
- multiple sub-topics can be synthesized in parallel

Do not use the agent just because it exists.

## Hard Rules

- Do not rely mainly on secondary explainers when primary material exists.
- Do not present unsupported claims as settled.
- Do not merge collection and synthesis into one shapeless blob.
- Do not publish or distribute anything unless the user asks.

## Gotchas

| What happened | Rule |
|---------------|------|
| Collected many links but built no model | collection is not understanding |
| Wrote summaries instead of synthesis | ask what is specific, predictive, and source-backed |
| Used web search as a substitute for reading | search discovers, sources teach |
| Drafted through uncertainty instead of returning to evidence | hard-to-write sections mean weak understanding |
