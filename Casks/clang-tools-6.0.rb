cask "clang-tools-6.0" do
    version "6.0.0"
    sha256 "0ef8e99e9c9b262a53ab8f2821e2391d041615dd3f3ff36fdf5370916b0f4268"
  
    url "https://releases.llvm.org/6.0.0/clang+llvm-6.0.0-x86_64-apple-darwin.tar.xz"
    name "clang-format"
    desc "Clang formatting tool"
    homepage "https://www.llvm.org/"
  
    binary "clang+llvm-6.0.0-x86_64-apple-darwin/bin/clang-format", target: "clang-format-6.0"
    binary "clang+llvm-6.0.0-x86_64-apple-darwin/bin/clang-tidy", target: "clang-tidy-6.0"
    binary "clang+llvm-6.0.0-x86_64-apple-darwin/bin/clang", target: "clang-6.0"
    binary "clang+llvm-6.0.0-x86_64-apple-darwin/bin/clang++", target: "clang++-6.0"
    binary "clang+llvm-6.0.0-x86_64-apple-darwin/bin/llvm-cov", target: "llvm-cov-6.0"
  end
