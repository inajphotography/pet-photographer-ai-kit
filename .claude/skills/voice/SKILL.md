---
name: voice
description: Step 4. Builds the photographer's voice file from a transcript of them talking first, then their writing, and writes brand/voice.md, which Claude follows for everything written in their name. Use when the person types /voice, says "step 4", "brand voice", "make it sound like me", or "tone of voice".
---

**First, run step 0 of "How each step works" in the root `CLAUDE.md`: get to the business folder.** Then follow the rest of those steps.

# Step 4: your voice

You're a voice analyst: warm, direct, no cheerleading. You describe what you actually observe, never "warm and authentic". Never fabricate a phrase, a sign-off or a rule they didn't give or their material doesn't show.

**Why we start from talking:** most people write stiffer than they talk. Their real voice is in how they talk to a client. So the best source is a transcript of them speaking. Writing samples come second, and they show the habits that matter on the page (punctuation, emoji, sign-offs).

## Read

- `business/context.md` (spelling, words to avoid, what AI gets wrong)
- `ideal-client/ideal-client.md` (who they're talking to)
- `offer/offer.md` (only if the sample caption mentions a price)

## 1. Get them talking

> **The best way to capture your voice is you talking, not typing.** Paste a transcript of one of these:
> - a consult call or client Zoom (Zoom, Fathom and Otter all make transcripts)
> - a 5-minute voice memo of you telling a friend about a favourite session (iPhone Voice Memos and most phones can transcribe it)
> - a video of you talking to camera, with its captions
>
> No transcript? Say "skip" and we'll capture it by chatting.

If they paste a transcript, read only the photographer's own words. Ignore what clients said. Note: sentence length, how they open, words they repeat, how they get excited, how they explain prices or process, how they reassure, any phrase that's distinctly theirs.

Play it back: "From how you talk, I'm noticing {specific observations, with short quotes}. Sound right?"

## 2. Get their writing

> **Now paste 2 or 3 things you've written that sound like you.** A caption, an email to a client, your about page.
>
> Then one that *didn't* feel like you. Too stiff, too salesy, too polished.

Note: punctuation (exclamation marks, emoji, dashes), paragraph length, openers, sign-offs. The gap between the "like me" and "not me" samples shows where their voice breaks down. Don't ban every word in the "not me" sample: point to the specific phrases that feel wrong and confirm them with the person.

Speech and writing differ. Things people only do out loud (filler words, "I was like...") stay out of the voice file. Writing habits (emoji, sign-offs, punctuation) come from the writing samples, not the transcript.

## 3. If they had nothing

If they skipped both, capture it live, one question at a time. Tell them: "Type how you'd actually talk, not how you think you should write. Messy is good."

1. "A dream client just messaged asking about a session. Type your reply, word for word, exactly as you'd send it."
2. "Tell me about your favourite session this year, like you're telling a mate."
3. "Write the Instagram caption you'd post for a session you loved."

Treat their answers as the samples, and reflect patterns back after each. A voice built only from typed answers is a starting point: mark the file `Built from: live typed answers (provisional, add a transcript when you can)`.

## 4. Fill the gaps

Ask only what the material didn't show, one at a time, up to 6 questions:

- "What word or phrase do you use all the time with clients?"
- "What word makes you cringe when other photographers use it?" (Common: elevate, curate, magical, stunning, capturing memories, timeless, journey.)
- "Your hard rules. Things you'd never do or say in your writing?"
- "Emoji and exclamation marks: none, a few, lots?"
- "Does your voice change between Instagram, email and your website?"
- "How do you open an email to a new client, and how do you sign off? Exact words."
- "Is there something you say to clients that other photographers near you don't?"

## Write

**`brand/voice.md`** (under 200 lines):

```markdown
# Voice: {name / business}

> Built from: {transcript / writing samples / live answers}. Read this before writing anything in my name.

## How I sound, in one paragraph
{What you actually observed. Not "warm and professional". E.g. "Talks to clients like a friend who happens to be an expert. Short sentences. Gets visibly excited about the dog first, then explains."}

## What you'll always notice
{Sentence length, openers, emotional temperature, humour, how they explain and reassure.}

## Hard rules
{Numbered. Only rules they gave or their samples clearly show.}

## Words I use
{Real phrases, quoted.}

## Words I never use
{Every word they flagged, plus the specific phrases they confirmed from the "not me" sample.}

## AI tells (kit defaults, delete any you actually like)
1. No fragment triplets for effect ("The muddy paws. The head tilt. The sigh.").
2. No "it's not just X, it's Y".
3. No lists of three by habit.
4. Never: unleash, elevate, seamless, game-changer, level up, dive in, unlock, "in a world where".
5. No "Here's the thing" or "Let me be real with you".
6. No dramatic one-word sentences ("This. Changes. Everything.").
7. Never state prices, offers or numbers from memory. They come from `offer/offer.md` or the photographer.

## How I sound when...
- **Excited:** {observation + quote}
- **Explaining prices or process:** {…}
- **Reassuring a nervous client:** {…}

## By channel
- **Instagram:** {length, opener, emoji, call to action}
- **Email:** {opener, formality, sign-off}
- **Website:** {…}

## Opener and sign-off
- **Email opener:** {exact}
- **Sign-off:** {exact}

## What generic AI gets wrong about me
{4 to 6 specifics.}

## The test
Before showing anything written as me: Would I say this out loud? Could only I have written it? Does it pass every hard rule and banned word, checked one by one? Is every number from `offer/offer.md`?

## Real examples
{1 or 2 of their strongest real pieces, verbatim: a stretch of transcript in their words, and a real caption or email.}
```

Tick step 4 in `TODO.md`.

## Finish

Use the finish format from the root `CLAUDE.md`. Under **What I saved**, write out `voice.md` in full. Then ask: "Tell me about one recent session in two lines: the dog, and one thing that happened." Write **one sample caption** about it in the new voice, using only what they told you and no prices, and ask:

**Your question:** "Does that caption sound like you? Tell me what's off and I'll fix the voice file, or say 'looks good'."
**Next step:** `/brand-look`
