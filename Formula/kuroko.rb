class Kuroko < Formula
  desc "Terminal home base for the AI agent era (command: krk)"
  homepage "https://github.com/ysmb-wtsg/kuroko"
  url "https://github.com/ysmb-wtsg/kuroko/archive/refs/tags/v0.2.5.tar.gz"
  sha256 "4d7aa336098565fb9ca97efc9dbec279a4de9f87676ad67edefe0ecf945397b2"
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
