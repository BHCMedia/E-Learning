# Healthcare eLearning Video Design System

## Overview

Use the **HyperFrames Coral design language** as the visual foundation, while replacing its original colour palette.

Preserve:

- the editorial layout logic
- Bebas Neue display typography
- Inter reading typography
- rounded panels and cards
- generous spacing
- strong visual hierarchy
- geometric accents
- smooth, restrained motion
- varied scene compositions rather than repetitive slide layouts

The result must feel warm, calm, modern, human, professional and suitable for healthcare, aged care and home care education.

This design system is organisation-neutral.

## Global production rules

- Do not display any organisation, provider, sponsor or product logo.
- Do not use an avatar or visible presenter.
- Do not use filmed footage, stock video or previously recorded presenter footage.
- Do not reuse the old Chapter 2 indigo/cyan visual system.
- Do not use `chapter2-narrator.mp4` or any other filmed presenter asset.
- Use newly created HTML/CSS motion graphics, inline SVG, diagrams, icons and synthetic illustrations.
- AI-generated still imagery may be used only where it meaningfully supports learning and visually matches the course.
- Keep all required assets local to the project.
- Do not create static slideshow scenes.
- Every scene must include purposeful entrance, progression or gentle ambient motion.
- Visuals must support the narration rather than repeat it as paragraphs.
- Depict people living with dementia respectfully and without infantilising or sensationalising them.
- Keep all content reusable across different organisations.

## Format

- Canvas: **1920 × 1080**
- Aspect ratio: **16:9**
- Frame rate: **30 fps**
- Minimum safe margin: **96 px**
- Keep essential content clear of the bottom player-control area.
- Design for clear viewing on desktop, tablet and mobile.
- Use MP4 as the primary final delivery format.
- Prepare WebVTT captions as a separate file when supported by the learning system.

## Colour palette

### Primary colours

| Role | Colour | Hex |
|---|---|---|
| Primary navy | Deep healthcare blue | `#163A5F` |
| Accent teal | Calm supportive highlight | `#2A9D8F` |
| White | Main light surface | `#FFFFFF` |
| Light grey | Secondary surface | `#F4F6F8` |
| Dark text | Main copy | `#1F2A37` |

### Supporting colours

| Role | Colour | Hex |
|---|---|---|
| Soft navy tint | Secondary panel | `#E8EEF4` |
| Soft teal tint | Highlight panel | `#E5F4F1` |
| Mid grey | Secondary copy | `#667085` |
| Border grey | Dividers and outlines | `#D7DEE5` |
| Success | Correct or complete | `#2E7D65` |
| Warning | Important caution only | `#B7791F` |
| Error | Safety alert only | `#B54747` |

### Colour rules

- Use white or light grey for most backgrounds.
- Use navy for major title frames, chapter dividers and primary headings.
- Use teal for key words, icons, ticks, connectors and progress indicators.
- Use dark text on light surfaces.
- Use white text only on navy or another sufficiently dark surface.
- Never use colour alone to communicate meaning.
- Do not invent additional colours unless the user approves them.

## Typography

Keep the font pairing used by the Coral design.

### Display font: Bebas Neue

Use for:

- course titles
- chapter titles
- major statements
- large key words
- chapter numbers

Rules:

- uppercase
- short phrases only
- confident but not aggressive
- never use for paragraphs

### Reading font: Inter

Use for:

- body copy
- labels
- learning outcomes
- captions
- scenario instructions
- supporting explanations

### Suggested 1920 × 1080 type scale

| Element | Font | Size |
|---|---|---|
| Main title | Bebas Neue | 110–150 px |
| Chapter title | Bebas Neue | 88–120 px |
| Key statement | Bebas Neue | 72–96 px |
| Section heading | Inter SemiBold | 46–58 px |
| Card heading | Inter SemiBold | 36–44 px |
| Body copy | Inter Regular | 30–38 px |
| Captions | Inter Medium | 30–36 px |
| Small label | Inter Medium | 24–28 px |

### Typography rules

- Keep on-screen text concise.
- Prefer one clear idea per scene.
- Do not display the full voice-over as body text.
- Keep most text blocks to three short lines or fewer.
- Use sentence case for Inter headings and copy.
- Use Bebas Neue only for short display text.
- If the fonts are unavailable, stop and report the missing font rather than silently changing the design.

## Visual language

### Preferred visual methods

- inline SVG illustrations
- abstract but respectful human figures
- simple environmental illustrations
- animated diagrams
- clean line icons
- symbolic memory, communication and behaviour visuals
- geometric panels and typographic compositions
- subtle texture used sparingly
- synthetic still illustrations with a consistent art direction

### Avoid

- stock footage
- filmed presenter footage
- photorealistic distress or aggression
- exaggerated facial confusion
- hospital imagery unless the content requires it
- childish cartoons
- generic emoji
- decorative visuals unrelated to the learning point
- inconsistent AI image styles
- rapid montages

## Layout system

Use at least three distinct layout postures within each chapter.

### 1. Editorial title composition

- large Bebas Neue heading
- asymmetrical placement
- offset geometric or illustrated visual
- teal line, dot or block accent
- generous negative space

### 2. Split learning composition

- explanation on one side
- illustration, diagram or icon group on the other
- balanced visual weight
- no dense paragraph blocks

### 3. Rounded information cards

- white cards on a light-grey surface
- 24–32 px corner radius
- 1–2 px border using `#D7DEE5`
- 36–52 px internal padding
- teal icon or marker
- minimal or no shadow

### 4. Full-screen key statement

- navy background
- short white Bebas Neue statement
- small teal accent
- use only for major learning points

### 5. Checklist or learning outcomes

- items enter one at a time
- teal tick
- navy heading
- dark copy
- clear vertical rhythm

### 6. Process or framework

- top-to-bottom or left-to-right path
- clearly labelled steps
- teal connectors
- progressive build tied to narration

### 7. Scenario composition

- synthetic illustrated setting
- concise situation statement
- clear observation or response panel
- calm, non-dramatic treatment

## Iconography

- Use one consistent icon family.
- Use simple line or solid icons with consistent stroke weight.
- Use navy for default icons and teal for active or highlighted states.
- Place icons in soft tinted circles or rounded squares where helpful.
- Icons must reinforce meaning rather than replace an explanation.

Suggested subjects:

- memory
- cognition
- communication
- behaviour
- environment
- routine
- reassurance
- safety
- observation
- support
- person-centred care

## Motion language

Motion must be calm, deliberate, smooth, predictable and easy to follow.

### Preferred motion

- mask reveal
- soft fade with vertical rise
- gentle horizontal slide
- progressive line draw
- controlled stagger
- sequential checklist reveal
- subtle scale drift from 100% to 103–104%
- step-by-step diagram build
- progressive key-word emphasis
- low-amplitude ambient movement during longer narration

### Timing guidance

- standard entrance: 0.5–0.8 seconds
- major title entrance: 0.8–1.2 seconds
- scene transition: 0.6–1.0 seconds
- list-item stagger: 0.25–0.45 seconds
- allow sufficient dwell time after each important point
- synchronise visual reveals to actual narration timestamps
- finish each scene as narration moves to the next idea

### Avoid

- bouncing
- spinning
- glitch effects
- flashing
- rapid zooms
- excessive parallax
- fast kinetic typography
- constant unrelated movement
- frozen final frames
- wall-clock JavaScript animation

## Transitions

Use a small repeatable transition set:

1. clean crossfade
2. navy or teal panel wipe
3. masked visual reveal
4. soft vertical slide
5. chapter-number transition

Use no more than two primary transition styles in one chapter.

## Captions

- Provide captions for all narration.
- Preferred delivery: separate `.vtt` file.
- Burn captions into the MP4 only when the learning system cannot load caption files.
- Font: Inter Medium.
- Size: 30–36 px.
- Maximum: two lines.
- Place captions inside the lower safe area.
- Use a dark navy panel with white text or a white panel with dark text.
- Keep captions clear of essential visual content.
- Synchronise captions to final narration audio.
- Use key-word colour highlighting sparingly.

## Audio direction

- Narration is the primary audio.
- Voice must be warm, calm, clear and professional.
- Avoid an advertising or highly energetic delivery.
- Background music is optional and must remain very low.
- Music is most suitable during openings, chapter transitions and closings.
- Reduce or remove music during detailed learning explanations.
- Use subtle sound effects only when they clarify a transition or completion.
- Avoid notification-style sounds.

## Accessibility and learning rules

- Maintain strong text contrast.
- Do not rely on colour alone.
- Give learners enough time to read every item.
- Use plain language on screen.
- Keep one primary learning idea per scene.
- Pair narration with meaningful visuals.
- Avoid visual overload.
- Do not use flashing content.
- Keep essential body text at least 30 px.
- Use person-centred language.
- Do not portray behaviours as deliberate personal attacks.
- Avoid language, visuals or sound that infantilise older people.

## Standard scene templates

### Course opening

- navy, white or light-grey base
- large Bebas Neue title
- short Inter subtitle
- teal accent
- synthetic healthcare illustration or abstract visual

### Chapter opening

- chapter number
- chapter title
- one-line purpose
- restrained panel-wipe or mask transition

### Explanation scene

- short heading
- one to three key points
- one supporting illustration or diagram
- key term highlighted in teal

### Learning outcomes

- outcomes appear sequentially
- teal tick markers
- clean vertical list or varied rounded cards

### Key reminder

- navy background
- one short white statement
- teal accent
- longer dwell time

### Scenario

- synthetic illustrated situation
- concise narration
- visual focus on the behaviour, environment or communication
- guidance appears after the situation is established

### Chapter recap

- three to five short takeaways
- numbered or ticked structure
- teal completion marker

### Closing

- short transition statement
- next chapter title
- subtle ambient movement
- no logo

## Final creative rule

The course must look like the **Coral HyperFrames design adapted for professional healthcare learning**:

- preserve the Coral layout logic
- preserve Bebas Neue and Inter
- preserve editorial hierarchy
- preserve rounded panels and confident spacing
- replace coral with navy and teal
- keep every scene calm, respectful and highly readable
- use synthetic motion graphics rather than filmed footage
