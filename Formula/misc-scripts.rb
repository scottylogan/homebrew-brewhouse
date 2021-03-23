class MiscScripts < Formula
  desc "Miscelleaneous Scripts"
  homepage "https://github.com/scottylogan/misc-scripts/"
  url "https://github.com/scottylogan/misc-scripts/archive/v0.1.3.tar.gz"
  sha256 "0aa1fbd7da9a7ce02d2e75ebb38312fc9934787ca340c833e3fdfebd545528b4"

  def install
    system "install", "-d", bin
    system *Dir.glob("bin/*").unshift("install").push(bin)
    bin.install_symlink "people" => "accounts"
    bin.install_symlink "people" => "groups"
  end

  test do
    system "false"
  end
end
