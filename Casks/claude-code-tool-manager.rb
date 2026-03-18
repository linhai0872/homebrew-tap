cask "claude-code-tool-manager" do
  version "1.0.0"

  on_arm do
    url "https://github.com/linhai0872/claude-code-tool-manager/releases/download/v1.0.0/Claude.Code.Tool.Manager_1.0.0_aarch64.dmg"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  end

  on_intel do
    url "https://github.com/linhai0872/claude-code-tool-manager/releases/download/v1.0.0/Claude.Code.Tool.Manager_1.0.0_x64.dmg"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  end

  name "Claude Code Tool Manager"
  desc "GUI for managing Claude Code MCP servers, skills, hooks, and more"
  homepage "https://github.com/linhai0872/claude-code-tool-manager"

  app "Claude Code Tool Manager.app"

  zap trash: [
    "~/Library/Application Support/com.claude-code-tool-manager.app",
    "~/Library/WebKit/com.claude-code-tool-manager.app",
  ]
end
