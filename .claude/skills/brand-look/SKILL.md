---
name: brand-look
description: Step 5. Writes down the photographer's existing visual brand (colours with exact hex codes, fonts, logo, layout) into brand/brand.md, so every guide, proposal or page Claude makes looks like them. Use when the person types /brand-look, says "step 5", "brand colours", "brand guidelines", or "make it look like my brand".
---

**First, run step 0 of "How each step works" in the root `CLAUDE.md`: get to the business folder.** Then follow the rest of those steps.

# Step 5: your brand look

This step captures the brand they already have. It doesn't design a new one. **Never guess a colour or a font.** If they don't know a hex code, help them find it. If they can't, write `To be confirmed`.

## Read

- `business/context.md` (business name, spelling)
- `brand/voice.md`, if it exists (so this file can point to it instead of repeating it)

## Ask

> This step writes down your colours, fonts and logo, so anything Claude designs for you (client guides, price lists, proposals) looks like your brand.
>
> **Have you got a brand guide, or a Canva brand kit? Paste the details or drag in a screenshot.** A screenshot of your website or logo works too. If you've got none of those, we'll work through it together.

If they share a guide, screenshot or brand kit, read it and play back what you found. Then ask only what's missing, one at a time:

1. **Main colours.** "What are your main brand colours, with hex codes? They look like #A1B2C3." If they don't know: "Open Canva, go to Brand, and the codes are under each colour. Or open your logo file in Canva and click the colour."
2. **Other colours.** "Any other colours you use: backgrounds, accents, neutrals? Hex codes too."
3. **Fonts.** "What font do you use for headings, and what for body text? Names if you know them."
4. **Logo.** "Describe your logo: text, an icon, or both? What colours? Any versions (light on dark, dark on light)?" If they have the file, suggest saving it into the `brand/` folder as `logo.png`.
5. **Layout.** "Lots of white space or packed with detail? Photo-heavy or clean and minimal?"
6. **What to avoid.** "Anything that's never on brand? Colours, fonts or styles you hate?"

## Write

**`brand/brand.md`** (under 100 lines):

```markdown
# Brand look: {business name}

> Read this before designing anything: guides, price lists, proposals, pages.

## Colours
| Name | Hex | Use |
|---|---|---|
| {e.g. Sage} | {#XXXXXX} | {e.g. headings, buttons} |

## Fonts
- **Headings:** {font}
- **Body:** {font}
- If a font isn't available: {closest free Google Font, marked "substitute"}

## Logo
{Description. File: brand/logo.png, if saved. Versions.}

## Layout
{White space, photos, alignment.}

## Never
{Colours, fonts or styles that are off brand.}

## Voice
See `brand/voice.md`.

## To be confirmed
{Gaps.}
```

Only use hex codes they gave you or that you read from their files. A free substitute font is fine, but always mark it as a substitute.

Tick step 5 in `TODO.md`.

## Finish

Use the finish format from the root `CLAUDE.md`. Under **What I saved**, write out `brand.md` in full.

**Your question:** "Check the colours and fonts against your real brand. Anything wrong?"
**Next step:** `/content-week`
