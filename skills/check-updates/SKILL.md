---
name: check-updates
description: Check whether the skills installed in this AI tool have newer versions in Fullsight, and whether anything is waiting in the person's Fullsight inbox. Use when they ask "are my skills up to date?", "any updates?" or "anything new in Fullsight?".
---

# Check for updates

The tools come from the `fullsight` MCP server in this plugin. If they aren't available, or a call says the person isn't signed in, ask them to connect Fullsight and sign in: in Claude Code, run `/mcp` and choose `plugin:fullsight:fullsight`; in ChatGPT or Codex, sign in from the plugin's settings. Then try again.

1. **Read what's installed.** If you can read files, list the skills folders (`~/.claude/skills`, `.claude/skills`, `~/.agents/skills` or `~/.cursor/skills`) and take `name` and `metadata.version` from each `SKILL.md`'s frontmatter. Use `none` when there's no version.
2. **Check.** Call `check_updates` with `installed`. Only names and versions go to Fullsight, and it doesn't store them.
   - If you can't read files (ChatGPT, claude.ai), call it with no `installed`. It returns `latest_versions` of the person's skills for them to compare with what they have.
3. **Report briefly.**
   - `updates`: each skill with the installed and latest version. Offer to update them.
   - `no_version_installed`: their copy has no version, so Fullsight can't tell. Offer to reinstall the latest.
   - `waiting_in_inbox`: what colleagues sent that they haven't answered. Offer to go through it with the `inbox` skill.
   - Nothing to report: say they're up to date.
4. **Update only with their OK.** For each one, call `get_skill` and replace the installed files, as in the `install-skill` steps, after showing any scan findings.

In Claude Code the plugin runs this check once at the start of a session. Setting `FULLSIGHT_SESSION_CHECK=off` in the environment turns that off.
