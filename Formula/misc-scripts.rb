class MiscScripts < Formula
  desc "Miscelleaneous Scripts"
  homepage "https://github.com/scottylogan/misc-scripts/"
  url "https://github.com/scottylogan/misc-scripts/archive/v0.1.11.tar.gz"
  sha256 "a27fbc339402f6a91cf37b9a00e8f5b1934649a3e611a78487b457ecd8b4259b"

  def install
    system "install", "-d", bin
    system *Dir.glob("bin/*").unshift("install").push(bin)
  end

  test do
    system "false"
  end
end
