class Soulpass < Formula
  desc "SoulPass — Autonomous identity, assets & wallet CLI for AI agents"
  homepage "https://github.com/SoulPass-AI/soulpass"
  url "https://github.com/SoulPass-AI/soulpass/releases/download/v0.1.3/soulpass-darwin-arm64.tar.gz"
  sha256 "afce811583eb4c46a109a4acfed1e11b40bebfdf228a8353eed46b3988507001"
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
