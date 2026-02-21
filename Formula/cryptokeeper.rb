# typed: false
# frozen_string_literal: true

class Cryptokeeper < Formula
  desc "CLI encrypted storage for cryptocurrency private keys and seed phrases"
  homepage "https://github.com/ryanonmars/CryptoKeeper"
  version "0.2.5"
  license "MIT"

  url "https://github.com/ryanonmars/CryptoKeeper/releases/download/v0.2.5/cryptokeeper-linux-x86_64.zip"
  sha256 "5aec048697ad85ec923e9018a5b2582ebaba82bcca3676be0ef63369da53456d"

  on_macos do
    on_intel do
      url "https://github.com/ryanonmars/CryptoKeeper/releases/download/v0.2.5/cryptokeeper-macos-x86_64.zip"
      sha256 "4d655768f5cdd5baa0c8d015c6eaa2acb6c66368464ce3aa4fdb3161b3e47f53"
    end

    on_arm do
      url "https://github.com/ryanonmars/CryptoKeeper/releases/download/v0.2.5/cryptokeeper-macos-aarch64.zip"
      sha256 "36397ce942d8826d811c45ad9cadddb8d44a70254e52eea13949dda326e7c6fe"
    end
  end

  def install
    bin.install "cryptokeeper"
  end

  test do
    assert_match "Encrypted storage for cryptocurrency", shell_output("#{bin}/cryptokeeper --help")
  end
end
