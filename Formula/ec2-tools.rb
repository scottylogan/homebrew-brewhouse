require "language/node"

class Ec2Tools < Formula
  desc "EC2 Tools"
  homepage "https://github.com/scottylogan/ec2-tools/"
  url "https://github.com/scottylogan/ec2-tools/archive/v0.2.1.tar.gz"
  sha256 "45832f68b6bab1ead39fc5bf6f7ad3367c9b3b90bf41a37eb084f77300c636b0"

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
