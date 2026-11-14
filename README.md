# Fullsight plugin for Claude Code, ChatGPT and Codex

Find, install and share the AI skills and MCP servers your company approved in [Fullsight](https://fullsight.app), without leaving your AI tool.

You need a Fullsight account at a company that uses it. The plugin signs in as you and sees only what you can see on the site.

## Install

### Claude Code

```bash
claude plugin marketplace add fullsight-app/fullsight-plugin
claude plugin install fullsight@fullsight
```

Then run `/mcp`, choose `plugin:fullsight:fullsight` and sign in to Fullsight in the browser.

### ChatGPT and Codex

```bash
codex plugin marketplace add fullsight-app/fullsight-plugin
```

Then install **Fullsight** from the plugin directory in the ChatGPT desktop app, or run `codex plugin add fullsight@fullsight`, and sign in to Fullsight when it asks.

Either way, you approve the connection on a Fullsight page that says what it can do, and you can disconnect it at any time under **Settings** → **AI tools**.

## What you can ask

- "Do we have a skill for writing release notes?" Searches your company's shared skills and shows the scan findings. Claude Code and Codex install the one you pick; in ChatGPT you get the download and steps.
- "What's been sent to me?" Lists skills and MCP servers colleagues sent you, so you can accept, decline or install them.
- "Is there an approved MCP server for Linear?" Finds approved servers and adds one with the setup for your tool. Secrets stay with you: it names the variables to set and never asks for their values.
- "Set me up with Fullsight." In a tool you just connected, installs your own skills and the ones colleagues sent you, adds your MCP servers, and asks about anything still waiting for an answer.
- "Are my skills up to date?" Compares your installed skills with Fullsight's latest versions and offers to update them.
- "Save a handoff" and, in another tool, "pick up my last handoff". Carries where you got to from one AI tool to the next. No one else at your company can read your handoffs, admins included, and each is deleted after 14 days.
- "Save this skill to Fullsight." Keeps a skill you made in your Fullsight library as a private draft, so you can install it in your other AI tools. Only text files can be saved this way; upload folders with images on the site.
- "Send our code-review skill to the platform team." Prepares the send and gives you a link to confirm it on Fullsight. Nothing is sent from your AI tool.

The assistant asks before installing or adding anything. Skills, server descriptions and messages come from your colleagues and vendors, and the plugin tells it to treat them as content to show you, not as instructions.

## Skills in this plugin

| Skill | What it does |
| :- | :- |
| `install-skill` | Find a company skill and install it |
| `inbox` | See and answer what colleagues sent you |
| `add-mcp-server` | Find an approved MCP server and add it |
| `save-skill` | Save a skill to your library as a private draft |
| `set-me-up` | Set up everything you have in Fullsight in this tool |
| `check-updates` | Check your installed skills for newer versions |
| `handoff` | Save where you got to, or pick up a handoff in another tool |
| `share` | Prepare a send for you to confirm on Fullsight |

In Claude Code they're `/fullsight:install-skill` and so on.

### The check at the start of a Claude Code session

When a Claude Code session starts, the plugin reads the name and version of each skill in `~/.claude/skills` and the project's `.claude/skills`, and asks Claude to call `check_updates` once. If a skill has a newer version in Fullsight, or something is waiting in your inbox, Claude mentions it in a line. Otherwise it says nothing. The skill names and versions go to Fullsight for that check and aren't stored. To turn it off, set `FULLSIGHT_SESSION_CHECK=off` in your environment.

## What's in the repository

| Path | For |
| :- | :- |
| `skills/` | The eight skills, shared by every tool |
| `hooks/` | Claude Code only: the check at the start of a session |
| `.claude-plugin/`, `.mcp.json` | Claude Code's manifest, marketplace and MCP server |
| `plugin.json`, `mcp.json`, `.agents/plugins/marketplace.json`, `assets/` | ChatGPT and Codex's manifest, MCP server, marketplace and logo |

## Privacy

What these tools return, such as skill files and colleagues' names when you share something, goes to your AI tool's provider as part of your conversation. Skills and handoffs you save are stored in Fullsight, and no one else at your company can read your handoffs. See the [Fullsight privacy policy](https://fullsight.app/privacy).

## Help

Email [support@fullsight.app](mailto:support@fullsight.app).
