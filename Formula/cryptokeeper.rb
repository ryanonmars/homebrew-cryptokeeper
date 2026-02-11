# typed: false
# frozen_string_literal: true

class Cryptokeeper < Formula
  desc "CLI encrypted storage for cryptocurrency private keys and seed phrases"
  homepage "https://github.com/ryanonmars/CryptoKeeper"
  version "0.1.0"
  url "https://github.com/ryanonmars/CryptoKeeper/releases/download/v0.1.0/cryptokeeper-v0.1.0-macos.zip"
  sha256 "b3e917a968b80454764efca4e451c158b395699df73b85f3b0b0a005ea2e684e"
  license "MIT"

  on_macos do
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
