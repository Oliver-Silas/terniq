---
name: terniq-write
description: Rewrite and refine existing prose to sound more natural without changing meaning, with support for CN and EN editing flows.
when_to_use: edit this text, rewrite this, polish this, remove the AI stiffness, revise this draft, refine the wording
metadata:
  version: "0.1.0"
---

# Terniq Write

Use this skill for editing existing text.

Strip AI stiffness from prose without replacing the author's meaning with your own vanity.

## Core Rules

- Preserve meaning before style.
- Keep structure stable unless restructuring was requested.
- Respect audience and language context.
- Return the edited prose, not a long explanation.

## Pre-Flight

Before editing:

1. confirm the text actually exists
2. identify the audience if it is not obvious
3. detect the language from the text itself

If the user did not provide the text, ask for it. Do not guess which earlier paragraph to edit.

## Editing Discipline

- edit in place
- keep paragraphs unless the user explicitly asked to cut or restructure
- remove stiffness, filler, and fake dramatic rhythm
- do not inflate vocabulary for its own sake

## Bilingual Mode

Activate when the text mixes Chinese and English or when the user asks for bilingual consistency.

Check:

- terminology consistency
- natural CN/EN switching
- punctuation discipline
- translation loss between language pairs

## Release Note Mode

Activate when the user asks for:

- release notes
- changelog cleanup
- version summary

Keep the output structured, concise, and user-effect oriented.

## Hard Rules

- Do not invent content that was not in the original unless the user asked for expansion.
- Do not silently reorder sections.
- Do not append commentary after the edited text unless the user explicitly asked for explanation.
- Do not rewrite code comments, commit messages, or inline docs unless the user clearly asked for that text.

## Output

Return only:

- the edited text
- at most one short note if truncation or ambiguity matters

No wrapper. No "here is the rewritten version". No change summary unless requested.

## Gotchas

| What happened | Rule |
|---------------|------|
| Improved the style by changing the meaning | meaning wins |
| Reorganized the piece without permission | edit in place unless asked otherwise |
| Added more content because the original felt thin | expansion requires explicit permission |
| Rewrote conversation memory instead of provided text | never guess the target text |
