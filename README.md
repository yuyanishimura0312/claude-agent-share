# Claude Code Agent Catalog

A collection of reusable agent teams for [Claude Code](https://claude.com/claude-code).

## Quick Install

Install all agents:
```bash
curl -sL https://yuyanishimura0312.github.io/claude-agent-share/install.sh | bash
```

Install a specific agent:
```bash
curl -sL https://yuyanishimura0312.github.io/claude-agent-share/install.sh | bash -s -- deep-research
```

## Available Agents

| Agent | Command | Description |
|-------|---------|-------------|
| Deep Research | `/deep-research` | Multi-phase academic + web research pipeline |
| Best Practice | `/best-practice` | CMO + GRADE framework analysis with 3 parallel agents |
| CxO Meeting | `/cxo-meeting` | 7 C-suite agents for management meeting simulation |
| QA Review | `/qa-review` | 5 QA specialists for app quality review |
| Academic Search | `/academic-search` | Semantic Scholar / arXiv literature mapping |
| Research | `/research` | General web research and report generation |
| Parallel Report | `/parallel-report` | Multi-agent parallel report generation |
| Competitor Scan | `/competitor-scan` | Playwright + web search competitive analysis |
| Translate Academic | `/translate-academic` | Academic English translation (anthropology / social science) |

## Manual Install

Copy any `.md` file from the `agents/` directory to `~/.claude/commands/`:

```bash
cp agents/deep-research.md ~/.claude/commands/
```

Then use it in Claude Code as `/deep-research`.

## Catalog Page

Browse the catalog: https://yuyanishimura0312.github.io/claude-agent-share/
