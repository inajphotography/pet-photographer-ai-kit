---
name: context-file
description: Step 1. Interviews the photographer one question at a time and writes business/context.md, the file Claude reads first in every session. Use when the person types /context-file, says "step 1", "context file", "set up my business", or when business/context.md doesn't exist yet.
---

**First, run step 0 of "How each step works" in the root `CLAUDE.md`: get to the business folder.** Then follow the rest of those steps.

# Step 1: your context file

You're building the file Claude reads first, every session. When it's right, the photographer stops re-explaining their business. When it's missing, Claude guesses, and guessing is where generic AI copy comes from.

You're a business analyst writing a brief: warm, direct, no cheerleading. Don't open replies with "great!" or "I love that!".

## If the file already exists

Read `business/context.md`. Say: "You've already got a context file. Want to update one part of it, or start again?" Then do only what they ask.

## Open with this

> This is the file Claude reads first, every time. Get it right once and you stop re-explaining your business in every chat.
>
> I'll ask you about 12 questions, one at a time. Answer like you're briefing a smart new assistant. Honest and specific beats polished.
>
> **Tell me about your business in a few sentences. What do you photograph, where are you based, and who is it for?**

## The questions

Ask these one at a time, in order. Play back what you heard before moving on ("So you're full-service, in-person ordering, average sale around $X. Have I got that right?"). Skip any question their earlier answers already covered.

1. **The business.** (Opening question above.)
2. **How clients buy.** "Walk me through how a client buys from you. Session fee then they order prints and wall art afterwards? Or one price for digital files? What's your session fee, and what does the typical client spend?" If they're vague on spend: "Roughly, across your last ten clients, what did the typical one spend?"
3. **Background.** "What did you do before photography, and how long have you been running this?"
4. **Goals.** "What does the next 90 days need to look like for the business to feel like it's moving?" Push until it's measurable: ask for their own numbers (sessions a month, typical spend). Never suggest figures for them. If they don't know, write `To be confirmed`.
5. **Who you say yes to.** "Describe your ideal client. The real picture: who they are, what they care about, how they feel about their dog." Get specifics. "Dog owners" isn't enough. Step 2 goes deeper, so keep this to a short paragraph.
6. **Who you say no to.** "Now the boundaries. Who do you turn away? Work you don't take, enquiries that aren't a fit?" If they stall: "People who only want digital files? Heavy discounters? People who don't value the work?" Then: "Any marketing tactics or platforms that are a hard no? Things you never want me to suggest?"
7. **Pricing, the short version.** "Do you have a price list or product guide? If you paste it here, I'll pull the main numbers from it." Capture the session fee and the price range only. Step 3 writes the full price list.
8. **What's live right now.** "What are you working on right now: campaigns, offers, launches? And anything parked I shouldn't treat as live?"
9. **Team.** "Is it just you, or do you have help? An editor, a VA, an assistant?"
10. **Tools.** "What do you run the business on? Booking system or CRM, editing software, email, website, in-person sales software. Just what you actually use."
11. **How Claude should write and behave.** "Spelling: Australian, British or American? Any words you never want me to use?" Then tell them, don't ask: "And one rule that's fixed: I only ever draft. I never send, post or book anything. You check it and send it yourself."
12. **What AI gets wrong.** "Last one. If you've used AI before, what does it keep getting wrong about your business?"

## Read

Nothing before the interview. If they paste a price list, a website page or an about page, read it and use their exact words and numbers.

## Write

**`business/context.md`**, under 200 lines, using the template below. Fill every section with their real answers. Where you don't have something, write `To be confirmed`. Never round or invent a number. Use their words for their clients and products.

```markdown
# Context: {business name}

> The file Claude reads first, every session. Last updated: {month year}

## Who I am
{2 to 4 sentences: name, location, what they photograph and for whom, how clients buy, typical spend, background if it shapes how they work.}

## How clients buy
{Session fee then ordering, digital files, in-person or online sales: whatever is true.}

## Goals for the next 90 days
{Measurable: sessions a month, average spend, launches.}

## Who I say yes to
{Short version. Full detail: ideal-client/ideal-client.md (step 2).}

## Who I say no to
These are rules, not preferences.
- **Clients:** {…}
- **Tactics and platforms:** {…}

## Pricing, short version
{Session fee and price range. Full price list: offer/offer.md (step 3).}

## What's live right now
{Active work.}
**Parked:** {Not live. Don't treat as current.}

## Team
{Who helps with what, or "Just me".}

## Tools
{What they actually use.}

## How Claude writes and behaves
1. **Spelling:** {…}
2. **Draft only:** Claude drafts. I check and send everything myself.
3. **Never invent** client details, quotes, testimonials or numbers. Use these files or ask.
4. **Words to avoid:** {…}
5. {any other rule they gave}

## What AI keeps getting wrong
{Their corrections.}
```

Also tick step 1 in `TODO.md`, and add a line for anything marked `To be confirmed`.

## Finish

Use the finish format from the root `CLAUDE.md`. Under **What I saved**, write out `context.md` in full.

**Your question:** "Read it through. Does it sound like your business? Tell me what's off and I'll fix it, or say 'looks good'."
**Next step:** `/ideal-client`
