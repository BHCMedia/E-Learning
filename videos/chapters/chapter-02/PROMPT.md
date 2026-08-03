/hyperframes

Create Chapter 2 of the Dementia Care eLearning course only after the script is approved.

READ FIRST

- `../../DESIGN.md`
- `../../VOICE.md`
- `SCRIPT.md`
- `STORYBOARD.md`
- `chapter.json`

APPROVAL GATE

`SCRIPT.md` is currently marked draft.

Do not generate final TTS or final animation until the user approves the script.

After approval, use the approved script verbatim.

FORMAT

- approximately 40–50 seconds
- 1920 × 1080
- 30 fps
- MP4 final delivery
- separate WebVTT captions

DESIGN

Use `../../DESIGN.md` as the visual source of truth.

Keep the Coral-inspired layout and fonts while using the approved navy, teal, white and light-grey palette.

PRODUCTION RULES

- no logos
- no avatar
- no presenter
- no filmed footage
- no stock footage
- do not use `chapter2-narrator.mp4`
- do not reuse indigo/cyan styling
- rebuild the chapter from scratch
- no long paragraphs
- no static slide layouts
- no frozen final frame

Use HTML/CSS motion graphics, inline SVG, diagrams, icons and consistent synthetic illustrations.

VOICE AND TIMING

Read `../../VOICE.md`.

After the voice and script are approved:

1. generate `audio/narration.wav`
2. create `transcript.json`
3. update scene timing from the real transcript
4. create `captions/chapter-02.vtt`
5. match visual duration to narration duration

SCENES

Follow `STORYBOARD.md`. The beat list below has been corrected to match its five scenes exactly (the six-category scene was previously missing from this list).

Use these beats:

1. Umbrella term — dementia is not one single condition, but a term for several progressive diseases
2. What dementia can affect — memory, cognitive abilities and behaviour
3. The six course categories — Alzheimer's disease, vascular dementia, Lewy body dementia, frontotemporal dementia, mixed dementia, early-onset and late-onset dementia
4. No two people experience dementia in exactly the same way
5. Next chapter transition

VALIDATION

Run lint, check or validate, snapshots and final render.

Fix all overflow, collision, contrast, asset and runtime issues.
