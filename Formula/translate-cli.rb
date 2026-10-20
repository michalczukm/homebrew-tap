class TranslateCli < Formula
  desc "Translate text from the terminal with DeepL"
  homepage "https://github.com/michalczukm/translate-cli"
  url "https://github.com/michalczukm/translate-cli/archive/refs/tags/v1.2.0.tar.gz"
  sha256 "38f19230a354ebe01a35a42addda3b83b3eb4e6ef0254b4987ee8175ce26a7d1"
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
