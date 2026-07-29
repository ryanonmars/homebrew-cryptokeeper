# typed: false
# frozen_string_literal: true

class Termkey < Formula
  desc "CLI encrypted storage for private keys and seed phrases"
  homepage "https://github.com/ryanonmars/termkey"
  url "https://github.com/ryanonmars/termkey/releases/download/v0.2.30/termkey-linux-x86_64.zip"
  version "0.2.30"
  sha256 "1f33de6c960b67fba3524268d3a9e744214edc5c6186d57188dbd1dcc158dd7c"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ryanonmars/termkey/releases/download/v0.2.30/termkey-macos-x86_64.zip"
      sha256 "f53bbbcb687d5229d20dfe4fc9093c4cf8fe141bb61834ae58958dc522139c00"
    end

    on_arm do
      url "https://github.com/ryanonmars/termkey/releases/download/v0.2.30/termkey-macos-aarch64.zip"
      sha256 "a0860b86ce22dfd95b94e7f0f17b3e3664003c00c5f50c0ebad94b02573fdc15"
    end
  end

  def install
    bin.install "termkey"
    libexec.install "termkey-native-host"
    pkgshare.install "browser-extension"
  end

  test do
    assert_match "Encrypted storage for", shell_output("#{bin}/termkey --help")
  end
end
