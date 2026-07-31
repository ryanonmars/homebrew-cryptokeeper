# typed: false
# frozen_string_literal: true

class Termkey < Formula
  desc "CLI encrypted storage for private keys and seed phrases"
  homepage "https://github.com/ryanonmars/termkey"
  url "https://github.com/ryanonmars/termkey/releases/download/v0.2.36/termkey-linux-x86_64.zip"
  version "0.2.36"
  sha256 "0ba1c87dd30b5ce533708e5360fb738b2fbb324d9024fb5f66326439b0f2ee9f"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ryanonmars/termkey/releases/download/v0.2.36/termkey-macos-x86_64.zip"
      sha256 "7bfeff8fe01c997bec03a7ac24bad64a401ac3cb56f1bb251157937ba917aa17"
    end

    on_arm do
      url "https://github.com/ryanonmars/termkey/releases/download/v0.2.36/termkey-macos-aarch64.zip"
      sha256 "5e71c11eea1330f444ef7fd027a198b26b6dcffb1d01a6ae7cbc5c0660576340"
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
