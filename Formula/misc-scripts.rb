class MiscScripts < Formula
  desc "Miscelleaneous Scripts"
  homepage "https://github.com/scottylogan/misc-scripts/"
  url "https://github.com/scottylogan/misc-scripts/archive/v0.1.1.tar.gz"
  sha256 "a5910d2dc0f78ff2b83588a141bb37dba2c6d3de0d77877405edd08ce9be7120"

  def install
    system "install", "-d", bin
    system *Dir.glob("bin/*").unshift("install").push(bin)
  end

  test do
    system "false"
  end
end
