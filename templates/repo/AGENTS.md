# Project Agent Instructions

## Project
**Name:** TODO  
**Purpose:** TODO  
**Primary users:** TODO

Read `README.md` before significant implementation. Follow workspace `WORKFLOW.md` for Git permissions, scripts, destructive actions, deployments, and external systems.

Also read `DECISIONS.md` for durable decisions, `docs/architecture.md` when structure/data flow matters, and `docs/design-system.md` for UI work.

## Priorities
1. Correctness
2. Simplicity
3. Existing-code consistency
4. Maintainability
5. Performance when relevant

## Stack
- Language: TODO
- Framework: TODO
- Package manager: TODO
- Database: TODO
- Deployment: TODO

Delete irrelevant items.

## Commands
Install: `TODO`  
Dev: `TODO`  
Test: `TODO`  
Lint: `TODO`  
Type check: `TODO`  
Build: `TODO`

Delete commands that do not apply. Never invent commands.

## Architecture boundaries
TODO: list only important boundaries agents must not violate.

## Coding conventions
Follow existing patterns. Prefer small focused functions/components. Keep business logic separate from presentation when practical. Avoid unsafe escape hatches without reason. Do not introduce competing state/styling/validation/data-fetching approaches.

Project-specific rules:
- TODO

## UI
If applicable, reuse existing components/tokens, preserve responsive behavior, support keyboard/focus behavior, handle relevant loading/empty/error/disabled states, and follow `docs/design-system.md`.

## Verification
Add/update the smallest useful test when tests exist. Reproduce bugs before fixing when practical. Run relevant commands before finishing. Never claim checks that were not run.

## Scope
No unrelated refactors, cleanup, redesign, or fashionable architecture changes. Mention unrelated issues rather than fixing them without permission.

## Documentation
Update durable knowledge only: README for setup, DECISIONS for decisions, architecture docs for structure/data flow, design system for reusable UI rules.

## Definition of done
Requested behavior works; relevant edge cases are handled; applicable verification passes; unrelated changes were avoided; durable docs are updated when necessary.
