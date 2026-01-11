# AgentsMesh Homebrew Tap

This is the official Homebrew tap for [AgentMesh](https://agentmesh.dev) tools.

## Installation

```bash
# Add the tap
brew tap agentsmesh/tap https://github.com/AgentsMesh/BrewCask

# Install AgentMesh Runner
brew install agentsmesh/tap/agentmesh-runner
```

## Available Formulae

| Formula | Description |
|---------|-------------|
| `agentmesh-runner` | AgentMesh Runner - AI Agent Task Executor |

## Usage

After installation:

```bash
# Register runner with server
runner register --server https://api.agentmesh.dev --token YOUR_TOKEN

# Start runner
runner run

# Check version
runner version
```

## Updating

```bash
brew update
brew upgrade agentmesh-runner
```

## Uninstalling

```bash
brew uninstall agentmesh-runner
brew untap agentsmesh/tap
```

## Links

- [AgentMesh Website](https://agentmesh.dev)
- [Runner Documentation](https://agentmesh.dev/docs/runner)
- [Runner Releases](https://github.com/AgentsMesh/AgentsMeshRunner/releases)
