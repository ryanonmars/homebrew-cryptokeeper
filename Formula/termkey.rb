# typed: false
# frozen_string_literal: true

class Termkey < Formula
  desc "CLI encrypted storage for private keys and seed phrases"
  homepage "https://github.com/ryanonmars/termkey"
  url "https://github.com/ryanonmars/termkey/releases/download/v0.2.37/termkey-linux-x86_64.zip"
  version "0.2.37"
  sha256 "2cd521526031608810089c9dfc5934bf70f522a540c19d406745c2fd9162d465"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/ryanonmars/termkey/releases/download/v0.2.37/termkey-macos-x86_64.zip"
      sha256 "97f044861e8e6e7a77c26f594b48a981f0121988ef04a795201c68f88dcd83fc"
    end

    on_arm do
      url "https://github.com/ryanonmars/termkey/releases/download/v0.2.37/termkey-macos-aarch64.zip"
      sha256 "13105ea3b5c4730fb027ebf08d11ad601afa6a36dcde98ec9a14a53996938c45"
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
