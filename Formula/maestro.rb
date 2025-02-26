# Generated with JReleaser 1.13.1 at 2025-02-26T21:01:01.111159Z

class Maestro < Formula
  desc "The easiest way to automate UI testing for your mobile app"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/test-party/maestro/releases/download/cli-1.39.13/maestro.zip"
  version "1.39.13"
  sha256 "0313e09725e2c7d8935dbd4ce17c8f0c6cacad3dd58f30b8ca1dd2617b7894c8"
  license "Apache-2.0"

  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.39.13", output
  end
end
