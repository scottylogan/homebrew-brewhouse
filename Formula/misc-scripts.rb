class MiscScripts < Formula
  desc "Miscelleaneous Scripts"
  homepage "https://github.com/scottylogan/misc-scripts/"
  url "https://github.com/scottylogan/misc-scripts/archive/v0.1.5.tar.gz"
  sha256 "492e152a578e7ae373a37dbade30598831f74adf598c26251768832b76e78e46"

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
