# Claude-in-a-Box

An environment for running Claude Code in "dangerous mode" while inside the relative safety of a Docker container **plus** built in agentic tools to help Claude Code extend its vibe coding capabilities.

## Features

- **Claude Code CLI** - Latest version installed with dangerous mode enabled for full container permissions
- **CCPlugins** - Powerful Claude plugins for enhanced coding capabilities
- **Awesome Claude Agents** - Collection of specialized AI agents for various coding tasks
- **VS Code Extensions** Claude Code, ESLint, Prettier, GitLens

## Beginner's Guide

### Step 1: Install Required Software
First, you'll need to install these programs on your computer:

1. **Container System** (choose one)
   
   **Option A: OrbStack**
   - Go to [orbstack.dev](https://orbstack.dev)
   - Much faster and lighter than Docker Desktop
   - Better performance and resource usage
   - Starts up quickly
   
   **Option B: Docker Desktop**
   - Go to [docker.com/products/docker-desktop](https://docker.com/products/docker-desktop)
   - The standard choice, works everywhere
   - More familiar if you've used Docker before
   - Larger download and slower startup

2. **Code Editor** (choose one)

   **Option A: Cursor**
   - Go to [cursor.sh](https://cursor.sh)
   - AI-powered VS Code fork built for AI-assisted coding
   - Perfect companion to Claude Code CLI
   - Has built-in AI features
   
   **Option B: Visual Studio Code**
   - Go to [code.visualstudio.com](https://code.visualstudio.com)
   - The industry standard code editor
   - Huge ecosystem of extensions
   - Works great with Claude too

3. **Remote-Containers Extension** 🔌
   - Open your chosen editor (Cursor or VS Code)
   - Click the Extensions icon in the left sidebar (looks like building blocks)
   - Search for "Remote - Containers" or install directly: [Remote - Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)
   - Click "Install" on the extension by Microsoft

### Step 2: Get This Template
1. **Option A: Download as ZIP** (Easiest)
   - Click the green "Code" button at the top of this page
   - Select "Download ZIP"
   - Extract the ZIP file to a folder on your computer (like your Desktop)

2. **Option B: Clone with Git** (If you know Git)
   - Open a terminal/command prompt
   - Run: `git clone [this-repo-url]`

### Step 3: Open in Your Editor
1. Open your chosen editor (Cursor or VS Code)
2. Click "File" → "Open Folder"
3. Navigate to and select the folder you extracted/cloned
4. Your editor will detect the devcontainer configuration

### Step 4: Start Your AI-Powered Environment
1. Your editor should show a popup saying "Reopen in Container" - **click it!**
   - If you don't see it, press `Ctrl+Shift+P` (or `Cmd+Shift+P` on Mac)
   - Type "Remote-Containers: Reopen in Container" and press Enter

2. **Wait patiently** ⏳ - The first build takes 5-10 minutes as it:
   - Downloads the development environment
   - Installs Claude Code CLI
   - Sets up CCPlugins
   - Downloads helpful AI agents
   - Configures everything for you

3. **You're ready!** 🎉 Once the build completes, you'll have:
   - Claude Code CLI ready to help with coding
   - CCPlugins for enhanced capabilities  
   - A collection of specialized AI agents
   - All the tools you need for development

### Step 5: Start Coding with AI
- Open the terminal in your editor (`Terminal` → `New Terminal`)
- Type `claude` to interact with Claude Code CLI
- If using Cursor: Use its built-in AI features alongside Claude for maximum productivity
- If using VS Code: Enjoy the classic experience with Claude's powerful assistance
- All tools are pre-configured and ready to use!

## Troubleshooting for Beginners

### "Container runtime is not running"
- **If using OrbStack**: Make sure OrbStack is open and running (much faster startup)
- **If using Docker Desktop**: Make sure Docker Desktop is running (check system tray for whale icon)
- Wait for the container runtime to fully load before proceeding
- Try restarting if needed

### "No devcontainer popup appeared"
- Try pressing `Ctrl+Shift+P` (Windows/Linux) or `Cmd+Shift+P` (Mac)
- Type "Remote-Containers: Reopen in Container" and press Enter
- Make sure you opened the folder (not just a single file)
- Works the same in both Cursor and VS Code

### "Build is taking forever or failed"
- Be patient! First builds can take 5-10 minutes
- Check your internet connection - lots of downloads happen
- If it fails, try "Remote-Containers: Rebuild Container" from the command palette
- OrbStack users typically see faster builds than Docker Desktop

### "I don't see the Remote-Containers extension"
- In your editor, click the Extensions icon (puzzle piece) in the left sidebar
- Search for "Remote - Containers" (with the hyphen)
- Or use this direct link: [Remote - Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)
- Extension works identically in both Cursor and VS Code

### Still stuck?
- Make sure your container runtime shows containers are running
- Restart your editor and try again
- Check that you have enough disk space (containers need several GB)
- Try switching to the other container runtime option if issues persist

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