cask "jean" do
  version "1.0.12"
  sha256 "6d58d6c3f3da9f2e24b594b84a432fb4ad4426c3ba25ab8c768255e33f63cc03"

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
