cask "amphi-cloud" do
  version "1.0.0"
  sha256 "ed11186ef17e2cad9bea29a1c5660f296ba9aff9c44ce25bcac137b4ade338f3"
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