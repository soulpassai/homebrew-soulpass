class Soulpass < Formula
  desc "SoulPass — Autonomous identity, assets & wallet CLI for AI agents"
  homepage "https://github.com/SoulPass-AI/soulpass"
  url "https://github.com/SoulPass-AI/soulpass/releases/download/v0.1.3/soulpass-darwin-arm64.tar.gz"
  sha256 "2ec878a104693d03099c7c223c5727d2ffe5f6f42229811bd68a61a192493cc4"
  version "0.1.3"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "SoulPass" => "soulpass"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/soulpass --version")
  end
end
