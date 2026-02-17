# typed: false
# frozen_string_literal: true

class Cryptokeeper < Formula
  desc "CLI encrypted storage for cryptocurrency private keys and seed phrases"
  homepage "https://github.com/ryanonmars/CryptoKeeper"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ryanonmars/CryptoKeeper/releases/download/v0.2.2/cryptokeeper-macos-x86_64.zip"
      sha256 "0b5cdcbb2ab74f8fdb9ac9defdce89488a9b7985dd21662c5f5b7b7c2fe455d9"
    end

    on_arm do
      url "https://github.com/ryanonmars/CryptoKeeper/releases/download/v0.2.2/cryptokeeper-macos-aarch64.zip"
      sha256 "61e43c0e8d4ea78ad4e9ee712e11d66bf766c1ac56d41304e601366fef6edd9f"
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
