class Kuroko < Formula
  desc "Terminal home base for the AI agent era (command: krk)"
  homepage "https://github.com/ysmb-wtsg/kuroko"
  url "https://github.com/ysmb-wtsg/kuroko/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "9ab22d1aaa10bd995757a603df573d941ad127086a19f6240e8fd92ba20424ee"
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
