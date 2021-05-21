cask "sbp-tools" do
  version "3.4.7"
    sha256 "9ef057de0bfe3fd1aed148b276d4e75c5021dc033ae6ca080373a8b848cf38f0"
  
    url "https://github.com/swift-nav/libsbp/releases/download/v3.4.7/sbp_tools-v3.4.7-x86_64-apple-darwin19.6.0.zip"
    name "sbp-tools"
    desc "SBP conversion tools"
    homepage "https://github.com/swift-nav/libsbp"
  
    binary "sbp2json"
    binary "json2sbp"
    binary "json2json"
  end
