class Kuroko < Formula
  desc "Terminal home base for the AI agent era (command: krk)"
  homepage "https://github.com/ysmb-wtsg/kuroko"
  url "https://github.com/ysmb-wtsg/kuroko/archive/refs/tags/v0.6.0.tar.gz"
  sha256 "2cc1110346cf9afa76b74c318ec369aee1cfe4376b491a60c92fa37e97e2f0e5"
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
