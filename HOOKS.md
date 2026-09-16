# Hooks

A **hook** is an automatic trigger around a supported agent/tool lifecycle event—for example before/after a command or edit, or when a task finishes.

```text
Prompt = you ask now
Skill  = reusable procedure the agent chooses/you invoke
Hook   = automatic event → action
```

Potential uses include automatic formatting, a safe warning before dangerous commands, or a fast deterministic check before task completion.

## Decision for this workspace

**No hooks by default in v1.**

Hooks add hidden behavior, latency/tool overhead, failure modes, and portability problems because Codex, Claude Code, and Copilot do not share one identical hook system. The workspace already has `WORKFLOW.md`, explicit scripts, review/testing skills, and a tester role.

Add a hook only when all are true:
1. the same deterministic action is repeatedly needed;
2. forgetting it creates a meaningful problem;
3. it is fast and reliable;
4. it is safe to run automatically;
5. it does not require user judgment;
6. a skill or explicit script is insufficient.

Good future candidates: formatting after edits, non-destructive secret-pattern warnings, or a fast lint/typecheck completion gate.

Never use hooks for auto-commit, auto-push, auto-deploy, package installation, migrations, broad deletion, or overwriting shell/Git/SSH configuration.
