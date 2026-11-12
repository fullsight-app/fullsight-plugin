# Fullsight plugin for Claude Code, ChatGPT and Codex

Find, install and share the AI skills and MCP servers your company approved in [Fullsight](https://fullsight.app), without leaving your AI tool.

You need a Fullsight account at a company that uses it. The plugin signs in as you and sees only what you can see on the site.

## Install

### Claude Code

```bash
claude plugin marketplace add ethanernstt/fullsight-plugin
claude plugin install fullsight@fullsight
```

Then run `/mcp`, choose `plugin:fullsight:fullsight` and sign in to Fullsight in the browser.

### ChatGPT and Codex

```bash
codex plugin marketplace add ethanernstt/fullsight-plugin
```

Then install **Fullsight** from the plugin directory in the ChatGPT desktop app, or run `codex plugin add fullsight@fullsight`, and sign in to Fullsight when it asks.

Either way, you approve the connection on a Fullsight page that says what it can do, and you can disconnect it at any time under **Settings** → **AI tools**.

## What you can ask

- "Do we have a skill for writing release notes?" Searches your company's shared skills and shows the scan findings. Claude Code and Codex install the one you pick; in ChatGPT you get the download and steps.
- "What's been sent to me?" Lists skills and MCP servers colleagues sent you, so you can accept, decline or install them.
- "Is there an approved MCP server for Linear?" Finds approved servers and adds one with the setup for your tool. Secrets stay with you: it names the variables to set and never asks for their values.
- "Send our code-review skill to the platform team." Prepares the send and gives you a link to confirm it on Fullsight. Nothing is sent from your AI tool.

The assistant asks before installing or adding anything. Skills, server descriptions and messages come from your colleagues and vendors, and the plugin tells it to treat them as content to show you, not as instructions.

## Skills in this plugin

| Skill | What it does |
| :- | :- |
| `install-skill` | Find a company skill and install it |
| `inbox` | See and answer what colleagues sent you |
| `add-mcp-server` | Find an approved MCP server and add it |
| `share` | Prepare a send for you to confirm on Fullsight |

In Claude Code they're `/fullsight:install-skill` and so on.

## What's in the repository

| Path | For |
| :- | :- |
| `skills/` | The four skills, shared by every tool |
| `.claude-plugin/`, `.mcp.json` | Claude Code's manifest, marketplace and MCP server |
| `plugin.json`, `mcp.json`, `.agents/plugins/marketplace.json`, `assets/` | ChatGPT and Codex's manifest, MCP server, marketplace and logo |

## Privacy

What these tools return, such as skill files and colleagues' names when you share something, goes to your AI tool's provider as part of your conversation. See the [Fullsight privacy policy](https://fullsight.app/privacy).

## Help

Email [support@fullsight.app](mailto:support@fullsight.app).
