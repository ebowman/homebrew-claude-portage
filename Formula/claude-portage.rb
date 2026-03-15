class ClaudePortage < Formula
  include Language::Python::Virtualenv

  desc "Portable Claude Code workspace archives"
  homepage "https://github.com/ebowman/claude-portage"
  url "https://files.pythonhosted.org/packages/2c/27/e05e9bebdc71b1a93b97d9f87a5a9d8677e8f91451466e44eec759b599cd/claude_portage-0.2.1.tar.gz"
  sha256 "5861ec0a1fc38a2e9ab8f3808cc740d451378af93354f6b67143e528331c49ae"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "0.2.1", shell_output("#{bin}/claude-portage --version")
  end
end
