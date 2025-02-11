# Generated with JReleaser 1.13.1 at 2025-02-11T23:18:10.575529Z

class Maestro < Formula
  desc "The easiest way to automate UI testing for your mobile app"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/test-party/maestro/releases/download/cli-1.39.12/maestro.zip"
  version "1.39.12"
  sha256 "82008f37f68ed8efdf3c75247e7472e985d5b7c085056e3b1e85e56b5b25b251"
  license "Apache-2.0"

  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.39.12", output
  end
end
