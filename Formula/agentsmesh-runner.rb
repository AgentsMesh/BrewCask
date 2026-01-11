# Homebrew formula for AgentsMesh Runner
# https://github.com/AgentsMesh/AgentsMeshRunner

class AgentsmeshRunner < Formula
  desc "AgentsMesh Runner - AI Agent Task Executor"
  homepage "https://agentsmesh.ai"
  version "0.1.3"
  license "MIT"

  on_macos do
    url "https://github.com/AgentsMesh/AgentsMeshRunner/releases/download/v0.1.3/agentsmesh-runner_0.1.3_darwin_all.tar.gz"
    sha256 "748073e6fa5076e0441cfa0d6c85416f13920d3ea1d074fccbb1958c928ee12c"
  end

  on_linux do
    on_intel do
      url "https://github.com/AgentsMesh/AgentsMeshRunner/releases/download/v0.1.3/agentsmesh-runner_0.1.3_linux_amd64.tar.gz"
      sha256 "9f8f80daa164f7af98cc683f8dcf6c907b2d05f550a7e95d1eaec552c6cac55d"
    end
    on_arm do
      url "https://github.com/AgentsMesh/AgentsMeshRunner/releases/download/v0.1.3/agentsmesh-runner_0.1.3_linux_arm64.tar.gz"
      sha256 "8049cae822dd024d6f5a6a161249dac91f8c6b3386eef337e7116bd6674a8de9"
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
