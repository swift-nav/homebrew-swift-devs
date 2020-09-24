class StarlingClangTools < Formula
  desc "Installs the clang-format and clang-tidy versions used in starling"
  homepage "https://github.com/swift-nav/starling"
  url "file:///dev/null"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
  version "1.0.0"

  depends_on "llvm@6"

  bottle :unneeded

  def install
    bin.install_symlink "/usr/local/opt/llvm@6/bin/clang-format" => "clang-format-6.0", 
                        "/usr/local/opt/llvm@6/bin/clang-tidy" => "clang-tidy-6.0",
                        "/usr/local/opt/llvm@6/bin/llvm-cov" => "llvm-cov"
    
  end
end
