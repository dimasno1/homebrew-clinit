class Clinit < Formula
  desc "Claude Code project scaffolder"
  homepage "https://github.com/dimasno1/clinit"
  url "https://github.com/dimasno1/clinit/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "cc1639c8558ef0889f9a5012230bcff4574e6b31960e7642b62a2ea8ba0679f7"
  license "MIT"

  depends_on "jq"

  def install
    bin.install "clinit.sh" => "clinit"
  end

  test do
    assert_match "0.2.0", shell_output("#{bin}/clinit --version")
  end
end
