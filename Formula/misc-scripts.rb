class MiscScripts < Formula
  desc "Miscelleaneous Scripts"
  homepage "https://github.com/scottylogan/misc-scripts/"
  url "https://github.com/scottylogan/misc-scripts/archive/v0.1.8.tar.gz"
  sha256 "cba7d02e3dc0a42a20825248acde1da44339a5f2ad4da68579eca5b5b02496e8"

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
