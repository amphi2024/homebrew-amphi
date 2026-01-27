cask "amphi-notes" do
  version "2.1.0"
  sha256 "05808ee722b99aacde71072c1cbfaacf16884a0f96df08e3ae07d71578e0140a"

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