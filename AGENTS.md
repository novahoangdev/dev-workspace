# Workspace Agent Instructions

## Purpose
This is an open-source multi-repository AI-assisted development workspace for career projects, maintained pet projects, and experiments. Each child project is an independent Git repository unless explicitly stated otherwise.

## Instruction priority
1. Follow the user's current request.
2. Follow the nearest repository-level `AGENTS.md`.
3. Follow this workspace-level `AGENTS.md`.
4. Follow existing code/project conventions.

More specific instructions take precedence.

## Operational workflow
For Git operations, scripts, dependency installation, environment changes, migrations, deployment, external services, or destructive actions, follow `WORKFLOW.md`. If it requires explicit approval, do not proceed until approval is given.

## Before coding
For non-trivial work:
1. Read the nearest `AGENTS.md`.
2. Read the repository `README.md`.
3. Inspect relevant code.
4. Check `DECISIONS.md` for architectural choices.
5. Read only context/docs relevant to the task.

Do not load every documentation file by default.

## Think before coding
Do not silently guess when an assumption could materially change implementation. Identify important assumptions and meaningful tradeoffs. For small obvious changes, proceed without ceremony.

## Simplicity first
Write the minimum code needed to solve the requested problem well. Prefer straightforward code, existing patterns, small focused modules, and minimal dependencies. Avoid speculative features, premature abstractions, unnecessary configuration, and large rewrites.

## Surgical changes
Change only what is needed. Match existing style. Do not refactor, rename, reformat, or clean up unrelated code. Remove code/imports made obsolete by your own changes.

## Goal-driven execution
Translate requests into verifiable success criteria. Reproduce bugs when practical, preserve behavior during refactors, and verify expected UI states when relevant.

## Verification
Use applicable tests, type checking, linting, formatting checks, builds, and targeted manual verification. Never claim a check passed unless it actually ran. State what could not be verified.

## Repository boundaries
Treat each child project as an independent repository. Unless explicitly requested, do not modify another child repository, commit across repositories, or move files between repositories.

## Dependencies
Use existing solutions before adding packages. Prefer mature maintained dependencies. Do not upgrade unrelated dependencies.

## Security
Never hardcode or commit passwords, tokens, keys, production credentials, or personal secrets. Use environment variables and `.env.example` where appropriate.

## Documentation
Update durable documentation when setup, behavior, architecture, conventions, environment variables, deployment, or operating procedures change.

Use:
- `README.md` — project overview/setup
- `AGENTS.md` — agent working rules
- `WORKFLOW.md` — operational permissions/safety
- `DECISIONS.md` — durable project decisions
- `docs/` — project documentation
- workspace `context/` — public-safe reusable context/templates; private local context stays ignored

Do not create documentation for temporary implementation notes.

## Architecture decisions
Respect decisions already recorded in `DECISIONS.md` unless the user asks to revisit them or a concrete limitation invalidates them. Record significant new decisions concisely.

## Personal context
Workspace `context/` files are source material, not automatically publishable copy. Preserve factual accuracy. Never invent achievements, metrics, titles, dates, credentials, or publish private notes without explicit instruction.


## Shared skills

Reusable task workflows live under `.agents/skills/`. The canonical inventory is documented in `SKILLS.md`. Use only skills relevant to the task instead of loading every workflow by default.

Skills never override `WORKFLOW.md` permissions. A skill cannot grant itself permission to commit, push, deploy, run destructive commands, or modify remote/shared state.

## Communication
Be concise and concrete. On completion, summarize material changes, verification actually performed, and relevant unresolved risks. Avoid unnecessary implementation narration.


## Decision priority

When instructions or trade-offs conflict, prioritize:

1. Correctness
2. Explicit user requirements
3. Safety and security
4. Data integrity
5. Maintainability
6. Accessibility and user experience
7. Performance
8. Simplicity
9. Fewer lines of code

Simplicity must never override correctness, explicit requirements, security, accessibility, or data integrity.

## Verification

Do not claim that something works unless it was verified. Prefer running tests over assuming they pass, opening the application over assuming UI behavior, inspecting generated artifacts over assuming generation succeeded, measuring performance over guessing, and reproducing bugs before fixing them when practical. If verification could not be performed, state that explicitly.

## Planning boundary

For substantial work, planning and implementation are separate when the user asks for a plan/spec first. `feature-planning` does not authorize implementation. Small low-risk tasks do not require planning ceremony.

## Skill discipline

Do not create or install a skill merely because a task can be described as one. Create a skill only when the workflow is repeated, specialized, multi-step, and meaningfully improved by reusable instructions.

## Hook discipline

Keep this workspace hook-free by default. Add a hook only for a safe, fast, deterministic repeated check that a normal skill/script cannot adequately cover. Hooks must never silently commit, push, deploy, delete data, overwrite user configuration, or run destructive commands.
