cask "claude-code-tool-manager" do
  version "1.0.0"

  on_arm do
    url "https://github.com/linhai0872/claude-code-tool-manager/releases/download/v1.0.0/Claude.Code.Tool.Manager_1.0.0_aarch64.dmg"
    sha256 "e144d1eb2ee63029947d797ed034d7ed744ad462636977f870c54437c225ae09"
  end

  on_intel do
    url "https://github.com/linhai0872/claude-code-tool-manager/releases/download/v1.0.0/Claude.Code.Tool.Manager_1.0.0_x64.dmg"
    sha256 "941af7cbe47e05eb8e08f3236ca5405858f938edb13aa5df38f0120efc2ec2de"
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