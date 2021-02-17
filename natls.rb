class Natls < Formula
  desc "⚡️ nat - the 'ls' replacement you never knew you needed⚡️"
  homepage "https://github.com/willdoescode/nat"
  url "https://github.com/willdoescode/nat/archive/v2.1.11.tar.gz"
  sha256 "23cf03b63c2815eca433df8b79cf758b19804ab1d69e46c8a4a877f71590ded6"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/natls", "-v"
  end
end

