class Soulpass < Formula
  desc "SoulPass — Autonomous identity, assets & wallet CLI for AI agents"
  homepage "https://github.com/soulpassai/soulpass"
  url "https://github.com/soulpassai/soulpass/releases/download/v0.1.0/soulpass-darwin-arm64.tar.gz"
  sha256 "115a608a54d5a3985617205977646c11a324d30a47370ac8dc545dc5efaaf3e5"
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
