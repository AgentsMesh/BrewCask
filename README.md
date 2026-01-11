# AgentsMesh Homebrew Tap

This is the official Homebrew tap for [AgentsMesh](https://agentsmesh.ai) tools.

## Installation

```bash
# Add the tap
brew tap agentsmesh/tap https://github.com/AgentsMesh/BrewCask

# Install AgentsMesh Runner
brew install agentsmesh/tap/agentsmesh-runner
```

## Available Formulae

| Formula | Description |
|---------|-------------|
| `agentsmesh-runner` | AgentsMesh Runner - AI Agent Task Executor |

## Usage

After installation:

```bash
# Register runner with server
runner register --server https://api.agentsmesh.ai --token YOUR_TOKEN

# Start runner
runner run

# Check version
runner version
```

## Updating

```bash
brew update
brew upgrade agentsmesh-runner
```

## Uninstalling

```bash
brew uninstall agentsmesh-runner
brew untap agentsmesh/tap
```

## Links

- [AgentsMesh Website](https://agentsmesh.ai)
- [Runner Documentation](https://agentsmesh.ai/docs/runner)
- [Runner Releases](https://github.com/AgentsMesh/AgentsMeshRunner/releases)
