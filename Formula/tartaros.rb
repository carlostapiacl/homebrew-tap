class Tartaros < Formula
  desc "Sandbox for coding agents: Seatbelt on macOS, Landlock and seccomp on Linux"
  homepage "https://github.com/carlostapiacl/tartaros"
  version "0.1.0-alpha.18"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/carlostapiacl/tartaros/releases/download/v0.1.0-alpha.18/tartaros-darwin-arm64"
      sha256 "73ccb1f2452a2bb0d9eb2f7c77902442df611eafe5316f52994495e56e9a7469"
    end
    on_intel do
      url "https://github.com/carlostapiacl/tartaros/releases/download/v0.1.0-alpha.18/tartaros-darwin-x64"
      sha256 "dc1d6ae278e0bbe3c4461dd52c1e60beae64d63ec53cd7fbb5a6c29b3b934fb5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/carlostapiacl/tartaros/releases/download/v0.1.0-alpha.18/tartaros-linux-arm64"
      sha256 "e33acbcfb966609512b1a13fc76151bd32c97ee749ef4b612c5ef3d00f03cc5b"
    end
    on_intel do
      url "https://github.com/carlostapiacl/tartaros/releases/download/v0.1.0-alpha.18/tartaros-linux-x64"
      sha256 "25b0234be9724ce372c43689a14fa5411ebc6b157838944bdcbac0696da164cd"
    end
  end

  def install
    bin.install Dir["tartaros-*"].first => "tartaros"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tartaros version")
  end
end
