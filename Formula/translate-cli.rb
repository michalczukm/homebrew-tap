class TranslateCli < Formula
  desc "Translate text from the terminal with DeepL"
  homepage "https://github.com/michalczukm/translate-cli"
  url "https://github.com/michalczukm/translate-cli/archive/refs/tags/v1.3.1.tar.gz"
  sha256 "a74737da6b5b941dac9698975082c64344b867d33995b08e296c1d4bd0a01c07"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  def caveats
    <<~EOS
      To add the shell shortcuts (Polish or German <-> English) and your DeepL API key, run:
        translate setup
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/translate --version")
  end
end
