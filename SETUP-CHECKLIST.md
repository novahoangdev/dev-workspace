# Setup & Public Release Checklist

## Before first public push

- [ ] Choose the final GitHub repository name and description.
- [ ] Replace any `YOUR_USERNAME` / repository URL placeholders you intend to publish.
- [ ] Review `README.md`, `AGENTS.md`, and `WORKFLOW.md`.
- [ ] Keep only public-safe content under `context/`.
- [ ] Put private context in `context/*.local.md` or `context/private/`.
- [ ] Copy `repos.example.txt` to local `repos.txt`; do not commit `repos.txt`.
- [ ] Run a secret scan or at minimum search for tokens, private keys, `.env`, credentials, and machine-specific paths.
- [ ] Run `git status` and inspect the complete staged diff before the first commit.
- [ ] Confirm `LICENSE`, `CONTRIBUTING.md`, and `SECURITY.md` are appropriate for your intended public use.
- [ ] Run `./scripts/setup-agent-skills.sh` locally and verify links work.
- [ ] Initialize Git only after the public-content review is complete.

## Each maintained child project

- [ ] Start from `templates/repo/` when useful.
- [ ] Replace relevant TODOs and remove irrelevant template sections/files.
- [ ] Define real install/test/lint/typecheck/build commands.
- [ ] Document architecture boundaries and meaningful decisions.
- [ ] Add `.env.example` only when environment variables are actually required.
- [ ] Add project-specific skills only when genuinely specialized/repeated.
- [ ] Keep the child project as an independent Git repository.
- [ ] Add its clone URL to local `repos.txt`.

## Intended agent permission model

```text
read / inspect / edit / test / lint / build → no approval
commit                                      → explicit approval
push                                        → separate explicit approval
destructive / production / remote           → explicit approval
```
