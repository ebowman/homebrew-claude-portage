class ClaudePortage < Formula
  include Language::Python::Virtualenv

  desc "Portable Claude Code workspace archives"
  homepage "https://github.com/ebowman/claude-portage"
  url "https://files.pythonhosted.org/packages/d9/47/eab98e03fbe224de8286a8f82819c2fd4e1a0b9a1608af5fc31ee35cd650/claude_portage-0.2.2.tar.gz"
  sha256 "b53d9a247fcda8128774a2edc1989f7567915a5fec773047e89dd510ccf491e7"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "0.2.2", shell_output("#{bin}/claude-portage --version")
  end
end
