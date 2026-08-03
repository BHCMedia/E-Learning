# Course Voice Specification

## Status

Primary voice selected, pending technical verification and approved sample generation (see "Configuration" and "Voice verification" below).

Do not create final animation timings until the production voice has been generated and transcribed.

Do not generate any chapter's final narration until the two approved-sentence samples below have been generated, reviewed and approved by the course owner at the correct speed setting.

## Required voice profile

- Language: Australian English preferred
- Accent: natural Australian or neutral English
- Tone: warm, calm, respectful and professional
- Energy: reassuring and attentive
- Pace: approximately 125–135 words per minute
- Delivery: clear, measured and suitable for workplace learning
- Emotion: compassionate without sounding sad or dramatic
- Pronunciation: natural healthcare and aged-care terminology
- Consistency: use the same voice, speed and settings for every chapter

## Avoid

- promotional or advertising delivery
- exaggerated enthusiasm
- robotic rhythm
- overly slow speech
- dramatic pauses
- childish or patronising tone
- a different voice for each chapter

## Configuration to complete before production

- TTS provider: HeyGen
- Voice name: Anja - Lifelike (primary, approved)
- Voice ID: `79ebad5386094144a752fac25c1f5418`
- Speed setting: `TBD` — pending comparison of the 0.95 and 1.00 samples (see "Voice verification" below)
- Output format: WAV preferred for production
- Sample approved by: `TBD`
- Approval date: `TBD`

Note: credentials for the HeyGen account are held outside this repository (in the connected MCP integration's own configuration), never in this file or any other project file.

### Fallback voice — not approved for use

- Voice name: Energetic Pro
- Voice ID: `jcvycZu7rLWLPoq9AgzX`
- Status: identified as a fallback only. Do not use for any chapter narration unless the course owner explicitly approves changing the narrator. Do not substitute this voice silently if Anja - Lifelike becomes unavailable — stop and report instead.

### Rejected voices — do not use

- Roxie (Higgsfield preset voice, `f6448975-768e-4327-b932-1b7c973d58e9`) — a different, non-HeyGen media platform is connected via MCP in this project's tooling. It is not the approved provider and must not be used for Dementia Care narration.
- Any other Higgsfield preset voice, or any local/offline TTS engine (e.g. Kokoro) — none of these are HeyGen and none are approved.
- These were explicitly considered and rejected by the course owner. Do not reconsider them without new, explicit approval.

## Voice verification

Before any chapter's final narration is generated, two short samples of the primary voice must be produced and approved:

- Test sentence: "Welcome to Dementia Care. This training will help you understand dementia and provide respectful, person-centred support."
- Speeds tested: 0.95 and 1.00
- Output files: `voice-tests/anja-lifelike-speed-095.wav`, `voice-tests/anja-lifelike-speed-100.wav`
- Each sample is reported with: duration, source format, final WAV format, sample rate, channels, and pronunciation/quality notes.

## Production order

1. Approve the chapter script.
2. Generate final narration.
3. Save narration as `audio/narration.wav`.
4. Transcribe it to create `transcript.json`.
5. Update storyboard timings using the real timestamps.
6. Build and polish the HyperFrames compositions.
7. Generate the chapter's `.vtt` captions file at the path given by its `chapter.json` `caption_output` field.
8. Render the final MP4.
