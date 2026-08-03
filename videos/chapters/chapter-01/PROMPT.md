/hyperframes

Create Chapter 1 of the Dementia Care eLearning course.

READ FIRST

- `../../DESIGN.md`
- `../../VOICE.md`
- `SCRIPT.md`
- `STORYBOARD.md`
- `chapter.json`

SCRIPT

Use `SCRIPT.md` verbatim.

Do not rewrite, shorten, expand or paraphrase it.

FORMAT

- approximately 45–55 seconds
- 1920 × 1080
- 30 fps
- MP4 final delivery
- separate WebVTT captions

DESIGN

Use `../../DESIGN.md` as the visual source of truth.

Preserve the Coral-inspired editorial layouts, Bebas Neue headings, Inter body copy, rounded panels, spacing and restrained motion.

Use the approved navy, teal, white and light-grey palette only.

PRODUCTION RULES

- no logos
- no avatar
- no visible presenter
- no filmed footage
- no stock footage
- no old Chapter 2 assets
- no indigo/cyan palette
- no long narration paragraphs on screen
- no static slideshow scenes
- no frozen final frame
- no childish or sensational dementia imagery

Use HTML/CSS motion graphics, inline SVG, diagrams, icons and consistent synthetic illustrations.

VOICE AND TIMING

Read `../../VOICE.md`.

Do not create final narration while required voice fields remain `TBD`.

After the voice is approved:

1. generate `audio/narration.wav`
2. create `transcript.json`
3. use actual word timing for every reveal
4. generate `captions/chapter-01.vtt`
5. make the composition duration match the final audio

SCENES

Follow `STORYBOARD.md`.

Use these beats:

1. Welcome title
2. Audience
3. Purpose: Understand, Recognise, Respond
4. Five learning outcomes
5. Next chapter transition

VALIDATION

Run lint, check or validate, snapshots and final render.

Fix every overflow, collision, contrast, missing-asset and runtime issue before completion.
