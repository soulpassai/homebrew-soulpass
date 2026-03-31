class Soulpass < Formula
  desc "SoulPass — Autonomous identity, assets & wallet CLI for AI agents"
  homepage "https://github.com/soulpassai/soulpass"
  url "https://github.com/soulpassai/soulpass/releases/download/v0.1.2/soulpass-darwin-arm64.tar.gz"
  sha256 "9e74908afe5b6eba01e4eda747f42bde67856136e03f8e1e2c3361afd3cbdba1"
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
