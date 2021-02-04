class Natls < Formula
  desc "⚡️ nat - the 'ls' replacement you never knew you needed⚡️"
  homepage "https://github.com/willdoescode/nat"
  url "https://github.com/willdoescode/nat/archive/v2.1.10.tar.gz"
  sha256 "f1633f84dca47bcbd3b2dc1459f47b156c9bb30175c4cbe8c629628d74411df1"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/natls", "-v"
  end
end

