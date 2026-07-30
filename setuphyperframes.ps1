New-Item -ItemType Directory -Force -Path ".claude\hooks" | Out-Null
New-Item -ItemType Directory -Force -Path "videos" | Out-Null

@'
node_modules/
.claude/settings.local.json

# Hyperframes render output and caches
videos/dist/
videos/.hyperframes/
*.mp4
'@ | Set-Content -NoNewline -Path ".gitignore" -Encoding utf8

@'
# E-Learning

Video creation for this project is powered by [Hyperframes](https://github.com/heygen-com/hyperframes) — an open-source framework that turns HTML/CSS/animation into deterministic MP4 videos.

## Setup

- **Project**: the Hyperframes composition project lives in [`videos/`](videos/). It was scaffolded with `hyperframes init` (blank template, 1920x1080).
- **Requirements**: Node.js 22+ and FFmpeg. Both are provisioned automatically in Claude Code on the web via `.claude/hooks/session-start.sh` (see below). Locally, install FFmpeg yourself (e.g. `brew install ffmpeg` / `apt install ffmpeg`).
- **Agent skills**: the Hyperframes Claude Code skills (`/hyperframes` router + domain skills for animation, CLI, media, creative direction, registry blocks) are installed automatically at session start so Claude can create, preview, and render compositions on request.

## Usage

```bash
cd videos
npm run dev      # preview in the browser with live reload (long-running — run in background)
npm run check    # lint + runtime + layout + motion + contrast checks
npm run render   # render the composition to MP4
```

With Claude Code, just describe the video you want and mention `/hyperframes`, e.g.:

> Using `/hyperframes`, create a 60-second explainer about our new onboarding course.

Full docs: https://hyperframes.heygen.com

## Known network restriction (Claude Code on the web)

The default Hyperframes starter composition loads animation libraries (e.g. GSAP) from `cdn.jsdelivr.net` at render time. In this workspace's remote sessions, outbound access to that host (and `unpkg.com`, `www.gstatic.com`) is currently blocked by org egress policy, which breaks `hyperframes check` / `render` for compositions that reference a CDN script.

Fix (either one):
- Ask a workspace admin to allowlist `cdn.jsdelivr.net` (and `unpkg.com`, `www.gstatic.com`) for Claude Code sessions at https://claude.ai/admin-settings/claude-in-slack, **or**
- Vendor the animation library locally instead of loading it from a CDN (e.g. `npm install gsap` in `videos/` and reference the local file in `index.html`).

`fonts.googleapis.com`, `fonts.gstatic.com`, and `generativelanguage.googleapis.com` are already reachable and do not need changes.
'@ | Set-Content -NoNewline -Path "README.md" -Encoding utf8

@'
{
  "hooks": {
    "SessionStart": [
      {
        "hooks": [
          {
            "type": "command",
            "command": "$CLAUDE_PROJECT_DIR/.claude/hooks/session-start.sh"
          }
        ]
      }
    ]
  }
}
'@ | Set-Content -NoNewline -Path ".claude\settings.json" -Encoding utf8

@'
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
'@ | Set-Content -NoNewline -Path ".claude\hooks\session-start.sh" -Encoding utf8

@'
{
  "name": "videos",
  "private": true,
  "type": "module",
  "scripts": {
    "dev": "npx --yes hyperframes@0.7.83 preview",
    "check": "npx --yes hyperframes@0.7.83 check",
    "render": "npx --yes hyperframes@0.7.83 render",
    "publish": "npx --yes hyperframes@0.7.83 publish"
  }
}
'@ | Set-Content -NoNewline -Path "videos\package.json" -Encoding utf8

@'
{
  "$schema": "https://hyperframes.heygen.com/schema/hyperframes.json",
  "registry": "https://raw.githubusercontent.com/heygen-com/hyperframes/main/registry",
  "paths": {
    "blocks": "compositions",
    "components": "compositions/components",
    "assets": "assets"
  },
  "media": {
    "autoProxy": true
  }
}
'@ | Set-Content -NoNewline -Path "videos\hyperframes.json" -Encoding utf8

@'
{
  "id": "videos",
  "name": "videos",
  "createdAt": "2026-07-30T04:47:13.899Z"
}
'@ | Set-Content -NoNewline -Path "videos\meta.json" -Encoding utf8

@'
<!doctype html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=1920, height=1080" />
    <script src="https://cdn.jsdelivr.net/npm/gsap@3.14.2/dist/gsap.min.js"></script>
    <style>
      * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
      }
      html,
      body {
        margin: 0;
        width: 1920px;
        height: 1080px;
        overflow: hidden;
        background: #000;
      }
      body {
        font-family: "Inter", sans-serif;
      }
      code,
      pre,
      .monospace {
        font-family: "JetBrains Mono", monospace;
      }
    </style>
  </head>
  <body>
    <div
      id="root"
      data-composition-id="main"
      data-start="0"
      data-duration="10"
      data-width="1920"
      data-height="1080"
    >


      <!--
        Add your clips here. Example:
        <div id="title" class="clip" data-start="0" data-duration="5" data-track-index="1"
             style="font-size: 64px; color: #fff; padding: 40px">
          Hello World
        </div>
      -->
    </div>

    <script>
      window.__timelines = window.__timelines || {};
      const tl = gsap.timeline({ paused: true });
      // Example: tl.from("#title", { opacity: 0, y: -50, duration: 1 }, 0);
      window.__timelines["main"] = tl;
    </script>
  </body>
</html>
'@ | Set-Content -NoNewline -Path "videos\index.html" -Encoding utf8

@'
# HyperFrames Composition Project

## Skills — USE THESE FIRST

**Always invoke the relevant skill before writing or modifying compositions.** Skills encode framework-specific patterns (e.g., `window.__timelines` registration, `data-*` attribute semantics, shader-compatible CSS rules) that are NOT in generic web docs. Skipping them produces broken compositions.

**Doing anything with HyperFrames?** Start at `/hyperframes` — it tells you what HyperFrames can do and which skill or workflow handles your intent (make a video, TTS / BGM, prep footage, author / animate, render, install blocks), confirms your brief up front (the intent layer), and routes every "make me a…" request (a video, a deck, a composition port) to the right workflow. Read it first, especially when there's no project context to orient you. The workflows it routes to:

- `/product-launch-video` — any **website** URL or brief / script → a product launch / SaaS / promo video, or a site tour / showcase featuring the site's own captured visuals.
- `/faceless-explainer` — arbitrary text (topic / article / notes), **no URL, no website capture** → 60-90s faceless explainer.
- `/embedded-captions` — an existing talking-head video (MP4) → the same footage with captions / subtitles added (rail + embed, or pure-cinematic embed); the footage itself is untouched.
- `/talking-head-recut` — an existing talking-head / interview / podcast video (MP4) → the same footage **packaged with designed graphic overlays** (kinetic titles, lower-thirds, data callouts, pull-quotes, side panels, pip) synced to the transcript; the clip plays unchanged underneath. (Plain captions/subtitles → `/embedded-captions`.)
- `/pr-to-video` — a GitHub PR (URL / `owner/repo#N` / "this PR") → 30-90s code-change explainer (changelog / feature reveal / fix / refactor).
- `/motion-graphics` — a short (typically under 10s) design-led **motion graphic**, motion-is-the-message, no narration: kinetic type, a stat / number count-up, a chart, a logo sting, a lower-third / overlay, or an animated tweet / headline / captured-page highlight; rendered to MP4 or a transparent overlay. Longer / narrated / custom → `/general-video`.
- `/music-to-video` — a **music track** (audio file, or video to pull audio from) → beat-synced video (lyric / slideshow / kinetic promo). Music drives pacing; user-supplied images / videos are cut onto the same beat grid.
- `/slideshow` — a **presentation / pitch deck / interactive deck** — discrete slides, fragment reveals, branching, hotspot navigation, presenter mode. Output is a navigable deck, not a rendered video.
- `/general-video` — fallback for any other video (title card, longer brand / sizzle reel, multi-scene montage, static loop, custom composition) and the home of **companion mode** — co-create with the full HyperFrames toolbox; the original hyperframes authoring flow, any length.

**Porting an existing composition?** `/remotion-to-hyperframes` translates a Remotion (React) composition into HyperFrames HTML — a source migration, separate from the creation workflows above.

The domain skills (`/hyperframes-core`, `/hyperframes-animation`, `/hyperframes-keyframes`, `/hyperframes-creative`, `/hyperframes-cli`, `/media-use`, `/hyperframes-registry`, `/figma`) and the full capability map live inside `/hyperframes` — it is the single source of truth for which skill handles which intent.

**Changing how real footage or images look or reveal?** Load `/media-use` and read its `references/media-treatments.md` before editing, even when the request only says dark, flat, boring, retro, private, or "make the reveal cooler." It governs how footage is treated, never whether media may be used. Use canonical media treatments and seek-safe motion; do not improvise equivalent CSS/SVG filters or overlays.

> **Tailwind v4 projects** (`hyperframes init --tailwind`): see `/hyperframes-core` → `references/tailwind.md`.

> **Skill missing or stale?** Run `npx hyperframes skills update <name>` to install/refresh
> the specific skill you need (the `/hyperframes` router does this automatically before
> entering a workflow), or bare `npx hyperframes skills update` to refresh the core set plus
> everything already installed — neither pulls the full set. Restart the agent session so
> newly installed skills load.

## Commands

```bash
npm run dev          # start the preview server (long-running — keep it alive in background)
npm run check        # lint + runtime + layout + motion + contrast (one command)
npm run render       # render to MP4
npm run publish      # publish and get a shareable link
npx hyperframes lint --verbose  # include info-level findings
npx hyperframes lint --json     # machine-readable output for CI
npx hyperframes docs <topic> # reference docs in terminal
```

> **`npm run dev` is a long-running server, not a one-shot command.** It blocks until stopped.
> In Claude Code, always run it with `run_in_background: true`. Never run it as a foreground
> command — it will time out and the server will die, breaking the browser preview.

> **Pinned CLI version.** These scripts pin an exact `hyperframes@X.Y.Z` so this project re-renders identically over time. Weeks later that pin lags fixes shipped since. To move up: `npx hyperframes@latest upgrade --project . --check` (shows the delta), then `npx hyperframes@latest upgrade --project .` to rewrite the pins. Always unpinned — the pinned script re-runs the old version against itself.

## Documentation

**For quick reference**, use the local CLI docs command (no network required):

```bash
npx hyperframes docs <topic>
```

Topics: `data-attributes`, `gsap`, `compositions`, `rendering`, `examples`, `troubleshooting`

**For full documentation**, discover pages via the machine-readable index — do NOT guess URLs:

```
https://hyperframes.heygen.com/llms.txt
```

## Project Structure

- `index.html` — main composition (root timeline)
- `compositions/` — sub-compositions referenced via `data-composition-src`
- `meta.json` — project metadata (id, name)
- `transcript.json` — whisper word-level transcript (if generated)

## Linting — ALWAYS RUN AFTER CHANGES

After creating or editing any `.html` composition, **always** run the full check before considering the task complete:

```bash
npm run check
```

Fix all errors before presenting the result. Warnings should be reviewed before rendering.

## Key Rules

1. Every timed element needs `data-start`, `data-duration`, and `data-track-index`
2. Elements with timing **MUST** have `class="clip"` — the framework uses this for visibility control
3. Timelines must be paused and registered on `window.__timelines`:
   ```js
   window.__timelines = window.__timelines || {};
   window.__timelines["composition-id"] = gsap.timeline({ paused: true });
   ```
4. Videos use `muted` with a separate `<audio>` element for the audio track
5. Sub-compositions use `data-composition-src="compositions/file.html"` to reference other HTML files
6. Only deterministic logic — no `Date.now()`, no `Math.random()`, no network fetches
'@ | Set-Content -NoNewline -Path "videos\AGENTS.md" -Encoding utf8

Copy-Item "videos\AGENTS.md" "videos\CLAUDE.md" -Force

Write-Host "Done. Files created:" -ForegroundColor Green
Get-ChildItem -Recurse -File | Where-Object { $_.FullName -notmatch '\\\.git\\' } | ForEach-Object { $_.FullName }
