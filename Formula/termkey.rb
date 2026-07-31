# typed: false
# frozen_string_literal: true

class Termkey < Formula
  desc "CLI encrypted storage for private keys and seed phrases"
  homepage "https://github.com/ryanonmars/termkey"
  url "https://github.com/ryanonmars/termkey/releases/download/v0.2.32/termkey-linux-x86_64.zip"
  version "0.2.32"
  sha256 "6068784a23145eb46fdc9af864267c73a17805c8ef3645c10c5382c8321f5552"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ryanonmars/termkey/releases/download/v0.2.32/termkey-macos-x86_64.zip"
      sha256 "d6f1b983a11a52271b5340c74ea86fd18d4abe5790ef22041b58011917522e37"
    end

    on_arm do
      url "https://github.com/ryanonmars/termkey/releases/download/v0.2.32/termkey-macos-aarch64.zip"
      sha256 "5bf37e0b9607e25107da94a35516a9d3713915fcdb566513a4ae6de1eb6fae8e"
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
