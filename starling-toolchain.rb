class StarlingToolchain < Formula
  desc "Quick install of the Starling development toolchain"
  homepage "https://github.com/swift-nav/starling"
  url "https://github.com/swift-nav/homebrew-swift-devs/blob/master/artifacts/starling-toolchain-v1.0.0.tar.gz"
  sha256 "31bf63152617289e27c749775399489dca59800fadf13515bee166d9039a6c37"
  version "1.0.0"

  bottle :unneeded

  def install
    bin.install "clang-6.0"
    bin.install "clang-format"
    bin.install "clang-tidy"
    bin.install "arm-none-eabi-gcc"
  end
end