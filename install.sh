#!/bin/bash
# Claude Code Agent Installer
# Usage: curl -sL https://yuyanishimura0312.github.io/claude-agent-share/install.sh | bash
# Or:    bash install.sh [agent-name]  (e.g. bash install.sh deep-research)

set -e

BASE_URL="https://raw.githubusercontent.com/yuyanishimura0312/claude-agent-share/main/agents"
TARGET_DIR="$HOME/.claude/commands"

AGENTS=(
  research
  deep-research
  academic-search
  best-practice
  parallel-report
  cxo-meeting
  qa-review
  competitor-scan
  translate-academic
)

echo "=== Claude Code Agent Installer ==="
echo ""

# Create target directory if needed
mkdir -p "$TARGET_DIR"

# If specific agent names given as arguments, install only those
if [ $# -gt 0 ]; then
  AGENTS=("$@")
fi

installed=0
skipped=0

for agent in "${AGENTS[@]}"; do
  file="$agent.md"
  target="$TARGET_DIR/$file"

  if [ -f "$target" ]; then
    echo "  [skip] $file (already exists)"
    skipped=$((skipped + 1))
    continue
  fi

  echo "  [install] $file"
  curl -sL "$BASE_URL/$file" -o "$target"

  if [ $? -eq 0 ] && [ -s "$target" ]; then
    installed=$((installed + 1))
  else
    echo "  [error] Failed to download $file"
    rm -f "$target"
  fi
done

echo ""
echo "Done! Installed: $installed, Skipped: $skipped"
echo "Agents are available as slash commands in Claude Code: /$agent-name"
echo ""
echo "To update existing agents, delete them first:"
echo "  rm ~/.claude/commands/<agent-name>.md"
echo "  Then re-run this installer."
