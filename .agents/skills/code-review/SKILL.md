---
name: code-review
description: Review code changes for correctness, regressions, maintainability, security issues, architecture violations, and missing tests. Use when reviewing a diff, checking implementation quality, or before preparing a commit.
---

# Code Review

## Goal

Find concrete, actionable problems in the current change without turning the review into an unrelated rewrite.

## Inputs

Use the available context:
- the user's requested outcome;
- the current diff;
- relevant surrounding code;
- repository `AGENTS.md`;
- architecture decisions and tests when relevant.

## Process

1. Understand the requested behavior before judging the implementation.
2. Inspect the smallest relevant diff first.
3. Read surrounding code only when needed to verify behavior.
4. Check for:
   - correctness bugs;
   - regressions;
   - missing edge cases;
   - security/privacy issues;
   - architecture or repository-rule violations;
   - unnecessary complexity;
   - missing or misleading tests;
   - accidental unrelated changes.
5. Prefer evidence from the code over hypothetical concerns.
6. Rank findings by practical severity.
7. Suggest the smallest reasonable fix.

## Severity

Use:
- **Critical** — likely data loss, security compromise, major outage, or irreversible damage.
- **High** — clear bug or regression affecting important behavior.
- **Medium** — real correctness/maintainability problem with limited impact.
- **Low** — minor issue worth fixing, not a style preference.

Do not inflate severity.

## Output

For each finding include:
- severity;
- file/location;
- issue;
- why it matters;
- recommended fix.

If no meaningful issues are found, say so clearly.

## Do not

- treat personal preferences as bugs;
- nitpick formatting already enforced by tooling;
- recommend major architecture changes without concrete evidence;
- rewrite unrelated code;
- fix findings automatically unless the user asked for implementation;
- claim tests or checks passed unless they actually ran.

## Safety

Follow applicable repository instructions such as `AGENTS.md`, `WORKFLOW.md`, or equivalents when present. Review activity does not grant permission to commit, push, deploy, or run destructive commands.
