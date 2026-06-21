class ClaudeStatus < Formula
  desc "Live terminal dashboard for Claude service status"
  homepage "https://github.com/adversarydsgn/claude-status"
  url "https://github.com/adversarydsgn/claude-status/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "94ea964f1715975b4d4d1d74de0de2ba59b5c19d62fde5c9354b24acc6dec89d"
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
        https://github.com/adversarydsgn/claude-status#menubar-app
    EOS
  end

  test do
    assert_predicate bin/"claude-status", :executable?
  end
end
