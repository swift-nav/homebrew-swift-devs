class PiksiFirmwareToolchain < Formula
  desc "Installs the toolchain used to build the Piksi firmware"
  homepage "https://github.com/swift-nav/starling"
  url "https://github.com/swift-nav/swift-toolchains/releases/download/pfwp_mac_toolchain/gcc-arm-none-eabi-6-2017-q2-update-mac.tar.bz2"
  sha256 "7d3080514a2899d05fc55466cdc477e2448b6a62f536ffca3dd846822ff52900"
  version "1.0.0"

  conflicts_with "arm-none-eabi-gcc", :because => "piksi-firmware-tools also installs arm-none-eabi-gcc"

  depends_on "cmake"

  def install
    # This incantation borrowed from the ARMmbed homebrew formula
    (prefix/"gcc").install Dir["./*"]
    Dir.glob(prefix/"gcc/bin/*") { |file| bin.install_symlink file }
  end
end
