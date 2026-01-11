# Homebrew formula for AgentMesh Runner
# https://github.com/AgentsMesh/AgentsMeshRunner

class AgentmeshRunner < Formula
  desc "AgentMesh Runner - AI Agent Task Executor"
  homepage "https://agentmesh.dev"
  version "0.1.0"
  license "MIT"

  on_macos do
    url "https://github.com/AgentsMesh/AgentsMeshRunner/releases/download/v0.1.0/agentmesh-runner_0.1.0_darwin_all.tar.gz"
    sha256 "2ea73b07c42b0eb10c043f4d10d0dbefa2710669acc7b5468f49b779d3db898c"
  end

  on_linux do
    on_intel do
      url "https://github.com/AgentsMesh/AgentsMeshRunner/releases/download/v0.1.0/agentmesh-runner_0.1.0_linux_amd64.tar.gz"
      sha256 "7fcbafa0c2a098198719eb594a93d0471613fbc625751bd41413a083ace7eebb"
    end
    on_arm do
      url "https://github.com/AgentsMesh/AgentsMeshRunner/releases/download/v0.1.0/agentmesh-runner_0.1.0_linux_arm64.tar.gz"
      sha256 "42daa491142d16b2e97642becd9a5c5008db15c230b13ac702f87a00d402e758"
    end
  end

  def install
    bin.install "runner"
  end

  def caveats
    <<~EOS
      To get started with AgentMesh Runner:

      1. Register the runner with your AgentMesh server:
         runner register --server https://api.agentmesh.dev --token YOUR_TOKEN

      2. Start the runner:
         runner run

      For more information, visit: https://agentmesh.dev/docs/runner
    EOS
  end

  test do
    system "#{bin}/runner", "version"
  end
end
