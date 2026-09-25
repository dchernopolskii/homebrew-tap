cask "flare" do
  version "1.17"
  sha256 "f45e181a21628963efe78fa22c9f229282beeac74721be6d76df8e611ca783a7"

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
