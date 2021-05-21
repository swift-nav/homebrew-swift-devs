cask "gnss-converters" do
  version "1.0.0"
    sha256 "8f862a341638a903a8b7227cd94351dd803baea1e6fc22bb0913e2a0c785c4c6"
  
    url "https://github.com/swift-nav/gnss-converters/releases/download/1.0.0/gnss_converters-1.0.0-x86_64-apple-darwin19.6.0.tar.gz"
    name "gnss-converters"
    desc "Converters between GNSS protocols"
    homepage "https://github.com/swift-nav/gnss-converters"
  
    binary "nov2sbp"
    binary "ixcom2sbp"
    binary "ubx2sbp"
    binary "sbp2rtcm"
    binary "rtcm3tosbp"
  end
