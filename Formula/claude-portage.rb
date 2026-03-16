class ClaudePortage < Formula
  include Language::Python::Virtualenv

  desc "Portable Claude Code workspace archives"
  homepage "https://github.com/ebowman/claude-portage"
  url "https://files.pythonhosted.org/packages/64/68/dd4e38873fab6f8d1eb7f434954d72225d6717d8426fa8e2c05afbbc72b9/claude_portage-0.2.5.tar.gz"
  sha256 "ede59bda83836219a13b36699e5efeda166e096f725901c3e3d7d2225b747158"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "0.2.5", shell_output("#{bin}/claude-portage --version")
  end
end
