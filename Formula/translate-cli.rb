class TranslateCli < Formula
  desc "Translate text from the terminal with DeepL"
  homepage "https://github.com/michalczukm/translate-cli"
  url "https://github.com/michalczukm/translate-cli/archive/refs/tags/v1.3.0.tar.gz"
  sha256 "11e0e950da2e0a9804f10041c43be6250012041f50631afcb0845481e7fd01d6"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  def caveats
    <<~EOS
      To add the tpl (en->pl) and ten (pl->en) shortcuts to your shell, run:
        translate shell-setup
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/translate --version")
  end
end
