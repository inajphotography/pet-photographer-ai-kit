# For Codex and other AI coding tools

This folder works the same way in Codex as in Claude Code.

1. Read `CLAUDE.md` in this folder and follow it exactly. It holds the rules and the step format.
2. Then read `business/context.md`, the photographer's context file, if it exists. Codex doesn't load the `@business/context.md` line in `CLAUDE.md` automatically, so read it yourself at the start of every session. If it doesn't exist, the setup and security steps still work. For anything else, suggest the context file step first.
3. Codex doesn't have slash commands for these steps. When the person types a step name or number (`/context-file`, "step 1", "run the context file step"), open the matching file below and follow it.

| Step | Say | File |
|---|---|---|
| 0 | setup check | `.claude/skills/setup-check/SKILL.md` |
| 1 | context file | `.claude/skills/context-file/SKILL.md` |
| 2 | ideal client | `.claude/skills/ideal-client/SKILL.md` |
| 3 | offer and pricing | `.claude/skills/offer-pricing/SKILL.md` |
| 4 | voice | `.claude/skills/voice/SKILL.md` |
| 5 | brand look | `.claude/skills/brand-look/SKILL.md` |
| 6 | content week | `.claude/skills/content-week/SKILL.md` |
| 7 | enquiry replies | `.claude/skills/enquiry-replies/SKILL.md` |
| 8 | security check | `.claude/skills/security-check/SKILL.md` |
