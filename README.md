# E-Learning

Video creation for this project is powered by [Hyperframes](https://github.com/heygen-com/hyperframes) â€” an open-source framework that turns HTML/CSS/animation into deterministic MP4 videos.

## Setup

- **Project**: the Hyperframes composition project lives in [`videos/`](videos/). It was scaffolded with `hyperframes init` (blank template, 1920x1080).
- **Requirements**: Node.js 22+ and FFmpeg. Both are provisioned automatically in Claude Code on the web via `.claude/hooks/session-start.sh` (see below). Locally, install FFmpeg yourself (e.g. `brew install ffmpeg` / `apt install ffmpeg`).
- **Agent skills**: the Hyperframes Claude Code skills (`/hyperframes` router + domain skills for animation, CLI, media, creative direction, registry blocks) are installed automatically at session start so Claude can create, preview, and render compositions on request.

## Usage

```bash
cd videos
npm run dev      # preview in the browser with live reload (long-running â€” run in background)
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