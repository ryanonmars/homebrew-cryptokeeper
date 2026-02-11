# typed: false
# frozen_string_literal: true

class Cryptokeeper < Formula
  desc "CLI encrypted storage for cryptocurrency private keys and seed phrases"
  homepage "https://github.com/ryanonmars/CryptoKeeper"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ryanonmars/CryptoKeeper/releases/download/v0.1.3/cryptokeeper-macos-x86_64.zip"
      sha256 "cfd74a5f9a07207bd9714b597967311ee1834cac8b5fc12fc86ed9c45f9e0680"
    end

    on_arm do
      url "https://github.com/ryanonmars/CryptoKeeper/releases/download/v0.1.3/cryptokeeper-macos-aarch64.zip"
      sha256 "7298927f01e23a054708c512be4db18ea8ce06c1621218e55963eaed3ac59e57"
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
