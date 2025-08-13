# DevContainer Template

A customizable development container template for consistent development environments across projects.

## Features

- Pre-configured VS Code extensions and settings
- Zsh shell with Oh My Zsh
- Node.js development environment
- Git integration
- Consistent formatting with Prettier and ESLint

## Usage

1. Clone this repository or use it as a template
2. Customize the `.devcontainer/devcontainer.json` file for your specific needs
3. Open in VS Code with the Remote-Containers extension
4. Start developing!

## Customization

### Modifying the DevContainer

Edit `.devcontainer/devcontainer.json` to:

- Add or remove VS Code extensions
- Change container settings
- Modify environment variables
- Update mount points

### Dockerfile Changes

Modify `.devcontainer/Dockerfile` to:

- Install additional tools and dependencies
- Change base images
- Configure development environment

## Requirements

- Docker Desktop or Docker Engine
- Visual Studio Code
- Remote - Containers extension for VS Code
