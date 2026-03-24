class Soulpass < Formula
  desc "SoulPass — Autonomous identity, assets & wallet CLI for AI agents"
  homepage "https://github.com/soulpassai/soulpass"
  url "https://github.com/soulpassai/soulpass/releases/download/v0.1.0/soulpass-darwin-arm64.tar.gz"
  sha256 "01281727d997d7888e0523c894f18bd17d082538d0cd84b4f7fa795a68d2bd79"
  version "0.1.0"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "SoulPass" => "soulpass"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/soulpass --version")
  end
end
