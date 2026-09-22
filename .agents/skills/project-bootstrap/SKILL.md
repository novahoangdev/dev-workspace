---
name: project-bootstrap
description: Scaffold a new project inside this development workspace using the repository template, workspace conventions, and safe Git boundaries. Use when creating a new career project, maintained project, or experiment.
---

# Project Bootstrap

## Goal

Create a clean project skeleton that follows this workspace's conventions without silently making remote or irreversible changes.

## Required input

Determine:
- project name;
- category: `career`, `projects`, or `experiments`;
- short purpose;
- expected stack if already known;
- whether this is a maintained project or a disposable prototype.

Ask only for information that materially changes the scaffold. If a reasonable default is safe, use it and state it.

## Process

1. Read applicable root instructions such as `AGENTS.md`, `WORKFLOW.md`, and `README.md` when present.
2. Confirm the target directory does not already contain meaningful files.
3. For maintained projects:
   - copy `templates/repo/`;
   - replace obvious project-name/purpose placeholders;
   - keep unknown technical fields as `TODO`;
   - remove clearly irrelevant template sections only when obvious.
4. For short-lived experiments:
   - prefer a minimal structure;
   - do not force `DECISIONS.md` or design-system docs unless useful.
5. Do not invent framework commands, environment variables, architecture, or deployment configuration.
6. If Git initialization is requested, local `git init` is allowed only if consistent with applicable repository instructions and the user's request.
7. Do not create GitHub repositories, commits, pushes, deployments, or external resources without explicit approval.

## Category guidance

### `career/`
Use for projects whose primary purpose is presenting or managing the user's professional identity, such as portfolio, CV, resume, or interactive professional profile.

### `projects/`
Use for maintained tools, public resources, applications, libraries, and pet projects intended to have ongoing value.

### `experiments/`
Use for prototypes, technology trials, throwaway spikes, and short-lived exploration.

## Output

At the end report:
- project path;
- files created;
- assumptions/defaults used;
- remaining TODOs;
- any Git action performed.

Do not commit or push unless separately authorized.
