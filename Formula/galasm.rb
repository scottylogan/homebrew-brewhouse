class Galasm < Formula
  desc "GAL assembler"
  homepage "https://github.com/daveho/GALasm"
  url "https://github.com/daveho/GALasm/archive/master.tar.gz"
  version "1.0.0"
  sha256 "9ee6745614b0b329159f25850baa1ab05c53ce6ef272c82e6ea0a665e5c26d21"

  depends_on "gcc" => :build
  depends_on "make" => :build

  def install
    cd "src" do
      system "make"
      install "-dv", bin
      install "-v", "galasm", bin
    end
  end

  test do
    system "false"
  end
end
