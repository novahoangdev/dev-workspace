# Architecture

This repository is a control layer for a multi-repository AI-assisted development workspace. Child projects remain independent Git repositories.

```text
User request
    ↓
AGENTS.md            always-on working principles
    ↓
WORKFLOW.md          permissions and safety boundaries
    ↓
Skills              reusable task-specific procedures
    ↓
Project docs         local architecture and decisions
    ↓
Verification         tests, browser/user flows, reviews
    ↓
User approval        commit / push / deploy when required
```

## Why separate repositories?

The root stays small and reusable while portfolio, CV, WebGL, setup guides, and pet projects keep independent history, issues, releases, and visibility.

## Instruction placement

| Need | Location |
| --- | --- |
| Always-on agent behavior | `AGENTS.md` |
| Permission / safety policy | `WORKFLOW.md` |
| Claude adapter | `CLAUDE.md` |
| Repeated specialized workflow | `.agents/skills/<name>/SKILL.md` |
| Independent tester role | `.agents/agents/tester.md` |
| Durable project decision | child repo `DECISIONS.md` |
| Project documentation | child repo `docs/` |
| Private/local personal context | ignored `context/*.local.md` or `context/private/` |

## Portability

`.agents/skills/` is the canonical skill source. `scripts/setup-agent-skills.sh` exposes those skills to compatible agent locations instead of committing duplicate copies.

## Hooks

Hooks are intentionally absent in v1. See `HOOKS.md`. The workspace favors explicit, reviewable actions until a repeated deterministic need justifies automation.
