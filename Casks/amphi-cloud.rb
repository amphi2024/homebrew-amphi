cask "amphi-cloud" do
  version "1.1.0"
  sha256 "68800e994eb5aa37df15e6cb70d5d323cc1b4ea7ae7d1e5ab5d429af4f80c96b"
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