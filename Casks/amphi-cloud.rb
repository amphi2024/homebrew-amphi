cask "amphi-cloud" do
  version "1.0.0"
  sha256 "86581e28cee741491ecca44e4fc5b875e3228fc2d953366e03fb50f575d74f51"
  url "https://github.com/amphi2024/cloud/releases/download/v#{version}/Cloud-#{version}-macOS.dmg"
  name "Amphi Cloud"
  desc "A self-hosted cloud for secure file storage"
  homepage "https://amphi.site"

  depends_on macos: ">= :big_sur"

  app "Cloud.app"

    zap trash: [
    "~/Library/Application Scripts/com.amphi.cloud",
    "~/Library/Containers/com.amphi.cloud",
    "~/Library/Preferences/com.amphi.cloud.plist",
    "~/Library/Saved Application State/com.amphi.cloud.savedState",
  ]
end