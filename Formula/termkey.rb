# typed: false
# frozen_string_literal: true

class Termkey < Formula
  desc "CLI encrypted storage for private keys and seed phrases"
  homepage "https://github.com/ryanonmars/termkey"
  url "https://github.com/ryanonmars/termkey/releases/download/v1.0.0/termkey-linux-x86_64.zip"
  version "1.0.0"
  sha256 "3667b23e82ac63991bf0dbf5d889da515adb14692f48011a06c2a3de5cd0daf8"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ryanonmars/termkey/releases/download/v1.0.0/termkey-macos-x86_64.zip"
      sha256 "332118e9ccc3a316d0960863163dffbe447b7580f7e91236f472e0a8282767bb"
    end

    on_arm do
      url "https://github.com/ryanonmars/termkey/releases/download/v1.0.0/termkey-macos-aarch64.zip"
      sha256 "e4e2b43fee84933fdcf507167289bee8f6a34e94b6d8cd9724c56220bd6f97da"
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
