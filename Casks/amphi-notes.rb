cask "amphi-notes" do
  version "2.0.0"
  sha256 "94ee73b46ddbfcf277f1aa86f34346a8b2be673937329a2b833a0ce249a8bb87"

  url "https://github.com/amphi2024/notes/releases/download/v#{version}/Notes-#{version}-macOS.dmg"
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