# typed: false
# frozen_string_literal: true

class Termkey < Formula
  desc "CLI encrypted storage for private keys and seed phrases"
  homepage "https://github.com/ryanonmars/termkey"
  url "https://github.com/ryanonmars/termkey/releases/download/v1.0.2/termkey-macos-aarch64.zip"
  version "1.0.2"
  sha256 "b196d62fabc365043941ade8ceeb5c1e095e38dd13243d6b7560afb3714a1f7e"
  license "MIT"
  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "termkey"
    libexec.install "termkey-native-host"
  end

  test do
    assert_match "Encrypted storage for", shell_output("#{bin}/termkey --help")
  end
end
