class Clinit < Formula
  desc "Claude Code project scaffolder"
  homepage "https://github.com/dzmitry-paplauski/clinit"
  url "https://github.com/dzmitry-paplauski/clinit/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "PLACEHOLDER"
  license "MIT"

  depends_on "jq"

  def install
    bin.install "clinit.sh" => "clinit"
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/clinit --version")
  end
end
