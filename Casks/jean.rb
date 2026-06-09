cask "jean" do
  version "0.1.52"
  sha256 "47259a1265c5de04c6b68820db4c25c969f917e5388f6ad0ea8b2281409bdfb5"

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
