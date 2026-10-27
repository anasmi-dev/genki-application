#!/usr/bin/env bash
# Blocks the agent from touching secrets, whatever the prompt says.
# Claude Code passes the tool call as JSON on stdin; exit code 2 blocks it.
input="$(cat)"
if echo "$input" | grep -Eq '(\.env|secrets/|\.pem|id_rsa|credentials)'; then
  echo "Blocked: this path may contain secrets. Ask a human." >&2
  exit 2
fi
exit 0
