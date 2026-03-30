class ClaudeStatus < Formula
  desc "Live terminal dashboard for Claude service status"
  homepage "https://github.com/adversarydsgn/claude-status-terminal"
  url "https://github.com/adversarydsgn/claude-status-terminal.git", tag: "v1.0.0"
  license "MIT"
  head "https://github.com/adversarydsgn/claude-status-terminal.git", branch: "main"

  depends_on :macos

  def install
    bin.install "claude-status.sh" => "claude-status"
  end

  def caveats
    <<~EOS
      Run the live dashboard:
        claude-status

      For the menubar app (optional):
        cd #{HOMEBREW_PREFIX}/share/claude-status && ./build.sh
        See: https://github.com/adversarydsgn/claude-status-terminal#menubar-app
    EOS
  end

  test do
    # Verify script exists and has the right structure
    assert_predicate bin/"claude-status", :executable?
  end
end
