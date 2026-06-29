class Clinit < Formula
  desc "Claude Code project scaffolder"
  homepage "https://github.com/dimasno1/clinit"
  url "https://github.com/dimasno1/clinit/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "ddbccb9374be9d6eee9c05c74ba967ce4776fb952c76ef2bc871ac6185ddb4d6"
  license "MIT"

  depends_on "jq"

  def install
    bin.install "clinit.sh" => "clinit"
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/clinit --version")
  end
end
