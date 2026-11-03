class Kuroko < Formula
  desc "Terminal home base for the AI agent era (command: krk)"
  homepage "https://github.com/ysmb-wtsg/kuroko"
  url "https://github.com/ysmb-wtsg/kuroko/archive/refs/tags/v0.5.2.tar.gz"
  sha256 "4879479e553a46d40952eb4971c4785998ebe8d1804e49a48d1a7d01f831d55b"
  license "MIT"
  head "https://github.com/ysmb-wtsg/kuroko.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "krk #{version}", shell_output("#{bin}/krk --version")
  end
end
