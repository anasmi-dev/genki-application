# CLAUDE.md

Project conventions for anyone (human or agent) working in this repo.

## What this is
A static Astro site. One page, no backend, no tracking, no secrets.

## Rules
- TypeScript strict. `npm run check` must pass before any commit.
- Styles live in `src/styles` (SCSS). No inline style attributes.
- Keep it fast: no client-side JS unless a feature truly needs it.
- Every image needs alt text. Every interactive element must work by keyboard.
- Never read, create or edit `.env*`, keys, or anything under `secrets/`. The hook in `.claude/hooks` blocks it anyway.
- Small changes, one concern per PR. Explain the why in the PR description.

## Workflow
1. Plan first (plan mode) and confirm the plan before editing.
2. Make the change.
3. Run `npm run check && npm run build`.
4. Open a PR. CI runs the same checks and Cloudflare posts a preview URL.
5. A human reviews the diff before merge. Always.
