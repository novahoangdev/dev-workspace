---
name: release-check
description: Perform a pre-release readiness check using the repository's real verification commands, current diff, documentation, environment expectations, and workspace safety policy. Use before deployment, publishing, release creation, or merging a substantial change.
---

# Release Check

## Goal

Determine whether the current repository is ready to release without performing the release itself.

## Process

1. Read the nearest `AGENTS.md`, repository `README.md`, and relevant release/deployment docs.
2. Inspect:
   - `git status`;
   - relevant diff;
   - current branch when Git is present.
3. Identify the repository's actual verification commands. Do not invent commands.
4. Run the narrowest relevant checks first, then broader checks when practical:
   - targeted tests;
   - relevant/full test suite;
   - type checking;
   - linting;
   - production build.
5. Check for release blockers:
   - failing verification;
   - accidental debug code;
   - obvious secrets/credentials in changed files;
   - missing required environment-variable documentation;
   - incompatible migrations;
   - unresolved TODO/FIXME only when they affect the release;
   - unintended generated files or large artifacts;
   - documentation drift for setup/public behavior.
6. If deployment configuration is involved, inspect it but do not deploy.

## Result

Return one status:
- **Ready**
- **Ready with cautions**
- **Not ready**

Then provide:
- checks actually run and results;
- blockers;
- cautions;
- recommended next actions.

Do not claim a check passed if it was not run.

## Safety

This skill is a readiness check only.

It does not authorize:
- commit;
- push;
- tag creation;
- release creation;
- package publishing;
- deployment;
- production migration;
- other remote/shared-state changes.

Those actions require approval under `WORKFLOW.md`.
