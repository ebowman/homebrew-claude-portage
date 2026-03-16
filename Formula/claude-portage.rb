class ClaudePortage < Formula
  include Language::Python::Virtualenv

  desc "Portable Claude Code workspace archives"
  homepage "https://github.com/ebowman/claude-portage"
  url "https://files.pythonhosted.org/packages/54/97/3f8eb510b9a77873ed0e252f45d37ce54d1dff823b73dff72d55e3d30d88/claude_portage-0.2.4.tar.gz"
  sha256 "a04db3227ae367be1e9b0a8f944144836d8044ea4db9e3ce9f2a63104563200b"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "0.2.4", shell_output("#{bin}/claude-portage --version")
  end
end
