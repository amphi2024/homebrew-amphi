cask "amphi-notes" do
  version "1.1.1"
  sha256 "b76d52641e0b478c914a8adff8cd1e08c1168e755d4124d4df26e4e4724f4b06"

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