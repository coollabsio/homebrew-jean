cask "jean" do
  version "1.0.3"
  sha256 "221bc08a9c5e6714337abd2e562dae96bcbcd74cff5594fc237eb18bc306c18c"

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
