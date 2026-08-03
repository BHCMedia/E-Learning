---
workflow: faceless-explainer
flow: automation
storyboard: no
message: "Explain what dementia is, its 5 real named types, and a care-approach message — as a faceless, editorial motion-graphics video."
destination: "Internal training library (inferred 16:9, matching the sibling talking-head-recut project in this repo)"
aspect: "16:9 (1920x1080)"
audience: "Aged care / home care staff (dementia care training)"
length: "~151s (fixed — matches the reused voiceover audio, unedited)"
angle: "concept explainer"
---

## Intent

A second, separate video from the same audio as `videos/Chapter 2_ What is Dementia/` (the talking-head-recut version) — this one is **faceless**: no footage at all, every visual invented (typography, line-art icons, simple diagrams). Full 18-slide creative brief supplied verbatim by the user (Director@bestofhomecare.com.au):

1. Slide 1 (0.00–7.44s): VO "Before we dive into the details, it's vital to understand one core fact." Bold title card — "Dementia is not a single condition." Large centred text, fade/scale-in. (The title itself is timed to when she actually speaks that line, ~5.0s in, so the same visual spans both spoken sentences.)
2. Slide 2 (7.44–10.36s): VO "It's much broader than most people realize." The word "condition" splits/multiplies into several smaller overlapping shapes.
3. Slide 3 (10.36–23.34s): VO "Dementia is an umbrella term used to describe a range of symptoms associated with a decline in memory or other thinking skills, severe enough to reduce a person's ability to perform everyday activities." Umbrella icon animates in at centre, small icons (brain, clock, checklist) slide in underneath.
4. Slide 4 (23.34–30.02s): VO "It's not just a part of getting older, it's caused by progressive changes and damage to brain cells." Split visual — left: calendar/age icon with strike-through; right: brain icon with animated damage marks.
5. Slide 5 (30.02–37.54s): VO "Just as the word 'flower' describes many different species, dementia is the category for several different brain diseases." Flower icon animates in, morphs into the brain icon.
6. Slide 6 (37.54–46.08s): VO "While they all affect memory, cognitive abilities and behavior, each condition has its own unique characteristics and progression." Three icons (brain, thought bubble, figure/behaviour) in a row, each gets a subtly different tint/pattern.
7. Slide 7 (46.08–52.16s): VO "Alzheimer's disease is the most common form, accounting for 60 to 80% of all cases." Full-screen — "Alzheimer's Disease" title, "60–80%" stat counts/scales in.
8. Slide 8 (52.16–64.58s): VO "It primarily targets the parts of the brain that control thought, memory and language. This is why people often first notice a struggle with remembering recent events, names or conversations." Brain icon, three regions (thought/memory/language) highlighted sequentially with labels.
9. Slide 9 (64.58–71.72s): VO "Vascular dementia is the second most common type, often occurring after a stroke or due to blocked blood vessels." Full-screen — "Vascular Dementia" title, vessel/pulse-line icon with a blockage point animating in.
10. Slide 10 (71.72–83.42s): VO "Then there's Lewy body dementia, which involves protein deposits in the brain and can lead to fluctuations in alertness, and even physical movement challenges similar to Parkinson's." Full-screen — "Lewy Body Dementia" title, brain icon with dot/particle deposits animating on, subtle pulse.
11. Slide 11 (83.42–91.44s): VO "Frontotemporal dementia often appears at a younger age and tends to affect personality and language more than memory." Full-screen — "Frontotemporal Dementia" title, brain icon front region highlighted, small younger-figure silhouette.
12. Slide 12 (91.44–103.00s): VO "And surprisingly, many people have mixed dementia, where symptoms of more than one type are present at the same time, making their journey even more complex." Full-screen — "Mixed Dementia" title, prior type-icons (Slides 7–11) return and overlap/crossfade at centre.
13. Slide 13 (103.00–111.48s): VO "Perhaps the most important takeaway for you as a caregiver is this: no two people will experience dementia in exactly the same way." Bold standalone statement card, no icon, held slightly longer, larger type.
14. Slide 14 (111.48–121.44s): VO "The term refers to a collection of progressive diseases that present differently in every single individual, based on their unique life and brain." Row of small silhouette/figure icons, each a subtly different pattern.
15. Slide 15 (121.44–126.26s): VO "Providing care requires compassion, patience, and a tailored approach." Three icons in sequence — heart / clock-hourglass / puzzle-slider.
16. Slide 16 (126.26–138.32s): VO "By recognizing that each client's experience is unique, you can move beyond a standard checklist and offer truly person-centered support that addresses their specific triggers and needs." Checklist icon strikes through, transitions into a single person silhouette with a highlighted centre point.
17. Slide 17 (138.32–145.42s): VO "To wrap up, remember that dementia is an umbrella term for many diseases — Alzheimer's is only one of them." Umbrella icon returns (from Slide 3), small icons for all 5 types slide back underneath briefly — visual recap.
18. Slide 18 (145.42–151.00s): VO "And every single person you care for will have a unique journey that requires your unique attention." Closing title card — "Every journey is unique. So is your care." Held, then fades to black.

**Cut timing:** every slide boundary above is the real word-level timestamp (from `transcript.json`, already generated for the sibling project) where that slide's own VO line actually begins — not hardcoded. Slide N's visual holds from its own line's start to the next slide's line's start, so any words spoken between two labelled lines stay under the earlier slide (this is why Slide 1 runs through 7.44s, covering both its lead-in sentence and the "Dementia is not a single condition." line shown as its title).

**Audio:** the same `audio.mp3` reused verbatim from `videos/Chapter 2_ What is Dementia/` — continuous, unedited, voice only, no music/SFX, no subtitles. Only the visual layer cuts.

**Style:** clean minimal line-art icons only, no photos, no filled illustrations. One consistent icon family (brain/head-outline variations, reusing the shared `#icon-brain-base` symbol and per-type accent marks already designed for the sibling project). Calm smooth motion only — fades, slides, scale-ins — no bounce, no elastic easing, no fast cuts. Same brand palette as the sibling video: Deep Indigo `#1A1A4D` background, Electric Cyan `#00E5FF` accents, Crisp White `#F5F7FF` text.

**Recurring elements:** the umbrella icon (Slide 3) and brain icon variations must visually connect back to earlier slides when reused (especially the Slide 17 recap) to reinforce the umbrella-term throughline.

## Customizations

- Route: `/faceless-explainer` matched (topic explainer, invented visuals, no capture) but this build bypasses that skill's own TTS/subagent-dispatch pipeline (`scripts/audio.mjs`, `frame-packets.mjs` + per-frame worker dispatch) because the narration is real fixed audio, not to be generated, and the user already specified the exact visual/animation per slide — hand-authoring the composition directly (same proven approach as the sibling talking-head-recut project) is more direct and keeps the icon family perfectly consistent.
- Destination/aspect inferred as 16:9 1920x1080 (not asked) — matches the sibling project and this repo's other training video, no signal suggesting otherwise.
- `angle` inferred as "concept explainer" from the fully-specified brief.
- Run-shape: `flow: automation, storyboard: no` — user gave an exhaustive 18-slide brief plus explicit end-to-end pipeline instructions (build → check → render → commit → push), matching how the sibling project was run.

## Notes

- This project is intentionally separate from `videos/Chapter 2_ What is Dementia/` — that composition is untouched.
- Push to `claude/hyperframes-setup-klob5x` will be confirmed with the user before executing, consistent with how the sibling project's push was handled.
