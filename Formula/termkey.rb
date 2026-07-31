# typed: false
# frozen_string_literal: true

class Termkey < Formula
  desc "CLI encrypted storage for private keys and seed phrases"
  homepage "https://github.com/ryanonmars/termkey"
  url "https://github.com/ryanonmars/termkey/releases/download/v0.2.34/termkey-linux-x86_64.zip"
  version "0.2.34"
  sha256 "39966f557fe0d37aba0412eb434b9db1f4a4b8ebaf7f3ef52b7479b2831dfc84"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ryanonmars/termkey/releases/download/v0.2.34/termkey-macos-x86_64.zip"
      sha256 "57dedcfa75b68c33f8f9b1367ee7f0397117a76f1c8fe4b0ca0caa3d2735e726"
    end

    on_arm do
      url "https://github.com/ryanonmars/termkey/releases/download/v0.2.34/termkey-macos-aarch64.zip"
      sha256 "1e7c226c253b8f74b75f8d3a52b4364cfc69aa8c4078cde966a183257e46820b"
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
