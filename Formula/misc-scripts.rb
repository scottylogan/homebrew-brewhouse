class MiscScripts < Formula
  desc "Miscelleaneous Scripts"
  homepage "https://github.com/scottylogan/misc-scripts/"
  url "https://github.com/scottylogan/misc-scripts/archive/v0.1.6.tar.gz"
  sha256 "829c2eceea5dd8f454e0c61534df427065014042e13880f8fa8f99391940f56b"

  def install
    system "install", "-d", bin
    system *Dir.glob("bin/*").unshift("install").push(bin)
    bin.install_symlink "people" => "accounts"
    bin.install_symlink "people" => "ldapgroups"
  end

  test do
    system "false"
  end
end
