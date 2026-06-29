class Clinit < Formula
  desc "Claude Code project scaffolder"
  homepage "https://github.com/dimasno1/clinit"
  url "https://github.com/dimasno1/clinit/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "ea0880ca3595c48623d254f357b65fcac8db8cb13afc129c657ae40cf6bb31e5"
  license "MIT"

  depends_on "jq"

  def install
    bin.install "clinit.sh" => "clinit"
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/clinit --version")
  end
end
