# Security

This repository contains instructions and shell scripts that may be used by coding agents. Treat changes to scripts, agent permissions, hooks, and remote commands as security-sensitive.

## Reporting

If you find a security issue, avoid publishing secrets or exploit details in a public issue. Contact the repository owner privately through an available GitHub contact channel/profile.

## Repository rules

- Never commit real credentials, tokens, private keys, `.env` files, or personal secrets.
- Inspect unfamiliar scripts before execution.
- Remote/shared-state changes require explicit user approval.
- Destructive operations require explicit approval and should have safer alternatives where possible.
- Third-party skills/plugins should be reviewed before installation.
