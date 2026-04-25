---
name: terniq-read
description: Fetch and normalize URLs or PDFs into usable material, save or report the result, and stop before analysis unless explicitly asked.
when_to_use: read this url, fetch this page, save this pdf, 看这个链接, 读一下这个网页, 抓一下这个文档
metadata:
  version: "0.1.0"
---

# Terniq Read

Use this skill to ingest external material.

Convert external material into usable working input. Do not drift into research synthesis unless the user explicitly asks for interpretation.

## Core Rules

- Use Codex-native web access first where appropriate.
- Preserve save and reporting discipline.
- Keep reading separate from synthesis.
- Stop after retrieval unless interpretation was requested.

## Input Types

Supported inputs:

- normal web URLs
- GitHub URLs
- PDF URLs
- local PDFs when the path is provided
- page links the user wants normalized or saved

## Routing

Use the simplest strong route that preserves fidelity:

- GitHub content: prefer raw or repo-aware retrieval
- PDFs: use PDF extraction
- normal articles and docs: use Codex-native web retrieval
- pages that need login-state or richer rendering: use the most suitable connected or browser-aware path

Do not hardcode a brittle routing folklore into the skill. The host already has strong retrieval primitives.

## Output Discipline

By default, return or save:

- title
- source
- original URL or path
- retrieved content or normalized preview

If the content is long, it is acceptable to preview the first section and note truncation when the user did not ask for the full body inline.

## Save Behavior

Default behavior:

- save when the user asked to save, archive, fetch into a file, or clearly needs a reusable artifact
- otherwise preview inline or report the retrieval result

If saving:

- use a stable filename
- never overwrite an existing file silently
- report the final saved path

## Image Handling

Do not fetch images by default.

Only collect or download images when the user explicitly asks for:

- save images
- 带图
- 下载图片
- include the image assets

## Hard Rules

- Do not summarize by default.
- Do not analyze by default.
- Do not silently overwrite files.
- Do not turn source reading into research synthesis.

## Failure Handling

If retrieval fails:

1. say what was attempted
2. say what failed
3. say whether the failure looks like access, rendering, auth, or unsupported format

Do not return empty or partial content as if it were successful.

## Handoff

Stop after:

- the content is retrieved
- the path is reported if saved
- any failure is stated clearly

Do not suggest the next workflow unless the user asks.
