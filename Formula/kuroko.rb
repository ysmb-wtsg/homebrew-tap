class Kuroko < Formula
  desc "Terminal home base for the AI agent era (command: krk)"
  homepage "https://github.com/ysmb-wtsg/kuroko"
  url "https://github.com/ysmb-wtsg/kuroko/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "278f92de3b6d7aee5b4d32cc281f646e712e90138c8500c2aa12b2011e6c87c2"
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
