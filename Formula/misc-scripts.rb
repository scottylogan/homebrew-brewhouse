class MiscScripts < Formula
  desc "Miscelleaneous Scripts"
  homepage "https://github.com/scottylogan/misc-scripts/"
  url "https://github.com/scottylogan/misc-scripts/archive/v0.1.10.tar.gz"
  sha256 "135e36be37d9d99fcdccda2c10c888f3ded11721869789e62f0f5ea821485f47"

  def install
    system "install", "-d", bin
    system *Dir.glob("bin/*").unshift("install").push(bin)
  end

  test do
    system "false"
  end
end
