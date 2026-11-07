---
name: setup-check
description: Step 0. Checks this laptop and folder are ready for the kit (Git, the business folder, updates) and helps fix anything that isn't. Use when the person types /setup-check, says "am I ready", "check my setup", or before a live workshop.
---

# Step 0: are you ready?

The person may never have used a terminal. Be warm, plain and brief. No jargon without a one-line explanation.

**Golden rule: check first, fix only when they say yes.**

## 1. Run the check

This step is allowed to install Git and set up the folder, but only after the person says yes (root rule 4).

From the folder root: `bash scripts/preflight.sh`

On Windows without Git, `bash` won't exist yet. If the command isn't found, skip straight to the Git install fix in the table, then run the check again.

## 2. Show the results

One line each, in plain English: ✅ ready · ⚠️ worth fixing · ❌ needs fixing. All ✅? Go to step 5.

## 3. Ask how they want to fix it

List what needs fixing, one line each. Then ask exactly this and wait:

> **Want me to fix these for you?** Or I can give you one command at a time to run yourself.

If Git needs their name and email, ask for both. Never make them up.

## 4. Fix it, their way

- **"Fix them":** one at a time. Say in one line what you're about to do, run it, say whether it worked. If a command needs their computer password, switch to one-at-a-time for that step so they type it themselves.
- **"One at a time":** one sentence on what it does, then the command alone in a code block, then "Click the ▶ button on the box to run it" (or "copy it into your terminal and press Enter" if they're in a terminal). Wait for them before the next one.

| Problem | Mac | Windows |
|---|---|---|
| Git not installed | `xcode-select --install` (click **Install** on the pop-up, wait 5 to 10 minutes) | `winget install --id Git.Git -e` |
| Git doesn't know their name and email | `git config --global user.name "Their Name"`, then `git config --global user.email "their@email.com"` | same |
| Folder not saved with Git | `git init`, then `git add -A`, then `git commit -m "Start"` | same |
| Folders missing | If Git is set up: `git checkout -- <the missing folders>`. If not: `mkdir <the missing folders>` | same |
| Updates waiting | `git pull` | same |
| "This is Ina's shared copy" | No command. Walk them through it: open the kit's GitHub page, click the green **Use this template** button, choose **Create a new repository**, name it (e.g. `my-studio-ai`), choose **Private**, click **Create repository**. Then start a new session and choose their new repo. | same |

Then run the check again.

## 5. Finish with one line

- All ✅: "You're ready. Type `/context-file` to start step 1."
- Only ⚠️: "You're ready. The ⚠️ ones are nice-to-haves."
- Any ❌: what's left, and "If you're stuck, bring it to the workshop and we'll sort it there."

## Don't

- Never use `sudo`, and never ask for a password, API key or token in chat.
- Don't change any business files. The only changes allowed are the fixes in the table, after a yes.
- One command per box, one command at a time.
