# typed: false
# frozen_string_literal: true

class Termkey < Formula
  desc "CLI encrypted storage for private keys and seed phrases"
  homepage "https://github.com/ryanonmars/termkey"
  url "https://github.com/ryanonmars/termkey/releases/download/v1.0.1/termkey-macos-aarch64.zip"
  version "1.0.1"
  sha256 "a7b0d09bd045eae04efa293f27f02464f6f7d4150883a309e11cd468020031a7"
  license "MIT"
  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "termkey"
    libexec.install "termkey-native-host"
    pkgshare.install "browser-extension"
  end

  test do
    assert_match "Encrypted storage for", shell_output("#{bin}/termkey --help")
  end
end
