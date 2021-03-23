require "language/node"

class Ec2Tools < Formula
  desc "EC2 Tools"
  homepage "https://github.com/scottylogan/ec2-tools/"
  url "https://github.com/scottylogan/ec2-tools/archive/v0.2.2.tar.gz"
  sha256 "90961356ff690d6c66b08c7423428fb45883f290fa2841511f5373adbce33194"

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
