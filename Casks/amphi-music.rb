cask "amphi-music" do
  version "1.0.0"
  sha256 "6d8ea9676a6b919ab1efe3b218f44e17d43270b8c74fd1763f57f60dcaa4e0cc"

  url "https://amphi.site/releases/music/music-macos-#{version}.dmg"
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