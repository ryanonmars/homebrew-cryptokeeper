# typed: false
# frozen_string_literal: true

class Termkey < Formula
  desc "CLI encrypted storage for private keys and seed phrases"
  homepage "https://github.com/ryanonmars/termkey"
  url "https://github.com/ryanonmars/termkey/releases/download/v0.2.31/termkey-linux-x86_64.zip"
  version "0.2.31"
  sha256 "a8557b46ff6f0bab238517a45715ba3a94f260c0eb3efb76033316521b43e028"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ryanonmars/termkey/releases/download/v0.2.31/termkey-macos-x86_64.zip"
      sha256 "3d722a1133b951109baac936fe52e2586e957d14c04062b6f5976f960a86c895"
    end

    on_arm do
      url "https://github.com/ryanonmars/termkey/releases/download/v0.2.31/termkey-macos-aarch64.zip"
      sha256 "97b8dd950f6a6e10cdf5c935b924bbfb8f6fdda7608d0a9c0167729c073f0011"
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
