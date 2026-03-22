class Soulpass < Formula
  desc "SoulPass — Autonomous identity, assets & wallet CLI for AI agents"
  homepage "https://github.com/soulpassai/soulpass"
  url "https://github.com/soulpassai/soulpass/releases/download/v0.1.0/soulpass-darwin-arm64.tar.gz"
  sha256 "c189a199c4d5dfb29f7c4173ae90cc214034b49f48a16cf5ffc7ebe4def69b62"
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
