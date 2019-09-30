class StarlingToolchain < Formula
  desc "Quick install of the Starling development toolchain"
  homepage "https://github.com/swift-nav/starling"
  url "http://releases.llvm.org/6.0.0/clang+llvm-6.0.0-x86_64-apple-darwin.tar.xz"
  sha256 "0ef8e99e9c9b262a53ab8f2821e2391d041615dd3f3ff36fdf5370916b0f4268"
  version "1.4.0"
  depends_on "check"

  bottle :unneeded

  def install
    # Also install clang-format and clang-tidy with version names
    cp "bin/clang-format", "bin/clang-format-6.0"
    cp "bin/clang-tidy", "bin/clang-tidy-6.0"

    # Install the entire LLVM 6.0 toolchain
    bin.install Dir["bin/*"]
    include.install Dir["include/*"]
    lib.install Dir["lib/*"]
    libexec.install Dir["libexec/*"]
    share.install Dir["share/*"]
  end
end
