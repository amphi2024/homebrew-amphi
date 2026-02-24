cask "amphi-music" do
  version "2.1.0"
  sha256 "c2fabc9fd3644ab37e99977df18f45d18a196ed0b6ecc3d492049b7d3b2c4ed7"

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