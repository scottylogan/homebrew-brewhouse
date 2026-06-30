class LdapScripts < Formula
  desc "LDAP Scripts"
  homepage "https://github.com/scottylogan/ldap-scripts/"
  url "https://github.com/scottylogan/ldap-scripts/archive/v0.1.0.tar.gz"
  sha256 "c1cda7401130f289d33ffe03e79cd29f79b74cc0941d3db786331509e084698a"

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
