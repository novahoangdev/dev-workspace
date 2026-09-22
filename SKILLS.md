# Agent Skills Guide

`.agents/skills/` is the canonical source for reusable specialized workflows. Skills are opt-in; they are not a mandatory routing layer.

## Routing rule

Default to **zero skills**. Do not inspect this catalog for ordinary implementation tasks. Use one skill only when its specialized workflow materially helps. Do not chain skills merely because they are related.

## Shared skills

### General development
- `feature-planning` — explicit planning or sufficiently complex work that needs a plan before implementation
- `project-bootstrap` — creating/bootstraping a project or repository
- `code-review` — explicit code/diff review
- `test-strategy` — explicit test strategy, coverage, or non-trivial testing design
- `user-flow-testing` — explicit end-to-end/user-journey verification
- `release-check` — explicit release-readiness verification

### Web
- `frontend-review` — explicit UI/UX/accessibility review
- `web-performance` — performance investigation or optimization
- `seo-audit` — SEO review/audit

### Career / portfolio
- `career-content` — factual career/profile content work
- `cv-review` — CV review
- `cv-web-design` — CV/portfolio-specific information and visual design
- `pdf-quality` — PDF output verification

## Project-specific examples

Specialized examples live under `templates/project-skills/`:

- `interactive-webgl/`: `webgl-performance`, `3d-interaction-quality`
- `mac-dev-setup/`: `shell-script-review`, `mac-setup-safety`

Copy only a genuinely needed project-specific skill into that child repository. Do not install it globally by default.

## Tester role

`.agents/agents/tester.md` defines an independent read/test/report role. Use it only when an independent tester role is explicitly useful.

## Skill discipline

Create a skill only for a repeated, specialized, multi-step workflow that is meaningfully improved by reusable instructions. One-off requests belong in prompts; project facts belong in project docs.
