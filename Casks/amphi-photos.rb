cask "amphi-photos" do
  version "2.0.0"
  sha256 "5b35bf46de8de1eaeff2a10d1e3c6a844ac49cafe607c63666e664c24b2710eb"
  url "https://github.com/amphi2024/photos/releases/download/v#{version}/Photos-#{version}-macOS.dmg"
  name "Amphi Photos"
  desc "Cross-platform photos app with self-hosted sync"
  homepage "https://amphi.site"

  depends_on macos: ">= :big_sur"

  app "Photos.app"

    zap trash: [
    "~/Library/Application Scripts/com.amphi.photos",
    "~/Library/Containers/com.amphi.photos",
    "~/Library/Preferences/com.amphi.photos.plist",
    "~/Library/Saved Application State/com.amphi.photos.savedState",
  ]
end