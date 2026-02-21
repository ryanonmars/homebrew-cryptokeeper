# typed: false
# frozen_string_literal: true

class Cryptokeeper < Formula
  desc "CLI encrypted storage for cryptocurrency private keys and seed phrases"
  homepage "https://github.com/ryanonmars/CryptoKeeper"
  version "0.2.4"
  license "MIT"

  url "https://github.com/ryanonmars/CryptoKeeper/releases/download/v0.2.4/cryptokeeper-linux-x86_64.zip"
  sha256 "5a4bcdafe11ec4159f97c5d65a68ead427adec801921f668c70994987c8e250c"

  on_macos do
    on_intel do
      url "https://github.com/ryanonmars/CryptoKeeper/releases/download/v0.2.4/cryptokeeper-macos-x86_64.zip"
      sha256 "3f7c2692ab7f8b38898a0f95d3168cd15f074b9cf6de766bec1f781e0a20313f"
    end

    on_arm do
      url "https://github.com/ryanonmars/CryptoKeeper/releases/download/v0.2.4/cryptokeeper-macos-aarch64.zip"
      sha256 "41c3f8c968405a4d803510cc33e7c194198e568ed2dbcce4c852ae565d712997"
    end
  end

  def install
    bin.install "cryptokeeper"
  end

  on_linux do
    url "https://github.com/ryanonmars/CryptoKeeper/releases/download/v0.2.4/cryptokeeper-linux-x86_64.zip"
    sha256 "5a4bcdafe11ec4159f97c5d65a68ead427adec801921f668c70994987c8e250c"

    def install
      bin.install "cryptokeeper"
    end
  end

  test do
    assert_match "Encrypted storage for cryptocurrency", shell_output("#{bin}/cryptokeeper --help")
  end
end
