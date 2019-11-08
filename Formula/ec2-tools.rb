require "language/node"

class Ec2Tools < Formula
  desc "EC2 Tools"
  homepage "https://github.com/scottylogan/ec2-tools/"
  url "https://github.com/scottylogan/ec2-tools/archive/v0.2.0.tar.gz"
  sha256 "9fd07eec291f66aaff8a0985b7ec31cf2c941f595aa910a44c259189b95522e5"

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
