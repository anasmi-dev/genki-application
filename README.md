# Anas Mohammed - application for Genki

A one-page Astro site built with Claude Code, with the same guardrails I'd set up for a team:
`CLAUDE.md` conventions, a PreToolUse hook that blocks secrets, and CI on every PR.

## Run locally
npm install
npm run dev

## Deploy (Cloudflare Pages)
Connect this repo in Cloudflare Pages with build command `npm run build` and output folder `dist`.
