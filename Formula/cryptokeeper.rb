# typed: false
# frozen_string_literal: true

class Cryptokeeper < Formula
  desc "CLI encrypted storage for cryptocurrency private keys and seed phrases"
  homepage "https://github.com/ryanonmars/CryptoKeeper"
  version "0.1.7"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ryanonmars/CryptoKeeper/releases/download/v0.1.7/cryptokeeper-macos-x86_64.zip"
      sha256 "c583c8d024cbc3fbb85c882e52888442f1b66524ce91a0967699fd23709650e3"
    end

    on_arm do
      url "https://github.com/ryanonmars/CryptoKeeper/releases/download/v0.1.7/cryptokeeper-macos-aarch64.zip"
      sha256 "3cb34155b61a2e9133ce2a369c57a345e7b6d64ab1b53af483fd4a164fec8994"
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
