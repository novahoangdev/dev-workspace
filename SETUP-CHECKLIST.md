# Setup Checklist

## Workspace
- [ ] Create a private Git repository for this workspace.
- [ ] Replace `YOUR_USERNAME` placeholders.
- [ ] Review `AGENTS.md` and `WORKFLOW.md`.
- [ ] Fill `context/career.md`.
- [ ] Adjust writing/design preferences.
- [ ] Add child repositories to `repos.txt`.
- [ ] Commit and push the workspace repository.

## Each maintained project
- [ ] Start from `templates/repo/`.
- [ ] Replace relevant TODOs and delete irrelevant sections/files.
- [ ] Define real install/test/lint/typecheck/build commands.
- [ ] Document architecture boundaries.
- [ ] Add `.env.example` when needed.
- [ ] Choose public/private visibility.
- [ ] Add the repo to root `repos.txt`.

## Intended agent permission model
```text
read / inspect / edit / test / lint / build → no approval
commit                                  → explicit approval
push                                    → separate explicit approval
destructive / production / remote      → explicit approval
```
