# Workspace Workflow

## Default permission model
Agents may freely inspect/read/search files, inspect Git state, edit files required by the current task, and run clearly non-destructive local tests, linting, type checks, formatting checks, and builds.

Do not assume permission for durable Git history, remote systems, shared state, production data, destructive actions, or difficult-to-reverse changes.

## Git inspection — no approval needed
Read-only commands such as `git status`, `git diff`, `git diff --staged`, `git log`, `git branch`, and `git show` may run without asking.

## Staging
Stage only when the user explicitly asks to prepare/create a commit. Inspect status and diff first and exclude unrelated user changes. Prefer explicit paths over `git add .` or `git add -A`.

## Commits — explicit approval required
Do not commit by default. Editing code does not imply commit permission.

Examples of permission: "commit this", "make a commit", "commit the changes", "finish and commit".

Before committing:
1. review the final diff;
2. run applicable verification;
3. exclude secrets/unrelated changes;
4. generate a concise Conventional Commit message.

If one logical change is clear, choose the message without asking the user to approve wording. If multiple unrelated changes exist, explain the proposed split before making multiple commits.

## Conventional Commits
Format: `<type>(optional-scope): <description>`

Preferred types: `feat`, `fix`, `refactor`, `docs`, `test`, `chore`, `style`, `perf`, `build`, `ci`.

Examples:
- `feat(portfolio): add project detail page`
- `fix(cv): preserve line breaks in PDF export`
- `refactor(profile): simplify experience data model`
- `docs(workspace): document repository bootstrap flow`

Use lowercase type, concise outcome-focused wording, and no final period.

## Push — separate explicit approval required
Never push automatically. Commit permission does not imply push permission.

"commit this" authorizes commit only.
"commit and push" authorizes the requested normal push.

Before pushing, confirm current branch, intended remote, commits being pushed, and that the operation is not forceful.

Force push always requires explicit permission for that exact operation.

## Branches and history
Inspect branches freely. Ask before deleting branches, renaming shared branches, rebasing published commits, destructive resets, rewriting shared history, or changing branch-protection-related configuration. Never discard user changes just to obtain a clean tree.

## Dangerous operations — always ask
Ask before significant irreversible/difficult-to-review actions such as:
- `rm -rf`
- `git reset --hard`
- `git clean -fd`
- broad `git restore` / checkout that discards changes
- rebase of published work
- force push
- `docker system prune`
- destructive database operations
- `terraform destroy`
- destructive `kubectl` operations
- deleting many files
- overwriting meaningful user data
- production infrastructure changes
- destructive migrations
- system-level configuration changes

Explain what will happen, why it is needed, what may be lost, and safer alternatives if available.

## Scripts
Clearly non-destructive verification commands may run without asking, e.g. tests, lint, typecheck, and builds.

Before running an unfamiliar script:
1. inspect its definition;
2. inspect referenced files if needed;
3. determine side effects.

Ask first if it may delete/overwrite data, deploy/publish, modify infrastructure/external services, alter production/shared databases, or make system-level changes. Never trust a script solely by its name.

## Dependencies/tooling
A normal project-local dependency may be installed when necessary for an explicitly requested task and it is not an architectural change.

Ask before global/system installation, changing package managers, major framework upgrades, broad dependency upgrades, or replacing foundational tooling. Never upgrade unrelated dependencies.

## Architecture changes — ask first
Ask before replacing/introducing foundational technology such as framework, database, ORM, authentication, global state management, styling system, monorepo architecture, or deployment provider. Small decisions within existing architecture do not require approval.

## Environment/secrets
`.env.example` may be inspected. Never expose, print, document, or commit real secrets. Ask before modifying real environment configuration when it could affect deployed/external systems.

## Database operations
Read-only local queries are normally allowed. Safe local development migrations may run when understood and non-destructive.

Ask before production writes, deletion/reset of shared data, destructive migrations, shared seeding, or production migrations.

## External/remote systems
Ask before modifying remote/shared systems unless the user explicitly requested that exact action. Examples: deployment, package publishing, releases, sending messages/email, cloud resources, DNS, paid resources, repository settings, PR merge/close, production data.

## Verification
Before reporting completion:
1. review diff;
2. run narrow relevant verification first;
3. broaden when appropriate;
4. report only checks actually performed.

Typical order: targeted test → related suite → typecheck/lint → production build.

## Scope protection
Preserve unrelated modifications. Do not stage, revert, or opportunistically fix them. Mention unrelated issues only if relevant. Do not turn a narrow task into repository cleanup.

## Summary
No approval: read, inspect, search, requested edits, tests, lint, typecheck, local builds.

Explicit approval: commit.

Separate explicit approval: push.

Always explicit approval: destructive, force, production, or remote/shared-state actions.
