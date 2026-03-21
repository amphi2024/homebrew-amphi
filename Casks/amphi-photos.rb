cask "amphi-photos" do
  version "2.1.0"
  sha256 "457e4e4d6d5645dda89d47a7277f96f2ca15b743c2ee9ca73f3a42ee9551edc5"
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