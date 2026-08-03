/hyperframes

You are working inside the existing HyperFrames project in the `videos` folder.

FIRST READ

1. `DESIGN.md`
2. `COURSE_PLAN.md`
3. `VOICE.md`
4. `chapters/chapter-01/SCRIPT.md`
5. `chapters/chapter-01/STORYBOARD.md`
6. `chapters/chapter-01/chapter.json`

GLOBAL RULES

- Treat `DESIGN.md` as the visual source of truth.
- Keep the Coral-inspired layout, Bebas Neue and Inter typography.
- Use only the navy, teal, white, light-grey and approved supporting colours in `DESIGN.md`.
- Do not use any logo.
- Do not use an avatar or visible presenter.
- Do not use filmed footage or stock footage.
- Do not use the old `chapter2-narrator.mp4`.
- Do not reuse the old indigo/cyan design.
- Use HTML/CSS motion graphics, inline SVG, icons, diagrams and consistent synthetic illustrations.
- Keep all media local.
- Do not display narration as long paragraphs.
- Use one primary learning idea per scene.
- Use deterministic, seekable animation only.
- Use paused GSAP timelines registered correctly for HyperFrames.
- Do not use `setTimeout`, `setInterval` or wall-clock animation.
- Add purposeful motion to every scene.
- Do not create a frozen final frame.
- Keep the course organisation-neutral.
- Use person-centred and respectful dementia-care visuals.

VOICE GATE

Read `VOICE.md`.

If the TTS provider, voice name or voice ID still says `TBD`, do not generate final narration and do not pretend the timings are final.

Instead:

1. report exactly which voice fields remain unresolved
2. build only a visual timing prototype if requested
3. wait for the production voice before final synchronisation

CHAPTER 1

- The script is approved.
- Use `chapters/chapter-01/SCRIPT.md` verbatim.
- Do not rewrite, shorten, expand or paraphrase it.
- Follow the scene plan in `chapters/chapter-01/STORYBOARD.md`.
- Generate final narration only after the voice gate is complete.
- Save it as `chapters/chapter-01/audio/narration.wav`.
- Transcribe it to `chapters/chapter-01/transcript.json`.
- Update storyboard and composition timings using the real transcript.
- Generate a separate caption file at `chapters/chapter-01/captions/chapter-01.vtt`.
- Build the chapter as a 1920 × 1080, 30 fps composition.
- Render to `chapters/chapter-01/renders/chapter-01.mp4`.

CHAPTER 1 VISUAL DIRECTION

- Opening: large “DEMENTIA CARE” editorial title.
- Audience: three distinct cards for residential aged care, home care, and healthcare/support staff.
- Purpose: reveal the concepts understand, recognise and respond.
- Learning outcomes: reveal five concise outcomes one at a time.
- Ending: transition to “NEXT: WHAT IS DEMENTIA?”
- Do not use a logo or presenter.

VALIDATION

Before calling Chapter 1 complete:

- run HyperFrames lint
- run HyperFrames check or validate as supported by the installed version
- inspect snapshots at the opening, each scene midpoint, each transition and the ending
- fix overflow, collisions, contrast failures, missing assets and runtime errors
- confirm all colours come from `DESIGN.md`
- confirm all fonts match `DESIGN.md`
- confirm the final audio duration matches the visual duration
- confirm captions match the final narration

CHAPTER 2

Only begin Chapter 2 after Chapter 1 passes validation.

Then read:

1. `chapters/chapter-02/SCRIPT.md`
2. `chapters/chapter-02/STORYBOARD.md`
3. `chapters/chapter-02/chapter.json`

The Chapter 2 script is marked draft.

Do not generate final narration until the user approves it.

When approved:

- use the approved script verbatim
- generate `chapters/chapter-02/audio/narration.wav`
- create `chapters/chapter-02/transcript.json`
- update timings using the actual transcript
- create `chapters/chapter-02/captions/chapter-02.vtt`
- render `chapters/chapter-02/renders/chapter-02.mp4`

Do not copy the old filmed implementation. Rebuild Chapter 2 fresh from `DESIGN.md`, `SCRIPT.md` and `STORYBOARD.md`.


COURSE STRUCTURE UPDATE

Read `CHAPTER_STRUCTURE.md` and `SOURCE_MAP.md`. Treat the ten-section structure in those files as final. The previous eight-chapter structure is obsolete.
