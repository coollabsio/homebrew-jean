cask "jean" do
  version "1.0.9"
  sha256 "7f75b7ea1944eca02d86a15a2a1427c47217c8e4da926b4c93dba605cc3b0144"

  url "https://github.com/coollabsio/jean/releases/download/v#{version}/Jean_#{version}_universal.dmg"
  name "Jean"
  desc "AI Assistant desktop application"
  homepage "https://github.com/coollabsio/jean"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :catalina

  app "Jean.app"

  zap trash: [
    "~/Library/Application Support/com.jean.desktop",
    "~/Library/Caches/com.jean.desktop",
    "~/Library/Preferences/com.jean.desktop.plist",
    "~/Library/Saved Application State/com.jean.desktop.savedState",
  ]
end
