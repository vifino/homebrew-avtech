cask "casparcg-client" do
  version "2.3.1"
  sha256 arm:   "ae8ee72a8490b6bb3ba9cc5d6cc1221252e26e07568ff5b1640d5ce5322b841e",
         intel: "47337a5982f7f565719f32e73ddf1d4314ebb05e6d33efcc43b5e8f823995e80"

  on_arm do
    url "https://github.com/CasparCG/client/releases/download/v#{version}/casparcg-client-v#{version}-macos-arm64.dmg"
  end
  on_intel do
    url "https://github.com/CasparCG/client/releases/download/v#{version}/casparcg-client-v#{version}-macos-x86_64.dmg"
  end

  name "CasparCG Client"
  desc "Client for controlling the CasparCG media server"
  homepage "https://github.com/CasparCG/client"

  depends_on :macos

  livecheck do
    url "https://github.com/CasparCG/client/releases/latest"
    regex(/[-_.]?v?(\d+(?:\.\d+)+)/i)
  end

  app "CasparCG Client.app"

  zap trash: "~/.CasparCG/"
end
