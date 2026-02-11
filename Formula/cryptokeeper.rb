# typed: false
# frozen_string_literal: true

class Cryptokeeper < Formula
  desc "CLI encrypted storage for cryptocurrency private keys and seed phrases"
  homepage "https://github.com/ryanonmars/CryptoKeeper"
  version "0.1.0"
  url "https://github.com/ryanonmars/CryptoKeeper/releases/download/v0.1.0/cryptokeeper-v0.1.0-macos.zip"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"  # from release asset; update for new releases
  license "MIT"

  on_macos do
    def install
      bin.install "cryptokeeper"
    end
  end

  test do
    assert_match "Encrypted storage for cryptocurrency", shell_output("#{bin}/cryptokeeper --help")
  end
end
