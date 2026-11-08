class Tartaros < Formula
  desc "Sandbox for coding agents: Seatbelt on macOS, Landlock and seccomp on Linux"
  homepage "https://github.com/carlostapiacl/tartaros"
  version "0.1.0-alpha.25"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/carlostapiacl/tartaros/releases/download/v0.1.0-alpha.25/tartaros-darwin-arm64"
      sha256 "dfe6dcb5cfb4845b1f277ae87165ea1069f0d7f895444b668580773a8435b4a7"
    end
    on_intel do
      url "https://github.com/carlostapiacl/tartaros/releases/download/v0.1.0-alpha.25/tartaros-darwin-x64"
      sha256 "7330fbff41a0655c9d8a9bac060642f2756453226308e7f9e4e1cac09bb3399c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/carlostapiacl/tartaros/releases/download/v0.1.0-alpha.25/tartaros-linux-arm64"
      sha256 "35e78d215ef5e46e3a335b61386f7212f6ebe5f74ea1bcc4305a9ce04c49552d"
    end
    on_intel do
      url "https://github.com/carlostapiacl/tartaros/releases/download/v0.1.0-alpha.25/tartaros-linux-x64"
      sha256 "aa86716b74cc86e1018c0eb3613ea18a9d9c4d8524d8b4c8bafd3992132cae1d"
    end
  end

  def install
    bin.install Dir["tartaros-*"].first => "tartaros"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tartaros version")
  end
end
