# Homebrew formula for AgentsMesh Runner
# https://github.com/AgentsMesh/AgentsMeshRunner

class AgentsmeshRunner < Formula
  desc "AgentsMesh Runner - AI Agent Task Executor"
  homepage "https://agentsmesh.ai"
  version "0.1.2"
  license "MIT"

  on_macos do
    url "https://github.com/AgentsMesh/AgentsMeshRunner/releases/download/v0.1.2/agentsmesh-runner_0.1.2_darwin_all.tar.gz"
    sha256 "90334a6d5884f1b55b7b1c38c9d2ed74b400ff39663d408ebbc18fa20de6cbf9"
  end

  on_linux do
    on_intel do
      url "https://github.com/AgentsMesh/AgentsMeshRunner/releases/download/v0.1.2/agentsmesh-runner_0.1.2_linux_amd64.tar.gz"
      sha256 "5d591ab9cee412784d3fef619d7376188d8c2523dcd3ca280af437acf6b57715"
    end
    on_arm do
      url "https://github.com/AgentsMesh/AgentsMeshRunner/releases/download/v0.1.2/agentsmesh-runner_0.1.2_linux_arm64.tar.gz"
      sha256 "0acf09f23f49ca3e476deeef793571deaf85c03a868a2b77264b4e2844aba5bb"
    end
  end

  def install
    bin.install "runner"
  end

  def caveats
    <<~EOS
      To get started with AgentsMesh Runner:

      1. Register the runner with your AgentsMesh server:
         runner register --server https://api.agentsmesh.ai --token YOUR_TOKEN

      2. Start the runner:
         runner run

      For more information, visit: https://agentsmesh.ai/docs/runner
    EOS
  end

  test do
    system "#{bin}/runner", "version"
  end
end
