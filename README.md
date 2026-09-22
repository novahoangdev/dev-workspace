# AI Development Workspace

An open-source, multi-repository workspace for **AI-assisted / vibe coding** with portable rules, reusable Agent Skills, explicit safety boundaries, project templates, and verification workflows.

The goal is not to install as many agents as possible. It is to give Codex, Claude Code, GitHub Copilot, and similar coding agents enough structure to work consistently without turning a personal workspace into a heavy framework.

## What this repository demonstrates

- a clear separation between **instructions**, **permissions**, **skills**, and **project documentation**;
- reusable `SKILL.md` workflows for planning, coding review, testing, frontend quality, performance, SEO, CV/portfolio work, and PDF verification;
- an independent tester role that reports findings without silently modifying code;
- safe Git/remote-operation boundaries: edit/test freely, commit only with approval, push separately, destructive/production actions explicitly;
- independent child repositories for portfolio, interactive WebGL work, machine setup guides, and pet projects;
- intentionally minimal automation: no hooks by default.

## Architecture

```text
AI Development Workspace
├── AGENTS.md                 # always-on agent principles
├── WORKFLOW.md               # Git / scripts / remote / safety permissions
├── CLAUDE.md                 # Claude adapter
├── SKILLS.md                 # skill inventory and usage
├── HOOKS.md                  # hook policy and rationale
├── .agents/
│   ├── skills/               # canonical shared Agent Skills
│   └── agents/tester.md      # independent QA role
├── context/                  # public-safe templates/defaults
├── docs/architecture.md
├── scripts/
├── templates/
│   ├── repo/                 # starter files for maintained child repos
│   └── project-skills/       # examples for specialized child repos
├── career/                   # independent repos; ignored by root Git
├── projects/                 # independent repos; ignored by root Git
└── experiments/              # independent repos; ignored by root Git
```

See [`docs/architecture.md`](docs/architecture.md) for the design rationale.

## Shared skills

### Development

`feature-planning`, `project-bootstrap`, `code-review`, `test-strategy`, `user-flow-testing`, `release-check`

### Web

`frontend-review`, `web-performance`, `seo-audit`

### Career / portfolio

`career-content`, `cv-review`, `cv-web-design`, `pdf-quality`

Specialized WebGL and macOS setup skill examples live under `templates/project-skills/` so they can be copied into the relevant child repository instead of polluting every project.

## Quick start

```bash
git clone <YOUR_REPOSITORY_URL> dev-workspace
cd dev-workspace

cp repos.example.txt repos.txt
# Edit repos.txt with the repositories you actually want on this machine.

chmod +x scripts/bootstrap.sh scripts/setup-agent-skills.sh
./scripts/bootstrap.sh
./scripts/setup-agent-skills.sh
```

`repos.txt` is local-only and ignored by Git, so your machine-specific/private repository list is not accidentally published.

To expose shared skills at user level where supported:

```bash
./scripts/setup-agent-skills.sh --global
```

## Using the skills

Skills are opt-in. Ordinary coding tasks should use **zero skills** and proceed directly. Use one specialized skill only when its workflow materially helps the request; do not chain related skills automatically.

Examples:

```text
Review this diff with code-review.
Audit this page with frontend-review.
Investigate this page with web-performance.
Check release readiness with release-check.
```

## Git and safety model

```text
read / inspect / requested edits / tests / lint / build  → allowed
commit                                                   → explicit approval
push                                                     → separate explicit approval
destructive / production / remote shared-state changes  → explicit approval
```

See `WORKFLOW.md` for the complete policy.

## Child repositories

The root repository intentionally does **not** track child-project source code. Each project gets its own Git history, README, issues, releases, and visibility.

Typical layout:

```text
career/portfolio/               # independent repo
career/interactive-workspace/   # independent repo
projects/mac-dev-setup/         # independent repo
experiments/...                 # independent repos/prototypes
```

Add clone targets to your local `repos.txt`; use `repos.example.txt` as the public template.

## Public vs private context

This repository is designed to be public. Keep only public-safe templates/defaults under `context/`. Put personal/private agent context in `context/*.local.md` or `context/private/`; both are ignored.

Never commit real `.env` files, tokens, private keys, credentials, or confidential employer/client information.

## Hooks

No hooks are enabled by default. This is intentional. Hooks add hidden behavior and differ across agent ecosystems. Add one only after repeated usage proves that a safe, fast, deterministic action genuinely needs to run automatically. See `HOOKS.md`.

## Contributing

Contributions are welcome. See `CONTRIBUTING.md` for scope and safety expectations.

## License

MIT — see `LICENSE`.
