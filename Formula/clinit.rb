class Clinit < Formula
  desc "Claude Code project scaffolder"
  homepage "https://github.com/dimasno1/clinit"
  url "https://github.com/dimasno1/clinit/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "aa8eed47636e304b34eda430334dabf33d5225354335145d6eb684a59a72e484"
  license "MIT"

  depends_on "jq"

  def install
    bin.install "clinit.sh" => "clinit"
  end

  test do
    assert_match "0.2.1", shell_output("#{bin}/clinit --version")
  end
end
