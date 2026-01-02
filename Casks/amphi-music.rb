cask "amphi-music" do
  version "2.0.0"
  sha256 "de6cb521b206fdaba87470e4499161b92158ccc8b9c5d92a197c46052ef8e711"

  url "https://github.com/amphi2024/music/releases/download/v#{version}/Music-#{version}-macOS.dmg"
  name "Amphi Music"
  desc "Cross-platform music player with support for syncing libraries via a self-hosted server"
  homepage "https://amphi.site"

  depends_on macos: ">= :big_sur"

  app "Music.app"

    zap trash: [
    "~/Library/Application Scripts/com.amphi.music",
    "~/Library/Containers/com.amphi.music",
    "~/Library/Preferences/com.amphi.music.plist",
    "~/Library/Saved Application State/com.amphi.music.savedState",
  ]
end