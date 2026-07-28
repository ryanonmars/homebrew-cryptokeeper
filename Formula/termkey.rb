# typed: false
# frozen_string_literal: true

class Termkey < Formula
  desc "CLI encrypted storage for private keys and seed phrases"
  homepage "https://github.com/ryanonmars/termkey"
  url "https://github.com/ryanonmars/termkey/releases/download/v0.2.29/termkey-linux-x86_64.zip"
  version "0.2.29"
  sha256 "75d9c26efca66fd974f714d1ff3d96d7e676493ab53f125dc67a8dc4ca45f304"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ryanonmars/termkey/releases/download/v0.2.29/termkey-macos-x86_64.zip"
      sha256 "a27df6b32d48f6dd8089e057086154f0de2939820e71949899aa28c71a9f00c8"
    end

    on_arm do
      url "https://github.com/ryanonmars/termkey/releases/download/v0.2.29/termkey-macos-aarch64.zip"
      sha256 "18769fc9bf686c0f51c6a5c08cf98bc80ab3860f59e9e790c2a287c4da62507d"
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
