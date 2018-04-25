class MiscScripts < Formula
  desc "Miscelleaneous Scripts"
  homepage "https://github.com/scottylogan/misc-scripts/"
  url "https://github.com/scottylogan/misc-scripts/archive/v0.1.0.tar.gz"
  sha256 "2c72591a296bd6a598bb7a45e9abd3cd260a5fbbb0e3b54731fbdb467f56d7c8"

  def install
    system "install", "-d", bin
    system *Dir.glob("bin/*").unshift("install").push(bin)
  end

  test do
    system "false"
  end
end
