# typed: false
# frozen_string_literal: true

class Termkey < Formula
  desc "CLI encrypted storage for private keys and seed phrases"
  homepage "https://github.com/ryanonmars/termkey"
  url "https://github.com/ryanonmars/termkey/releases/download/v0.2.28/termkey-linux-x86_64.zip"
  version "0.2.28"
  sha256 "c49211518c5303ccf256418cc71078a305b56d4c3ecfdcaea2092f0ceb7fe32d"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ryanonmars/termkey/releases/download/v0.2.28/termkey-macos-x86_64.zip"
      sha256 "72068148e0c8a8e5e8df92e4d908a59a466f1f18bda03386f52de6956eff719c"
    end

    on_arm do
      url "https://github.com/ryanonmars/termkey/releases/download/v0.2.28/termkey-macos-aarch64.zip"
      sha256 "da9596124c89489a1ad34f8176d9529f9aea4d8ba7bdb8c9db976ddf2cd5fb56"
    end
  end

  def install
    bin.install "termkey"
    libexec.install "termkey-native-host"
    pkgshare.install "browser-extension"
  end

  test do
    assert_match "Encrypted storage for", shell_output("#{bin}/termkey --help")
  end
end
