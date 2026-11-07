---
name: content-week
description: Step 6. Writes the photographer's first week of social posts from their real sessions, in their voice, using their ideal client, offer and booking steps, and saves them to content/week-1.md. Drafts only, nothing gets posted. Use when the person types /content-week, says "step 6", "write my posts", "content for this week", or "captions".
---

**First, run step 0 of "How each step works" in the root `CLAUDE.md`: get to the business folder.** Then follow the rest of those steps.

# Step 6: your first week of content

This is where the folder pays off. Every file so far feeds these posts, so nobody re-explains anything.

**Never invent a session, a dog, a client story or a result.** Every post is built from something real they tell you. If you need a detail you don't have, ask, or leave `[ADD: …]` in the draft.

## Read

- `business/context.md`
- `ideal-client/ideal-client.md` (why now, what stops them, their words)
- `offer/offer.md` (prices, how booking works)
- `brand/voice.md` (follow it exactly, including the hard rules and banned words)

If `brand/voice.md` is missing, say: "You haven't done step 4 yet, so these won't sound fully like you. Want to do `/voice` first?" Carry on only if they say so.

## Ask

> Let's write your first week of posts, from real sessions.
>
> **Tell me about 2 or 3 recent sessions you loved.** For each: the dog's name and breed, what happened, one moment that made you smile or something that went wrong and worked out, and whether the client's happy for you to share the photos.

Use only the details they give you. Leave out client surnames and contact details (root rule 7).

Then, one at a time, only if you need them:

1. "Where are you posting: Instagram, Facebook, both?"
2. "How many posts this week? Most people manage 3 to 5."
3. "When someone's ready to book from a post, what do you want them to do? Comment a word, DM you, click a link?" Check this against the first step of **How booking works** in `offer/offer.md`. The action should lead into that step.

## Plan the week

Mix three kinds of post, so the week isn't all selling:

- **Educate:** answer something your ideal client worries about (from "What stops them" in `ideal-client.md`). For example, "my dog won't sit still".
- **Entertain:** a real session story with the mess left in.
- **Inspire:** what the photos mean to the client, using the "why now" and "hoping for" sections. Use real client words only if they're in `ideal-client.md`.

At least one post should answer a real objection. At least one should show what happens at a session or ordering appointment, from **How booking works**.

## Write

**`content/week-1.md`**:

```markdown
# Week 1 posts: {dates if given}

> Drafts only. Check every fact, then post them yourself.

## Post 1: {Educate / Entertain / Inspire}. {one-line idea}
**For:** {which worry, objection or why-now it speaks to}
**Photo:** {which session photo to use, from what they told you}

{caption, in their voice}

{call to action, leading into step 1 of How booking works}

---
{repeat for each post}

## Before you post
- [ ] Every dog name, detail and price is right
- [ ] The client's happy for you to share the photos
- [ ] Any `[ADD: …]` is filled in
```

Write each caption to follow `brand/voice.md`: its length by channel, its openers, emoji rules and hard rules. Every price comes from `offer/offer.md`, never from memory.

**Before showing anything,** check every caption against the voice file's banned words and AI tells, one by one, and fix anything that trips.

Tick step 6 in `TODO.md`, and add: "Post week 1 → `content/week-1.md`".

## Finish

Use the finish format from the root `CLAUDE.md`. Under **What I saved**, write out `week-1.md` in full.

Add one line: "Want a second opinion? Open `ideal-client/persona-prompt.md`, paste it into a new chat, then paste a caption. Your ideal client will tell you what lands and what doesn't."

**Your question:** "Which of these sound most like you? Tell me what to change, or say 'looks good'."
**Next step:** `/enquiry-replies`
