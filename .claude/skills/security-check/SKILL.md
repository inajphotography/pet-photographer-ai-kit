---
name: security-check
description: Step 8, and before sharing or uploading this folder anywhere. Checks for leaked passwords and API keys, and for private files that shouldn't be shared. Only reports, never changes anything. Use when the person types /security-check or asks whether the folder is safe to share or upload.
---

**First, run step 0 of "How each step works" in the root `CLAUDE.md`: get to the business folder.** This step writes no files.

# Step 8: keep it safe

## Ask

> **Have you added any passwords or API keys to this folder?** Yes, no, or "what's an API key?"

If they ask, explain in one line: a long password that lets software use a paid account, so anyone who has it can run up your bill. If they say yes, confirm keys are only in `.env`, without opening it.

## Check

Run from the folder root. **Never open or search `.env` or `.env.*`**, and never print a key: show only the file name. This check looks for recognised patterns. It can't guarantee nothing is there, so never say "100% safe".

1. **Keys in files Git would save** (skips `.env` files and this skill):
   ```bash
   git ls-files -co --exclude-standard | grep -vE '(^|/)\.env(\..*)?$|^\.claude/skills/security-check/' | while IFS= read -r f; do [ -f "$f" ] && grep -IlE 'sk-[A-Za-z0-9_-]{20,}|sk_(live|test)_[A-Za-z0-9]{16,}|(AKIA|ASIA)[0-9A-Z]{16}|AIza[0-9A-Za-z_-]{35}|gh[pousr]_[A-Za-z0-9]{36}|github_pat_[A-Za-z0-9_]{20,}|xox[baprs]-[A-Za-z0-9-]{10,}|re_[A-Za-z0-9_]{20,}|-----BEGIN [A-Z ]*PRIVATE KEY-----|(password|passwd|api_key|apikey|secret)[[:space:]]*[:=][[:space:]]*[^[:space:]]{6,}' "$f"; done
   ```
2. **`.env` stays private:** `git check-ignore .env` should print `.env`, and `git ls-files | grep -E '(^|/)\.env'` should print nothing (or only `.env.example`).
3. **Private files that would go along if the folder is zipped or copied:** `git ls-files -o -i --exclude-standard` lists ignored files. Report their names only. Anything that looks like a key, credential or client data file should be moved out before sharing the folder.
4. **Client privacy:** candidate contact details, case-insensitive, skipping the kit's own examples:
   ```bash
   grep -rIliE '[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}|(\+61|0)[ -]?4[0-9 -]{8,}|\+[0-9][0-9 -]{9,}' --exclude-dir=.git --exclude='.env*' --exclude-dir=.claude . | xargs grep -LiE 'you@example\.com|their@email\.com' 2>/dev/null
   ```
   Report file names only, as "worth a look", not as proven leaks.

If it isn't a Git folder, say "This folder isn't saved with Git, so I checked every file instead", run the same patterns with `grep -rIlE --exclude='.env*' --exclude-dir=.claude`, and check `.gitignore` lists `.env`. If any command errors, say that part couldn't be checked. An error is never a clean result.

## Report

Short, plain English:

- **Passwords and keys:** ✅ "no recognised keys found" or 🔴 with file names. If a real key leaked: **cancel (revoke) the old key at the provider**, make a new one, and put the new one only in `.env`. Deleting the file doesn't un-leak it, and if it was ever uploaded to GitHub it's still in the history.
- **Private files:** ✅ or 🔴, with the fix.
- **Files that would go along in a zip:** list, or "none".
- **Client details:** ✅ or 🟡 "worth a look" with file names, and "move contact details back into your booking system".
- **Good habits:** keys only in `.env`. Run `/security-check` before sharing or uploading this folder. Keep client contact details in your CRM, not here.

## Finish

**Your question:** "Want me to explain anything here?"

If this was their first time through all the steps, add: "That's every step done. Your business now lives in this folder. Any time you ask me for a caption, a reply or a price list, I'll use it. When something changes, run that step again."
