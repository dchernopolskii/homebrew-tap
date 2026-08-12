cask "flare" do
  version "1.13"
  sha256 "259da1b04a89d9b39fd772a86f36e173ec2fdfa077d5345b03331c18c90c43ca"

  url "https://github.com/dchernopolskii/Flare/releases/download/v#{version}/FlareJobMonitor.zip"
  name "Flare"
  desc "Monitor job postings across company career sites"
  homepage "https://github.com/dchernopolskii/Flare"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sequoia

  app "FlareJobMonitor.app"

  zap trash: [
    "~/Library/Application Support/Flare",
    "~/Library/Containers/com.hcf0xf9d.Flare",
    "~/Library/Preferences/com.hcf0xf9d.Flare.plist",
  ]
end
