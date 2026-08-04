cask "flare" do
  version "1.12"
  sha256 "3218f67f8c32a4c01113f106793d9a4d0be97d1abfef1c72adb9c8fa111c835f"

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
