# typed: false
# frozen_string_literal: true

class Cryptokeeper < Formula
  desc "CLI encrypted storage for cryptocurrency private keys and seed phrases"
  homepage "https://github.com/ryanonmars/CryptoKeeper"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ryanonmars/CryptoKeeper/releases/download/v0.2.1/cryptokeeper-macos-x86_64.zip"
      sha256 "86d0e9ce6cd1aa09fe9846ebd524692b916c37da29440e26dedd5efec357fe7e"
    end

    on_arm do
      url "https://github.com/ryanonmars/CryptoKeeper/releases/download/v0.2.1/cryptokeeper-macos-aarch64.zip"
      sha256 "5bee617bffa4edffc8cbbd0b5dbd63a99626cc1074388845ecbd747d54c40658"
    end

    def install
      bin.install "cryptokeeper"
      bin.install_symlink "cryptokeeper" => "keeper"
    end
  end

  test do
    assert_match "Encrypted storage for cryptocurrency", shell_output("#{bin}/cryptokeeper --help")
    assert_match "Encrypted storage for cryptocurrency", shell_output("#{bin}/keeper --help")
  end
end
