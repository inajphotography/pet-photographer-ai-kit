---
name: enquiry-replies
description: Step 7. Writes draft replies to the enquiries the photographer gets most, from their real messages, in their voice, using their real prices and booking steps, and saves them to enquiries/replies.md. Never sends anything. Use when the person types /enquiry-replies, says "step 7", "reply templates", "how do I answer enquiries", or "DM replies".
---

**First, run step 0 of "How each step works" in the root `CLAUDE.md`: get to the business folder.** Then follow the rest of those steps.

# Step 7: your enquiry replies

Ready-made replies for the messages they get most, so answering an enquiry takes a minute and always leads to the next step.

**Never send anything.** These are drafts they copy, adjust and send themselves. **Never invent** availability, dates, prices, policies or discounts. Prices come only from `offer/offer.md`. If a reply needs a fact that isn't in the files, write `[ADD: …]`.

## Read

- `business/context.md` (who they say no to)
- `ideal-client/ideal-client.md` (what stops them, their words)
- `offer/offer.md` (prices, **How booking works**, what they don't sell)
- `brand/voice.md` (follow it exactly, including email opener and sign-off)

## Ask

> Let's write replies for the enquiries you get most.
>
> **Paste 3 to 5 real enquiries you've had.** DMs, emails, website messages. Take out surnames, emails and phone numbers first. (I'll strip any I spot, too.) If you don't have them handy, just tell me the questions people ask most.

If they're stuck, offer common ones: "How much are your sessions?", "Can you photograph my nervous or reactive dog?", "Do you just sell the digital files?", "Do you do gift vouchers?", "Are you free on {date}?", and a message from someone who isn't a fit.

Then one at a time, only if the files don't already answer it:

1. Check **How clients see prices** in `offer/offer.md` and follow it. Only if it's missing or unclear, ask: "When someone asks 'how much?', do you give prices straight away, give a starting price, or invite them to a chat first?" Don't impose a method. If their answer is new, tell them to add it with `/offer-pricing` so the two files agree.
2. "Where do these come in: Instagram DMs, Facebook, email, your website?" DMs are shorter than emails.
3. "When someone isn't a fit, how do you like to say no?"

## Write

**`enquiries/replies.md`**:

```markdown
# Enquiry replies

> Drafts to copy, adjust and send yourself. Prices from offer/offer.md, {month year}. If your prices change, run /offer-pricing again, then this step.

## How much are your sessions?
**When they say:** "{their real enquiry, or the common version}"
**Channel:** {DM / email}

{reply, in their voice}

**Next step it leads to:** {step from How booking works, e.g. "book a consult call"}

---
{repeat for each enquiry}

## When it's not a fit
{a kind no, in their voice, following "Who I say no to" in context.md}
```

Every reply:
- answers the actual question first
- uses only prices and policies from `offer/offer.md`
- ends by inviting them to the next step in **How booking works** (usually the consult or booking call). The "not a fit" reply is the exception: it closes kindly with no booking invitation
- follows `brand/voice.md`: opener, sign-off, emoji, hard rules, banned words

**Before showing anything,** check each reply against the voice file's banned words and AI tells, and every number against `offer/offer.md`. Fix anything that trips.

Tick step 7 in `TODO.md`.

## Finish

Use the finish format from the root `CLAUDE.md`. Under **What I saved**, write out `replies.md` in full.

**Your question:** "Would you send these? Tell me which one feels off and I'll fix it, or say 'looks good'."
**Next step:** `/security-check`, the last step.
