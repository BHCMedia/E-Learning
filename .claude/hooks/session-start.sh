#!/bin/bash
set -euo pipefail

# Only needed for Claude Code on the web / remote sessions.
if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

# Hyperframes (https://github.com/heygen-com/hyperframes) requires ffmpeg for
# rendering. Install it if the container doesn't already have it.
if ! command -v ffmpeg >/dev/null 2>&1; then
  apt-get update -qq
  apt-get install -y -qq --no-install-recommends ffmpeg
fi

# Warm the npx cache for the hyperframes CLI so `npm run dev|check|render`
# inside videos/ don't pay the download cost on first use.
npx --yes hyperframes@latest --version >/dev/null 2>&1 || true

# Install/refresh the core Hyperframes skills (router + domain skills) for
# Claude Code so the agent can create, preview, and render compositions.
npx --yes hyperframes@latest skills update >/dev/null 2>&1 || true