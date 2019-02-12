class StarlingToolchain < Formula
  desc "Quick install of the Starling development toolchain"
  homepage "https://github.com/swift-nav/starling"
  url "https://github.com/swift-nav/homebrew-swift-devs/blob/master/artifacts/starling-toolchain-v1.0.1.tar.gz"
  sha256 "b144333564bf16771d01e33035466896b402cf8db005ebff0886f9ffdd1cffa9"
  version "1.0.0"

  bottle :unneeded

  def install
    bin.install "clang-6.0"
    bin.install "clang-format"
    bin.install "clang-tidy"
    bin.install "arm-none-eabi-gcc"
  end
end