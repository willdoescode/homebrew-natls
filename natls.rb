class Natls < Formula
  desc "⚡️ nat - the 'ls' replacement you never knew you needed⚡️"
  homepage "https://github.com/willdoescode/nat"
  url "https://github.com/willdoescode/nat/archive/v2.1.12.tar.gz"
  sha256 "16fedd385ac7580213e9bc3e50b93625ab8d3bd9725bc5b11090a1a44a19f3fb"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/natls", "-v"
  end
end

