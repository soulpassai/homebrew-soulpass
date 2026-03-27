class Soulpass < Formula
  desc "SoulPass — Autonomous identity, assets & wallet CLI for AI agents"
  homepage "https://github.com/soulpassai/soulpass"
  url "https://github.com/soulpassai/soulpass/releases/download/v0.1.1/soulpass-darwin-arm64.tar.gz"
  sha256 "91c410faec96e083d532ddd73b2c2ea3b6bb32065f85102276550e6ed2a4c9bc"
  version "0.1.1"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "SoulPass" => "soulpass"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/soulpass --version")
  end
end
