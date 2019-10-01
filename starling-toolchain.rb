class StarlingToolchain < Formula
  desc "Quick install of the Starling development toolchain"
  homepage "https://github.com/swift-nav/starling"
  url "file:///dev/null"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
  version "2.0.0"

  depends_on "starling-clang-tools"
  depends_on "check"

  bottle :unneeded

  def install
    (doc/"README").write <<~EOS
      Check out the Starling repository README for details on the starling project. https://github.com/swift-nav/starling
    EOS
  end
end
