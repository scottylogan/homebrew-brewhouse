require "language/node"

class Ec2Tools < Formula
  desc "EC2 Tools"
  homepage "https://github.com/scottylogan/ec2-tools/"
  url "https://github.com/scottylogan/ec2-tools/archive/v0.1.2.tar.gz"
  sha256 "439c576540a3e3ea0398f9ba6c997621298feb9ec83c9e6058fd18cef9349eb1"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
    bin.install_symlink "ec2-instances" => "ec2-running-instances"
  end

  test do
    system "false"
  end
end
