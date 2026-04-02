class Soulpass < Formula
  desc "SoulPass — Autonomous identity, assets & wallet CLI for AI agents"
  homepage "https://github.com/SoulPass-AI/soulpass"
  url "https://github.com/SoulPass-AI/soulpass/releases/download/v0.1.3/soulpass-darwin-arm64.tar.gz"
  sha256 "6c3f7a0a4191fd545cbd1c00dac8a0ac0a24a1aa345fa47a4c50d418f2112cb5"
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
