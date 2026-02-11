# typed: false
# frozen_string_literal: true

class Cryptokeeper < Formula
  desc "CLI encrypted storage for cryptocurrency private keys and seed phrases"
  homepage "https://github.com/ryanonmars/CryptoKeeper"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ryanonmars/CryptoKeeper/releases/download/v0.1.1/cryptokeeper-macos-x86_64.zip"
      sha256 "6a31f3d4831052f3bbe5ef844fd427311ef9d456ac8ef537c522d5558c958798"
    end

    on_arm do
      url "https://github.com/ryanonmars/CryptoKeeper/releases/download/v0.1.1/cryptokeeper-macos-aarch64.zip"
      sha256 "13f23d0762d7923591d70b651701a464dc394c350d979844e9c280669b165419"
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
