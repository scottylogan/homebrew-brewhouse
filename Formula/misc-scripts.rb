class MiscScripts < Formula
  desc "Miscelleaneous Scripts"
  homepage "https://github.com/scottylogan/misc-scripts/"
  url "https://github.com/scottylogan/misc-scripts/archive/v0.1.3.tar.gz"
  sha256 "a99ee71407061c563c46dd6ae043d0383db6ba565836630fdd0f4e38a191e315"

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
