# Agent Assets

`.agents/skills/` is the canonical source for reusable workflows. `.agents/agents/` contains portable role specifications such as the independent tester.

Keep skills small and opt-in. A task should normally use **zero skills** and at most **one skill** when a specialized workflow is clearly useful. Do not chain skills by default; add another only when the user explicitly asks for multiple distinct specialties or the task cannot be completed correctly without them. Prefer each coding client’s native capabilities over duplicating general-purpose skills.

## Routing

| Task | Default skill |
| --- | --- |
| Small UI/CSS fix | none |
| New component/page or redesign | none; use the coding client’s native capabilities |
| UI/UX audit or polish review | `frontend-review` |
| CV/portfolio UI | `cv-web-design` only when career-specific guidance is needed |
| Performance investigation | `web-performance` |
| SEO work | `seo-audit` |
| Complex feature/refactor planning | `feature-planning` |
| Test approach decision | `test-strategy` |
| Real user journey verification | `user-flow-testing` |
| Diff/code review | `code-review` |
| Release readiness | `release-check` |
| Career/profile writing | `career-content` |
| Resume/CV content review | `cv-review` |
| PDF verification | `pdf-quality` |
| New workspace project scaffold | `project-bootstrap` |

## Efficiency rules

- Do not load a skill merely because it is related to the technology.
- Do not run `feature-planning` for small/local changes.
- Do not run `frontend-review` automatically after implementation; use it only for an explicit or clearly needed UI/UX review.
- Do not run `test-strategy` for purely visual changes unless behavior/risk warrants it.
- Use `web-performance`, `seo-audit`, and `release-check` only for explicit or clearly relevant tasks.
- Prefer the smallest relevant code/context inspection before expanding scope.
- Do not create long reports when a concise implementation/result is enough.

## Installation

Do not maintain duplicate skill content for each coding client. Use `scripts/setup-agent-skills.sh` to expose these canonical skills to supported local locations where useful.

Project-specific skill examples belong under `templates/project-skills/` and should be copied only into the child repository that needs them.
