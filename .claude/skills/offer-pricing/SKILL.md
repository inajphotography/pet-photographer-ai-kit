---
name: offer-pricing
description: Step 3. Writes the photographer's real offer, full price list and how booking works into offer/offer.md, taken from their own price list or product guide, exact numbers only. Use when the person types /offer-pricing, says "step 3", "my pricing", "my price list", or "write down my offer".
---

**First, run step 0 of "How each step works" in the root `CLAUDE.md`: get to the business folder.** Then follow the rest of those steps.

# Step 3: your offer and pricing

This file is where every caption, email and reply gets its numbers from. So it has to be exact. **Never round, estimate or invent a price.** A wrong number here gets quoted to a real client.

This step writes down what they charge today. It doesn't advise on pricing.

## Read

- `business/context.md` (the short pricing version, how clients buy)
- `ideal-client/ideal-client.md` (what stops them booking, so the offer file can note how each objection is answered)

## Ask

> This step writes down your real offer and prices, so Claude never guesses a number.
>
> **Do you have a price list, product guide or pricing page? Paste it here, or drag the file in.** I'll pull every number from it and play it back to check.

If they paste or attach one, read all of it. Play the numbers back as a short list and ask "Have I got every number right?" before writing anything.

If they have nothing written down, ask one at a time:

1. "What's your session fee, and exactly what does it include?"
2. "What can clients buy after the session? Prints, wall art, albums, boxes, digital files. Smallest to largest, with prices."
3. "Any collections or packages? What's in each, and the price?"
4. "Any minimum spend, credit, or payment plans? What are the terms?"
5. "How and when do clients see prices: on your website, at the consult, at the ordering appointment?"
6. "Anything you don't sell, or won't do? For example, no digital-only, no discounts."

**Then, whether or not they had a price list, ask about booking:**

7. "Walk me through how someone books with you, from the moment they enquire to when they get their photos. What happens at each step, and what do you send them?" Prompt if needed: how fast you reply, whether there's a consult call, when they pay, planning and what to wear, the session, the ordering appointment, delivery, asking for a review. Play the steps back as a numbered list and confirm.

If they don't know an answer, write `To be confirmed`. Don't fill the gap.

## Write

**`offer/offer.md`** (under 150 lines):

```markdown
# Offer and pricing: {business name}

> Exact numbers from {"their price list, {month year}" / "their answers, {month year}"}. Never quote a price that isn't here.

## The session
- **Session fee:** {amount} {currency}
- **Includes:** {…}

## Products
| Product | Sizes or options | Price |
|---|---|---|
| {…} | {…} | {…} |

## Collections
{Each collection: what's in it, price. Or "None".}

## Minimums, credit and payment plans
{Terms, exactly as stated.}

## How clients see prices
{Website, consult, ordering appointment.}

## How booking works
{Numbered steps, enquiry to delivery, in their words. For each: what happens, and what they send. E.g. "1. Enquiry: I reply within a day and invite them to a free consult call."}

## What we don't sell
{…}

## Answering what stops them
{One line per objection from ideal-client.md, using only facts from this file. If an objection has no answer here yet, ask the photographer how they handle it. If they don't know: "To be confirmed".}

## To be confirmed
{Every gap, in one list.}
```

Then update two sections of `business/context.md` so they match this file: **Pricing, short version** (keep the line "Full price list: offer/offer.md") and **How clients buy**. These are the only edits to another file this step makes. From now on, `offer/offer.md` is the source of truth for prices, booking steps and how prices are shared.

Tick step 3 in `TODO.md` and add a line for each "To be confirmed".

## Finish

Use the finish format from the root `CLAUDE.md`. Under **What I saved**, write out `offer.md` in full.

**Your question:** "Check every number against your real price list. Anything wrong or missing?"
**Next step:** `/voice`
