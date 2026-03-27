class Soulpass < Formula
  desc "SoulPass — Autonomous identity, assets & wallet CLI for AI agents"
  homepage "https://github.com/soulpassai/soulpass"
  url "https://github.com/soulpassai/soulpass/releases/download/v0.1.1/soulpass-darwin-arm64.tar.gz"
  sha256 "a620e8fc13836e5b88c497927d8780caa56d0eae3ddc7e1b4b629ec2a5d8b158"
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
