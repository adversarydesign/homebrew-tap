class ClaudeStatus < Formula
  desc "Live terminal dashboard for Claude service status"
  homepage "https://github.com/adversarydsgn/claude-status-terminal"
  url "https://github.com/adversarydsgn/claude-status-terminal/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "807c539100fb33dfd0e32179358753af15a747676d4d5c87811269c498a858ff"
  license "MIT"

  depends_on :macos

  def install
    bin.install "claude-status.sh" => "claude-status"
  end

  def caveats
    <<~EOS
      Run the live dashboard:
        claude-status

      For the menubar app (optional), build from source:
        https://github.com/adversarydsgn/claude-status-terminal#menubar-app
    EOS
  end

  test do
    assert_predicate bin/"claude-status", :executable?
  end
end
