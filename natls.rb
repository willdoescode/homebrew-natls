class Natls < Formula
  desc "⚡️ nat - the 'ls' replacement you never knew you needed⚡️"
  homepage "https://github.com/willdoescode/nat"
  url "https://github.com/willdoescode/nat/archive/v2.1.9.tar.gz"
  sha256 "b2be486587d0bf80514d901314200447eb5f510b50124341119e809c6d88f39e"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/natls", "-v"
  end
end

