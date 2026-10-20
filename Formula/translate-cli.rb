class TranslateCli < Formula
  desc "Translate text from the terminal with DeepL"
  homepage "https://github.com/michalczukm/translate-cli"
  url "https://github.com/michalczukm/translate-cli/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "b50ae347a6a1439bdd17cfb2fe96a4a09735e6b750fc6b970cf1e236cec9ac57"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/translate --version")
  end
end
