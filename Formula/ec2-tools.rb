require "language/node"

class Ec2Tools < Formula
  desc "EC2 Tools"
  homepage "https://github.com/scottylogan/ec2-tools/"
  url "https://github.com/scottylogan/ec2-tools/archive/v0.2.3.tar.gz"
  sha256 "43a38cb8b7bb792069d1b4c61a8ce17038869fd06d282e156afbbaf6de9fc46f"

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
