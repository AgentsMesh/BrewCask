# Homebrew formula for AgentsMesh Runner
# https://github.com/AgentsMesh/AgentsMeshRunner

class AgentsmeshRunner < Formula
  desc "AgentsMesh Runner - AI Agent Task Executor"
  homepage "https://agentsmesh.ai"
  version "0.1.1"
  license "MIT"

  on_macos do
    url "https://github.com/AgentsMesh/AgentsMeshRunner/releases/download/v0.1.1/agentsmesh-runner_0.1.1_darwin_all.tar.gz"
    sha256 "8b9505848c4807d321528ec81031d248b0001fbb343f9394340b85985c5fc37c"
  end

  on_linux do
    on_intel do
      url "https://github.com/AgentsMesh/AgentsMeshRunner/releases/download/v0.1.1/agentsmesh-runner_0.1.1_linux_amd64.tar.gz"
      sha256 "81500ea8f0894f55884661f47798f695903db91c5d6ec4aa65319fb959b7314d"
    end
    on_arm do
      url "https://github.com/AgentsMesh/AgentsMeshRunner/releases/download/v0.1.1/agentsmesh-runner_0.1.1_linux_arm64.tar.gz"
      sha256 "ffac862e0c8c8fe49b7549d872e9b2d715a7532756ee7d2635393c0058babde6"
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
