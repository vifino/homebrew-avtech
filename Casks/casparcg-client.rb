cask "casparcg-client" do
  version "2.3.0"
  sha256 arm:   "59fa05f530e544b1aea9b0134babefe0dceb1a85c22511dafc45aed4fb0ad218",
         intel: "c3e04612061ba9d13b199e82cc24f5393adced18fe885e69730b390ecbe081bc"

  on_arm do
    url "https://github.com/CasparCG/client/releases/download/v#{version}/casparcg-client-v#{version}-macos-arm64.dmg"
  end
  on_intel do
    url "https://github.com/CasparCG/client/releases/download/v#{version}/casparcg-client-v#{version}-macos-x86_64.dmg"
  end

  name "CasparCG Client"
  desc "Client for controlling the CasparCG media server"
  homepage "https://github.com/CasparCG/client"

  depends_on macos: ">= :bigsur"

  app "CasparCG Client.app"

  zap trash: "~/.CasparCG/"
end
