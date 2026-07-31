# typed: false
# frozen_string_literal: true

class Termkey < Formula
  desc "CLI encrypted storage for private keys and seed phrases"
  homepage "https://github.com/ryanonmars/termkey"
  url "https://github.com/ryanonmars/termkey/releases/download/v0.2.33/termkey-linux-x86_64.zip"
  version "0.2.33"
  sha256 "bf356a8191caaa835550361f2e5b269df17baab14a321c45c882849b13940fb8"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ryanonmars/termkey/releases/download/v0.2.33/termkey-macos-x86_64.zip"
      sha256 "56dd7a89cf1435e325f1874b10feccfc5c44a1b5adafd594e8ad65626f8a9731"
    end

    on_arm do
      url "https://github.com/ryanonmars/termkey/releases/download/v0.2.33/termkey-macos-aarch64.zip"
      sha256 "d2186da9fcb5b0760554fecb3b26526c1b864cde4c2ef96e75ef060669d8e839"
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
