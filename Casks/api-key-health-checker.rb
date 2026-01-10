cask "api-key-health-checker" do
  arch arm: "arm64", intel: "x64"

  version "1.0.1"
  sha256 arm:   "3ae6c1cedaf1a22c516a891197b5164962e3cc3211e00674b283b63453643e19",
         intel: "05beaee2cd14c54bb7850e199575e5421bd6978b22ecd5bc9d617b5e3f677816"

url "https://github.com/nbox/API-Key-Health-Checker/releases/download/v#{version}/API.Key.Health.Checker-#{version}-#{arch}.dmg",
    verified: "github.com/nbox/API-Key-Health-Checker/"

  name "API Key Health Checker"
  desc "Desktop app to validate API keys (OpenAI, Gemini, YouTube, custom endpoints)"
  homepage "https://github.com/nbox/API-Key-Health-Checker"

  depends_on macos: ">= :catalina"

  app "API Key Health Checker.app"

  postflight do
    target = Pathname(appdir) / "API Key Health Checker.app"

    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", target],
                   sudo: !target.writable?
  end

  zap trash: [
    "~/Library/Application Support/API Key Health Checker",
    "~/Library/Preferences/com.nbox.plist",
    "~/Library/Saved Application State/com.nbox.savedState",
    "~/Library/Logs/API Key Health Checker",
  ]
end
