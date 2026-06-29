class Clinit < Formula
  desc "Claude Code project scaffolder"
  homepage "https://github.com/dimasno1/clinit"
  url "https://github.com/dimasno1/clinit/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "93e84037b5b99af8ad244d8b15b3f68e797ccd30fe1ada5b6c65c869a641d493"
  license "MIT"

  depends_on "jq"

  def install
    bin.install "clinit.sh" => "clinit"
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/clinit --version")
  end
end
