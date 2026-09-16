# Agent Skills Guide

`.agents/skills/` is the canonical source for reusable shared skills. Keep always-on rules in `AGENTS.md`, permissions in `WORKFLOW.md`, and durable project facts/decisions in project documentation.

## Shared skills

### General development
- `feature-planning`
- `project-bootstrap`
- `code-review`
- `test-strategy`
- `user-flow-testing`
- `release-check`

### Web
- `frontend-quality`
- `ux-ui-review`
- `web-performance`
- `seo-audit`

### Career / portfolio
- `career-content`
- `cv-review`
- `cv-web-design`
- `pdf-quality`

## Project-specific examples

Specialized examples live under `templates/project-skills/`:

- `interactive-webgl/`: `webgl-performance`, `3d-interaction-quality`
- `mac-dev-setup/`: `shell-script-review`, `mac-setup-safety`

Copy only the relevant skill folders into the child repository's `.agents/skills/` directory. Do not install them globally unless they are genuinely useful across projects.

## Tester role

`.agents/agents/tester.md` defines an independent read/test/report role. Tool-specific registration may differ; the file is the canonical role specification.

## Usage

Ask naturally or name a skill explicitly:

```text
Use feature-planning for this feature. Do not implement yet.
Use user-flow-testing to verify the finished flow.
Use web-performance and seo-audit before release.
```

Do not run every skill for every task. Use only what materially helps.

## Skill discipline

Create a new skill only when a workflow is repeated, specialized, multi-step, and meaningfully improved by reusable instructions. One-off requests belong in prompts; project-specific facts belong in project docs.
