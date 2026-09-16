# Contributing

Thanks for taking an interest in this workspace. Contributions that improve portability, safety, clarity, or reusable agent workflows are welcome.

## Before opening a pull request

1. Keep changes focused and avoid unrelated cleanup.
2. Preserve the separation between always-on rules (`AGENTS.md`), permissions (`WORKFLOW.md`), and reusable workflows (`.agents/skills/`).
3. Do not add secrets, personal/private context, machine-specific paths, or generated artifacts.
4. Prefer portable instructions over tool-specific duplication.
5. Add a new skill only when the workflow is repeated, specialized, multi-step, and meaningfully reusable.
6. Explain any new dependency, hook, or automation and why a simpler explicit workflow is insufficient.

## Commit style

Use Conventional Commits, for example:

```text
feat(skills): add accessibility audit workflow
docs(workspace): clarify repository bootstrap flow
fix(setup): preserve existing skill links
```

## Safety

Do not introduce automation that silently commits, pushes, deploys, deletes data, overwrites user configuration, or changes remote/shared state.
