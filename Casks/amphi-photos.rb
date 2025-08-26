cask "amphi-photos" do
  version "1.0.0"
  sha256 "12628afd8bd3cb1e878cfb78f28783618a474cad5aab5e023e18b472e3440e25"
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