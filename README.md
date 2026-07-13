# Foolish Think

> Stay hungry. Stay foolish. Challenge assumptions before reality does.

Foolish Think is a portable Agent Skill for developing new project ideas, pressure-testing proposed solutions, diagnosing struggling initiatives, and reconstructing failed projects. It uses semantic intent and project state rather than an exact keyword list.

The same `SKILL.md` works with Codex, Claude Code, and OpenClaw because its core uses the portable Agent Skills format and avoids vendor-specific tools.

## Install

Clone or unzip this repository, then run:

```bash
./install.sh codex
./install.sh claude
./install.sh openclaw
```

Install for every detected agent:

```bash
./install.sh all
```

Default destinations:

| Agent | Personal skill directory |
|---|---|
| Codex | `~/.codex/skills/foolish-think` |
| Claude Code | `~/.claude/skills/foolish-think` |
| OpenClaw | `~/.agents/skills/foolish-think` |

The installer copies only the `foolish-think/` directory. Existing installations are backed up before replacement.

## Let your agent install it

Give your agent the repository or extracted folder and say:

```text
Read README.md and install the Foolish Think skill for the agent platform you are currently running in. Verify that SKILL.md is visible from that platform's personal skill directory.
```

Restart the agent if it does not detect newly created top-level skill directories during the current session.

## Use

Explicit invocation is the most predictable:

```text
Use Foolish Think to examine this project idea before we invest in it.
```

Installed agents may also invoke it automatically when they infer that the user wants critical project development, pressure-testing, diagnosis, optimization, or retrospective analysis. Mentioning a project alone is intentionally insufficient.

The workflow has three gated stages:

1. **Foolish Mirror** — align on facts, assumptions, unknowns, and causes or preconditions;
2. **Foolish Reframe** — address each traceable finding with a targeted alternative;
3. **Foolish Proof** — build a falsification-first, contract-linked validation roadmap.

By default the agent stops after Stage 1 for factual confirmation. Ask for a one-pass analysis if you intentionally want all stages at once.

## Share

Send colleagues the release ZIP or the GitHub repository. They do not need to rewrite the prompt: install the folder and let their agent read `SKILL.md`.

## Compatibility principle

`foolish-think/SKILL.md` contains only the common `name` and `description` frontmatter plus platform-neutral instructions. `foolish-think/agents/openai.yaml` is optional Codex interface metadata; other agents can ignore it safely.

## License

MIT
