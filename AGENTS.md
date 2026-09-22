# Workspace Agent Instructions

## Purpose
This is an open-source multi-repository AI-assisted development workspace. Each child project is an independent Git repository unless explicitly stated otherwise.

## Instruction priority
1. User's current request.
2. Nearest repository-level `AGENTS.md`.
3. This workspace-level `AGENTS.md`.
4. Existing project conventions.

More specific instructions take precedence.

## Fast path
Keep effort proportional to the task.

- Default to direct implementation for small, clear requests.
- Do not create a plan for small or obvious changes.
- Inspect the smallest relevant scope first; expand only when evidence requires it.
- Do not refactor, redesign, rename, reformat, or clean up unrelated code.
- Do not run broad audits, full test suites, builds, or unrelated checks for a localized change unless required.
- Stop when the requested outcome is implemented and sufficiently verified.

For substantial work, read only the project documentation needed for the task. Do not load every documentation file by default.

## Operational safety
For Git writes, dependency installation, environment changes, migrations, deployment, external services, destructive actions, or remote/shared-state changes, follow `WORKFLOW.md`.

Explicit approval is required before commit, push, deploy, destructive actions, or other difficult-to-reverse remote/shared-state changes. Permission for one does not imply permission for another.

Read-only inspection, requested file edits, and clearly non-destructive targeted local checks are allowed.

## Implementation
Write the minimum code needed to solve the request correctly. Prefer existing patterns, small focused changes, and minimal dependencies. Do not silently guess when an assumption could materially change the result.

Treat child repositories independently. Do not modify another child repository or move changes across repositories unless explicitly requested.

Never hardcode or commit passwords, tokens, keys, production credentials, personal secrets, or confidential data.

## Verification
Verification must be proportional to the change.

- Content/docs change: inspect the affected output or diff.
- Local UI/style change: inspect the affected UI when practical.
- Local logic change: run the narrowest relevant test/check.
- Cross-cutting or risky change: expand verification as needed.
- Release readiness: use the release workflow.

Never claim a check passed unless it actually ran. State important verification that could not be performed.

## Documentation
Update durable documentation only when setup, behavior, architecture, conventions, environment variables, deployment, or operating procedures materially change.

- `README.md` — project overview/setup
- `AGENTS.md` — always-on agent rules
- `WORKFLOW.md` — permissions and operational safety
- `DECISIONS.md` — durable architectural decisions
- `docs/` — project documentation
- workspace `context/` — public-safe reusable context/templates

Do not create documentation for temporary implementation notes.

## Shared skills
Reusable workflows live under `.agents/skills/`.

Default to **zero skills**. Do not inspect or load the skill catalog for ordinary tasks. Use at most one specialized skill when the request clearly benefits from that workflow. Use multiple skills only when distinct specialties are genuinely required; never chain them automatically.

Skills never override `WORKFLOW.md` permissions.

## Personal context
Workspace `context/` files are source material, not automatically publishable copy. Preserve factual accuracy. Never invent achievements, metrics, titles, dates, credentials, or publish private notes without explicit instruction.

## Communication
Keep responses proportional to the work. For small changes, report what changed, what was verified, and any important limitation. Do not narrate routine investigation or produce long summaries unless requested.
