class TranslateCli < Formula
  desc "Translate text from the terminal with DeepL"
  homepage "https://github.com/michalczukm/translate-cli"
  url "https://github.com/michalczukm/translate-cli/archive/refs/tags/v0.0.0.tar.gz"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/translate --version")
  end
end
