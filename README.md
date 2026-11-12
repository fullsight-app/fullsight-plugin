# Fullsight for Claude Code

Find, install and share the AI skills and MCP servers your company approved in [Fullsight](https://fullsight.app), without leaving Claude Code.

You need a Fullsight account at a company that uses it. The plugin signs in as you and sees only what you can see on the site.

## Install

```bash
claude plugin marketplace add ethanernstt/fullsight-claude-plugin
claude plugin install fullsight@fullsight
```

Then, in Claude Code, run `/mcp`, choose `plugin:fullsight:fullsight` and sign in to Fullsight in the browser. You approve the connection on a Fullsight page that says what it can do. You can disconnect it at any time under **Settings** → **AI tools**.

## What you can ask

- "Do we have a skill for writing release notes?" Searches your company's shared skills, shows the scan findings, and installs the one you pick into `~/.claude/skills` or this project.
- "What's been sent to me?" Lists skills and MCP servers colleagues sent you, so you can accept, decline or install them.
- "Is there an approved MCP server for Linear?" Finds approved servers and adds one to Claude Code with `claude mcp add`. Secrets stay with you: it names the variables to set and never asks for their values.
- "Send our code-review skill to the platform team." Prepares the send and gives you a link to confirm it on Fullsight. Nothing is sent from Claude Code.

Claude asks before installing or adding anything. Skills, server descriptions and messages come from your colleagues and vendors, and the plugin tells Claude to treat them as content to show you, not as instructions.

## Skills in this plugin

| Skill | What it does |
| :- | :- |
| `/fullsight:install-skill` | Find a company skill and install it |
| `/fullsight:inbox` | See and answer what colleagues sent you |
| `/fullsight:add-mcp-server` | Find an approved MCP server and add it |
| `/fullsight:share` | Prepare a send for you to confirm on Fullsight |

## Privacy

What these tools return, such as skill files and colleagues' names when you share something, goes to Claude as part of your conversation. See the [Fullsight privacy policy](https://fullsight.app/privacy).

## Help

Email [support@fullsight.app](mailto:support@fullsight.app).
