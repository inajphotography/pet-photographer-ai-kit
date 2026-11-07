#!/usr/bin/env bash
# Setup check for the pet photographer AI kit.
# Adapted from Freya Stockman's DISCOTECH preflight (github.com/creativefreya/DISCOTECH).
# Works on Mac, Linux and Windows (Git Bash). Prints PASS / WARN / FAIL per check. Exits 1 if anything FAILs.

fails=0
warns=0

pass() { echo "PASS  $1"; }
warn() { echo "WARN  $1"; echo "      fix: $2"; warns=$((warns + 1)); }
fail() { echo "FAIL  $1"; echo "      fix: $2"; fails=$((fails + 1)); }

echo "Pet photographer AI kit: setup check"
echo "------------------------------------"

# 1. Git installed
if command -v git >/dev/null 2>&1; then
  pass "Git installed"
else
  fail "Git is not installed" "Mac: run 'xcode-select --install'. Windows: install from https://git-scm.com/download/win"
fi

# 2. Git knows who you are (needed to save your work)
if command -v git >/dev/null 2>&1; then
  if [ -n "$(git config user.name)" ] && [ -n "$(git config user.email)" ]; then
    pass "Git knows who you are ($(git config user.name))"
  else
    warn "Git doesn't know your name and email yet" "git config --global user.name \"Your Name\" then git config --global user.email \"you@example.com\""
  fi
fi

# 3. Inside the kit folder
repo_root=$(git rev-parse --show-toplevel 2>/dev/null)
if [ -n "$repo_root" ] && [ -f "$repo_root/CLAUDE.md" ] && [ -f "$repo_root/scripts/preflight.sh" ]; then
  pass "You're inside your business folder"
  cd "$repo_root" || exit 1
elif [ -f "./CLAUDE.md" ] && [ -f "./scripts/preflight.sh" ]; then
  repo_root=$(pwd)
  warn "Your business folder isn't saved with Git yet" "Ask Claude to 'set up Git in this folder' so your work is saved"
else
  fail "Not inside your business folder" "Open the pet-photographer-ai-kit folder in Claude Code"
fi

# 4. All the department folders are there
if [ -n "$repo_root" ]; then
  missing=""
  for d in business ideal-client offer brand content enquiries; do
    [ -d "$d" ] || missing="$missing $d"
  done
  if [ -z "$missing" ]; then
    pass "All business folders present"
  else
    fail "Some folders are missing:$missing" "Ask Claude to restore the missing folders"
  fi
fi

# 5. Your own copy, not Ina's shared one
if [ -n "$repo_root" ] && origin_url=$(git remote get-url origin 2>/dev/null); then
  case "$origin_url" in
    *inajphotography/pet-photographer-ai-kit*)
      warn "Your work is saved on this laptop only" "Want a private backup? Ask Claude to 'help me make my own private copy on GitHub'. You can keep going without it" ;;
    *) pass "This is your own copy" ;;
  esac
fi

# 6. Connected and up to date
if [ -n "$repo_root" ] && git remote get-url origin >/dev/null 2>&1; then
  if GIT_TERMINAL_PROMPT=0 git fetch --quiet origin 2>/dev/null; then
    upstream=$(git rev-parse --abbrev-ref --symbolic-full-name '@{u}' 2>/dev/null)
    if [ -n "$upstream" ]; then
      behind=$(git rev-list --count HEAD.."$upstream" 2>/dev/null || echo 0)
      if [ "$behind" -gt 0 ]; then
        warn "There are $behind new update(s) to the kit" "Run 'git pull' (or ask Claude to get the latest)"
      else
        pass "Up to date"
      fi
    else
      pass "Connected"
    fi
  else
    warn "Couldn't check for updates (offline?)" "Check your internet, then run /setup-check again"
  fi
fi

echo "------------------------------------"
if [ "$fails" -gt 0 ]; then
  echo "RESULT: NOT READY ($fails to fix, $warns to check)"
  exit 1
elif [ "$warns" -gt 0 ]; then
  echo "RESULT: READY, with $warns thing(s) worth fixing"
else
  echo "RESULT: READY"
fi
