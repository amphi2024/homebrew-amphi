cask "amphi-notes" do
  version "1.1.0"
  sha256 "b7caa3d498cfce4278219415487f0b90807652182efd280f17febf79d2ece5b4"

  url "https://amphi.site/releases/notes/notes-macos-#{version}.dmg"
  name "Amphi Notes"
  desc "Cross-platform note-taking app that enables users to sync their data with a self-hosted server"
  homepage "https://amphi.site"

  depends_on macos: ">= :big_sur"

  app "Notes.app"

    zap trash: [
    "~/Library/Application Scripts/com.amphi.notes",
    "~/Library/Containers/com.amphi.notes",
    "~/Library/Preferences/com.amphi.notes.plist",
    "~/Library/Saved Application State/com.amphi.notes.savedState",
  ]
end