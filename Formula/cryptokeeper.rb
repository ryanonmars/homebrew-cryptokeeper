# typed: false
# frozen_string_literal: true

class Cryptokeeper < Formula
  desc "CLI encrypted storage for cryptocurrency private keys and seed phrases"
  homepage "https://github.com/ryanonmars/CryptoKeeper"
  version "0.1.0"
  url "https://github.com/ryanonmars/CryptoKeeper/releases/download/v0.1.0/cryptokeeper-v0.1.0-macos.zip"
  sha256 "985f111ee1eda49fc751813ea34da6dc909fa5c47c317346a63cc31cfffd5b77"
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
