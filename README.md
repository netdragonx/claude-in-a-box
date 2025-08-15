# Claude-in-a-Box

A development container template specifically designed for running Claude Code CLI in "dangerous mode" with full permissions and helpful AI coding tools pre-installed.

## Features

- **Claude Code CLI** - Latest version installed with dangerous mode enabled for full container permissions
- **CCPlugins** - Powerful Claude plugins for enhanced coding capabilities
- **Awesome Claude Agents** - Collection of specialized AI agents for various coding tasks
- **pnpm** - Fast package manager for Node.js projects
- **Zsh shell** with Oh My Zsh for an enhanced terminal experience
- **Pre-configured VS Code** extensions (ESLint, Prettier, GitLens)
- **Network security** - Firewall configured to allow only essential development domains
- **Node.js environment** ready for modern development

## Usage

1. Clone this repository or use it as a template
2. Open in VS Code with the Remote-Containers extension
3. Build and start the devcontainer (first build may take a few minutes)
4. Claude Code CLI will be available with dangerous mode enabled
5. Access CCPlugins and Awesome Claude Agents for enhanced AI assistance
6. Start coding with full AI-powered development capabilities!

## What's Included

### Claude Code CLI
- Installed with latest version and dangerous mode enabled
- Full container permissions for unrestricted file system access
- Configuration stored in `~/.claude/settings.json`

### CCPlugins
- Automatically installed via the official installer script
- Provides enhanced Claude capabilities and integrations

### Awesome Claude Agents
- Collection of specialized AI agents cloned from [vijaythecoder/awesome-claude-agents](https://github.com/vijaythecoder/awesome-claude-agents)
- Agents available in `~/.claude/agents/` directory
- Ready to use for various coding tasks and specializations

### Security Features
- Network firewall configured to allow only essential development domains
- Blocks access to unauthorized external services while preserving Claude functionality

## Customization

### Adding More Tools

Modify `.devcontainer/Dockerfile` to install additional development tools and dependencies.

### Extending Post-Creation Setup

Edit `.devcontainer/postCreate.sh` to add custom initialization steps that run after container creation.

## Requirements

- Docker Desktop or Docker Engine
- Visual Studio Code
- Remote - Containers extension for VS Code
