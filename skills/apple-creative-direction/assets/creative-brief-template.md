# Creative Brief — {App Name}

## Soul
- **Emotional job:** {how people feel after 10 seconds}
- **Core noun:** {the one thing}
- **Truth:** {insight competitors ignore}
- **Concept (≤7 words):** {e.g. "Your money as a living garden"}
- **Self-imposed constraints:** {2–3}

## Personality
- **5 adjectives:** {…}
- **Is / Is not:** {calm, not sleepy} · {playful, not childish} · {precise, not cold}
- **References outside apps:** {poster, object, place, film, material}

## Typography
| Role | Face | Usage | Notes |
|---|---|---|---|
| Display | {SF Pro Expanded Black / custom} | Hero numbers, section titles | 48–96 pt; scales with Dynamic Type (`relativeTo: .largeTitle`) |
| UI & body | SF Pro | Everything else via text styles | Never below 11 pt |
| Accent | {SF Mono / Rounded / serif} | {data, timestamps, quotes} | |

## Color
| Role | Light | Dark | Increased contrast | Contrast checked |
|---|---|---|---|---|
| Accent (interactive only) | | | | vs background, white-on-accent |
| Content expressive 1 | | | | decorative / ≥3:1 for graphics |
| Content expressive 2 | | | | |
| Backgrounds | system or {custom} | | | |
| Contextual shift | {how palette changes with time/state/data} | | | |

## Material & texture (content layer)
{grain, paper, mesh gradient, photo treatment, 3D} — and how Liquid Glass controls read on top of it.

## Illustration & icons
- Illustration style: {…}; no text inside illustrations.
- Custom SF Symbols: {list}, matched to SF weight.
- App icon idea: {…} — dark / clear / tinted versions considered.

## Motion personality → handed to `apple-motion-and-delight`
- 3 adjectives: {…}
- Default spring: {e.g. `.smooth` / `.snappy` / `.spring(duration: 0.4, bounce: 0.15)`}
- Reduce Motion principle: {…}

## Sound & haptics
- Haptic signature: {event → pattern}
- Sound: {optional; respects silent mode}

## Signature moments
| # | Moment | Trigger | What happens | Frequency | Reduce Motion version |
|---|---|---|---|---|---|
| Hero | | | | once / rare / daily | |
| 2 | | | | | |
| 3 | | | | | |

## Guardrail check
| Creative choice | HIG risk | Compliant version | Status |
|---|---|---|---|

## Validation plan
- Prototype first: {hero screen + hero moment}
- Test: 5 users — first-impression words, can they complete the core task without help, AX5/VoiceOver pass.
