class ClaudePortage < Formula
  include Language::Python::Virtualenv

  desc "Portable Claude Code workspace archives"
  homepage "https://github.com/ebowman/claude-portage"
  url "https://files.pythonhosted.org/packages/6b/f0/7e674767e0a06391e8e73f642a4f9774251a48ade15cd45eb307ea82ffac/claude_portage-0.2.0.tar.gz"
  sha256 "1099397c3d949988d2dd3e6e8c56ac034806888e0fed9511caa00aaa4afc0f36"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "0.2.0", shell_output("#{bin}/claude-portage --version")
  end
end
