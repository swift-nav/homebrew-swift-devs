class StarlingToolchain < Formula
  desc "Quick install of the Starling development toolchain"
  homepage "https://github.com/swift-nav/starling"
  url "http://releases.llvm.org/6.0.0/clang+llvm-6.0.0-x86_64-apple-darwin.tar.xz"
  sha256 "0ef8e99e9c9b262a53ab8f2821e2391d041615dd3f3ff36fdf5370916b0f4268"
  version "1.3.0"

  bottle :unneeded

  resource "llvm-4.0" do
    url "http://releases.llvm.org/4.0.0/clang+llvm-4.0.0-x86_64-apple-darwin.tar.xz"
    sha256 "5504064916d0651c185ceff85871298f31e2eaf4abf1333b2c36f5eed5e9cde6"
  end

  def install
    # Install the entire LLVM 6.0 toolchain
    bin.install Dir["bin/*"]
    include.install Dir["include/*"]
    lib.install Dir["lib/*"]
    libexec.install Dir["libexec/*"]
    share.install Dir["share/*"]

    # Install clang-format and clang-tidy from LLVM 4.0 only
    (buildpath/"llvm-4.0").install resource("llvm-4.0")
    mv buildpath/"llvm-4.0/bin/clang-format", buildpath/"llvm-4.0/bin/clang-format-4.0"
    mv buildpath/"llvm-4.0/bin/clang-tidy", buildpath/"llvm-4.0/bin/clang-tidy-4.0"

    bin.install buildpath/"llvm-4.0/bin/clang-format-4.0"
    bin.install buildpath/"llvm-4.0/bin/clang-tidy-4.0"
  end
end
