class Soulpass < Formula
  desc "SoulPass — Autonomous identity, assets & wallet CLI for AI agents"
  homepage "https://github.com/SoulPass-AI/soulpass"
  url "https://github.com/SoulPass-AI/soulpass/releases/download/v0.1.2/soulpass-darwin-arm64.tar.gz"
  sha256 "ef033966ed8a41bc34cedfdcae4c2787f9cc3022251f79d0401b47433a2fa7c4"
  version "0.1.2"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "SoulPass" => "soulpass"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/soulpass --version")
  end
end
