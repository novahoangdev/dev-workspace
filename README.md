# Personal Development Workspace

Private control repository for a personal multi-repository coding workspace.

## Structure
```text
personal-workspace/
├── AGENTS.md
├── CLAUDE.md
├── WORKFLOW.md
├── README.md
├── SETUP-CHECKLIST.md
├── .gitignore
├── repos.txt
├── context/
├── scripts/
├── templates/repo/
├── career/       # independent repos, ignored by root Git
├── projects/     # independent repos, ignored by root Git
└── experiments/  # independent repos, ignored by root Git
```

## Mental model
- `AGENTS.md`: how agents should work
- `WORKFLOW.md`: what agents may execute without approval
- `CLAUDE.md`: Claude adapter importing shared instructions
- `context/`: what agents should know about you/preferences
- child `<repo>/docs/`: what developers should know about that project
- `DECISIONS.md`: durable project-level decisions

Recommended: keep this workspace repo private. Individual portfolio/CV/pet-project repos may be public or private independently.

## Restore on a new machine
1. Clone this workspace.
2. Edit/populate `repos.txt`.
3. Run:
```bash
chmod +x scripts/bootstrap.sh
./scripts/bootstrap.sh
```

## New project
Copy `templates/repo/` into the new project, replace relevant TODOs, remove irrelevant template sections, initialize its independent Git repo, then add its clone URL to root `repos.txt`.

Do not use the root repository to track child repository source code.
