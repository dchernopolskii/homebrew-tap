cask "flare" do
  version "1.14"
  sha256 "383308fd7b4bfafeacfaf6379f919a7dc97415249a5604d1cf9e109a96df4894"

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
