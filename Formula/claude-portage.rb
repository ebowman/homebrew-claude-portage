class ClaudePortage < Formula
  include Language::Python::Virtualenv

  desc "Portable Claude Code workspace archives"
  homepage "https://github.com/ebowman/claude-portage"
  url "https://files.pythonhosted.org/packages/42/be/2f33f29d3e7f975d5f629761916ddf674cdc65cd309f31ba514de9b023f8/claude_portage-0.2.3.tar.gz"
  sha256 "3bb0741a7493e8eb910d934dac4e4cbea02f4dc2aaac786bcd5965e1c12ec967"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "0.2.3", shell_output("#{bin}/claude-portage --version")
  end
end
