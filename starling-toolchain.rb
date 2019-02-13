class StarlingToolchain < Formula
  desc "Quick install of the Starling development toolchain"
  homepage "https://github.com/swift-nav/starling"
  url "http://releases.llvm.org/6.0.0/clang+llvm-6.0.0-x86_64-apple-darwin.tar.xz"
  sha256 "0ef8e99e9c9b262a53ab8f2821e2391d041615dd3f3ff36fdf5370916b0f4268"
  version "1.1.1"

  bottle :unneeded

  resource "clang-4.0" do
    url "http://releases.llvm.org/4.0.0/clang+llvm-4.0.0-x86_64-apple-darwin.tar.xz"
    sha256 "5504064916d0651c185ceff85871298f31e2eaf4abf1333b2c36f5eed5e9cde6"
  end

  resource "arm-gcc" do
    url "https://developer.arm.com/-/media/Files/downloads/gnu-rm/6-2017q2/gcc-arm-none-eabi-6-2017-q2-update-mac.tar.bz2"
    sha256 "7d3080514a2899d05fc55466cdc477e2448b6a62f536ffca3dd846822ff52900"
  end

  def install
    (buildpath/"clang-4.0").install resource("clang-4.0")
    (buildpath/"gcc-arm-none-eabi-6").install resource("arm-gcc")

    mv buildpath/"clang-4.0/bin/clang-format", buildpath/"clang-4.0/bin/clang-format-4.0"
    mv buildpath/"clang-4.0/bin/clang-tidy", buildpath/"clang-4.0/bin/clang-tidy-4.0"
    mv buildpath/"gcc-arm-none-eabi-6/bin", buildpath/"gcc-arm-none-eabi-6/arm-gcc"

    bin.install "bin/clang-6.0"
    bin.install buildpath/"clang-4.0/bin/clang-format-4.0"
    bin.install buildpath/"clang-4.0/bin/clang-tidy-4.0"
    bin.install Dir[buildpath/"gcc-arm-none-eabi-6/arm-gcc/*"]
  end
end