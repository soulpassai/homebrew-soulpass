class Soulpass < Formula
  desc "SoulPass — Autonomous identity, assets & wallet CLI for AI agents"
  homepage "https://github.com/SoulPass-AI/soulpass"
  url "https://github.com/SoulPass-AI/soulpass/releases/download/v0.1.4/soulpass-darwin-arm64.tar.gz"
  sha256 "e6a855d819e988071a45dbcd7330f877ce3fa88856bcbfac328cc89cbcd4cfcc"
  version "0.1.4"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "SoulPass" => "soulpass"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/soulpass --version")
  end
end
