class TranslateCli < Formula
  desc "Translate text from the terminal with DeepL"
  homepage "https://github.com/michalczukm/translate-cli"
  url "https://github.com/michalczukm/translate-cli/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "f1b51f43a370a2b2bef6fdb4e284568bbddc3663409bf9fbc2e757194d8e75f0"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/translate --version")
  end
end
