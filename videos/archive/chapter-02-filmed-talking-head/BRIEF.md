---
workflow: talking-head-recut
flow: automation
storyboard: no
message: "Explain what dementia is and its six main types, in a calm, brand-consistent training format for aged care staff."
destination: internal training library
aspect: "16:9 (matches source 1920x1080)"
audience: "Aged care / home care staff (dementia care training)"
length: "~151s (matches source narration, unedited)"
---

## Intent

Full custom card-by-card creative brief supplied verbatim by the user (Director@bestofhomecare.com.au). Not a generic takeaway-card cut — a precisely structured recut:

1. **Opening title card** — fullscreen, Deep Indigo `#1A1A4D` bg, before narration begins. "Chapter 2" (small, top-aligned, Crisp White) + "What is Dementia?" (larger, below) with an Electric Cyan `#00E5FF` underline that draws left-to-right. Motion: fade-up + slight scale-in (1.05→1.0), no bounce. Hold, then cut to narrator as she begins speaking.
2. **Narrator full-screen (opening line)** — untouched, no overlays, one continuous take, for: "Dementia is not a single condition. It's a term used for several diseases that affect a person's memory, cognitive abilities, and behaviour."
3. **Six dementia types, alternating treatment, cut precisely on each name spoken:**
   - Full-screen graphic (narrator fully hidden): Indigo bg, single-line/outline icon animates in first (vary entry direction between instances), then condition name in Crisp White below with Cyan accent underline/highlight.
   - Split-screen (narrator visible untouched in half the frame, no overlay on her side): other half is Indigo panel, icon + name slide in from the outer edge, ease-out only, no bounce. Alternate which side she's on between instances.
   - Pattern: full-screen, split-screen, full-screen, split-screen, full-screen, split-screen (Alzheimer's, Vascular, Lewy Body, Frontotemporal, Mixed, Early/Late-Onset).
   - Mixed Dementia: two icons overlap/crossfade at centre.
   - Early-Onset/Late-Onset: both labels stacked, thin Cyan divider line draws between them, holds slightly longer.
   - All six icons: same simple line-art family (brain/head outline variations), no fills, no photos. Condition name always largest/boldest white text, no secondary description text.
4. **Narrator full-screen (closing line)** — untouched, bookends the opening, for: "The term 'dementia' refers to a collection of progressive diseases that present as a multitude of different cognitive, psychological, and behavioural symptoms. Dementia is not a singular condition — no two people will experience dementia in exactly the same way."

**Critical constraint:** narrator segments (full-screen or split-screen) never get overlays/lower-thirds/captions on her side of the frame — completely untouched exactly as filmed.

**Audio:** continuous, unedited, voice only, no music/SFX. Only the visual layer cuts.

**Timing:** no fixed timestamps — cuts sync to actual speech timing (word-level transcript), since narration may differ from a draft script.

**Tone/brand:** calm, warm, professional dementia-care training. Palette: Deep Indigo `#1A1A4D` bg, Electric Cyan `#00E5FF` accents, Crisp White `#F5F7FF` text. Smooth, unhurried transitions, no fast cuts, no bounce/elastic easing.

## Customizations

- Ratio/canvas: 16:9, 1920×1080 — matches source video, no discovery question needed (brief is fully specified).
- Style: fully custom brand palette (not from the reference style library) — Deep Indigo / Electric Cyan / Crisp White, per user's exact hex values.
- Layout: per-card zone, not one fixed composition layout — `fullscreen` for title/narrator-only/full-screen-graphic cards, custom 50/50 split (alternating sides) for split-screen cards.
- Card count: fixed by brief structure — 1 title + 1 narrator-open + 6 type cards + 1 narrator-close = 9 cards (not the generic density formula).

## Notes

- Run-shape inferred as `flow: automation, storyboard: no` — user gave an exhaustive, fully-specified brief plus explicit end-to-end pipeline instructions (build → `npm run check` → `npm run render` → commit → push). No interactive review requested; discovery/AskUserQuestion steps skipped per the skill's "already pre-approved" rule.
- Local Whisper (whisper-cpp) unavailable in this environment (not installed, no cmake/python toolchain); transcription performed via a WASM Whisper (`@xenova/transformers`, `whisper-small.en`) run from a scratch Node script, output written to this project's `transcript.json` in the same flat `[{text,start,end}]` schema the skill expects.
- Push to `claude/hyperframes-setup-klob5x` will be confirmed with the user before executing (shared/remote action).
