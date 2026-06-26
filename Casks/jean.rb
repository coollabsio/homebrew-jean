cask "jean" do
  version "0.1.58"
  sha256 "db7249bec5f238131357f7252284a3e4bc6547f58ab9b2acb8734242705733ce"

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
