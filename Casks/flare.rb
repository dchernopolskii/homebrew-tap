cask "flare" do
  version "1.10"
  sha256 "67f97bad922aea75c0765e853ddad82c96b005de7fba7b93cc8bbb349ee26758"

  url "https://github.com/dchernopolskiy/Flare/releases/download/v#{version}/FlareJobMonitor.zip"
  name "Flare"
  desc "Monitor job postings across company career sites"
  homepage "https://github.com/dchernopolskiy/Flare"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sequoia"

  app "FlareJobMonitor.app"

  zap trash: [
    "~/Library/Application Support/Flare",
    "~/Library/Containers/com.hcf0xf9d.Flare",
    "~/Library/Preferences/com.hcf0xf9d.Flare.plist",
  ]
end
