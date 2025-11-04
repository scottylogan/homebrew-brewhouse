class MiscScripts < Formula
  desc "Miscelleaneous Scripts"
  homepage "https://github.com/scottylogan/misc-scripts/"
  url "https://github.com/scottylogan/misc-scripts/archive/v0.1.9.tar.gz"
  sha256 "879030d3be8726472532c9068124d0333338e1c000127901a51310c46922f042"

  def install
    system "install", "-d", bin
    system *Dir.glob("bin/*").unshift("install").push(bin)
    bin.install_symlink "su-ldap" => "accounts"
    bin.install_symlink "su-ldap" => "ldapgroups"
    bin.install_symlink "su-ldap" => "people"
  end

  test do
    system "false"
  end
end
