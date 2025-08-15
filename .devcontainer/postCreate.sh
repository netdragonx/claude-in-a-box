#!/usr/bin/env bash
set -euxo pipefail  # Added -x for verbose/debug output

# Install Claude (always get latest version)
echo "Installing Claude Code CLI..."
npm install -g @anthropic-ai/claude-code@latest

# Configure Claude to run in dangerous mode (full permissions in container)
echo "Configuring Claude settings..."
mkdir -p ~/.claude
echo '{"dangerous": true}' > ~/.claude/settings.json

# Ensure pnpm store-dir is under the user home to avoid permissions / cross-device issues
pnpm config set store-dir /home/node/.local/share/pnpm/store

# Install CCPlugins via installer script (auto-accept prompts)
echo "y" | curl -sSL https://raw.githubusercontent.com/brennercruvinel/CCPlugins/main/install.sh | bash || true

# Install workspace deps if a lockfile exists
echo "Checking for workspace dependencies..."
if [ -f /workspace/pnpm-lock.yaml ] || [ -f /workspace/package.json ]; then
  echo "Installing workspace dependencies with pnpm..."
  pnpm install || true
else
  echo "No workspace dependencies to install"
fi

# Get awesome-claude-agents agents
echo "Setting up awesome-claude-agents..."
mkdir -p ~/.claude/agents

# Clean up any existing clone
if [ -d "awesome-claude-agents" ]; then
  echo "Removing existing awesome-claude-agents directory..."
  rm -rf awesome-claude-agents
fi

echo "Cloning awesome-claude-agents repository..."
git clone https://github.com/vijaythecoder/awesome-claude-agents awesome-claude-agents || {
  echo "Failed to clone awesome-claude-agents repository"
  exit 1
}

if [ -d "./awesome-claude-agents/agents" ]; then
  echo "Copying agents to ~/.claude/agents/..."
  cp -r ./awesome-claude-agents/agents/* ~/.claude/agents/ || {
    echo "Failed to copy agents"
    exit 1
  }
  echo "Successfully copied agents"
else
  echo "Warning: agents directory not found in cloned repository"
fi

echo "Cleaning up temporary clone..."
rm -rf awesome-claude-agents

# Run firewall init last (needs sudo)
echo "Initializing firewall..."
sudo /usr/local/bin/init-firewall.sh || true

echo "postCreate script completed successfully!"
