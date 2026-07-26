# typed: false
# frozen_string_literal: true

class Termkey < Formula
  desc "CLI encrypted storage for private keys and seed phrases"
  homepage "https://github.com/ryanonmars/termkey"
  url "https://github.com/ryanonmars/termkey/releases/download/v0.2.27/termkey-linux-x86_64.zip"
  version "0.2.27"
  sha256 "0c0d14aff7b8a620cd9a6e6d5bd4af4adcfa3485e61c1df941dcd9cbad8d3716"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ryanonmars/termkey/releases/download/v0.2.27/termkey-macos-x86_64.zip"
      sha256 "3e03c54c27d49e6427b9acae85346aa9aa59b766b2d5c6bba519296e19b42a71"
    end

    on_arm do
      url "https://github.com/ryanonmars/termkey/releases/download/v0.2.27/termkey-macos-aarch64.zip"
      sha256 "e5bb71a574a9e85a767503d021e1ed199a9eefe8fa975c8e609823ef843d0e4b"
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
