# Agent Assets

`.agents/skills/` is the canonical source for shared reusable `SKILL.md` workflows in this workspace. `.agents/agents/` contains portable role specifications such as the independent tester.

Do not maintain duplicate skill content for each coding client. Use `scripts/setup-agent-skills.sh` to expose the canonical skills to supported local locations where useful.

Project-specific skill examples live under `templates/project-skills/` and should be copied only into the child repository that needs them.
