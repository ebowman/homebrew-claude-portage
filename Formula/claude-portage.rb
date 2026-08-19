class ClaudePortage < Formula
  include Language::Python::Virtualenv

  desc "Portable Claude Code workspace archives"
  homepage "https://github.com/ebowman/claude-portage"
  url "https://files.pythonhosted.org/packages/e7/91/5a54ef94ac1df49157593f9d9a02cb64ff78eb24e546a61cabe3e630af86/claude_portage-0.2.6.tar.gz"
  sha256 "eaa7b790c261f12063c725a554ab0d38f0b193df3addc14ee691942abf23a444"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "0.2.6", shell_output("#{bin}/claude-portage --version")
  end
end
