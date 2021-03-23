class MiscScripts < Formula
  desc "Miscelleaneous Scripts"
  homepage "https://github.com/scottylogan/misc-scripts/"
  url "https://github.com/scottylogan/misc-scripts/archive/v0.1.4.tar.gz"
  sha256 "b0f1809d99668c237937212d9baa5bb13dac2e3a45bb65af946984e69b25f6ea"

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
