cask "api-key-health-checker" do
  arch arm: "arm64", intel: "x64"

  version "1.0.2"
  sha256 arm:   "35fd5bf43a478704cadc197a2194ddf4e77340b731023cf28f0b792b1de916bb",
         intel: "b61328fe45a722680088e04b8e890586fcc7c27c8d29ff2a3e475776143cf500"

  url "https://github.com/nbox/API-Key-Health-Checker/releases/download/v#{version}/API.Key.Health.Checker-#{version}-#{arch}.dmg"
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
    "~/Library/Logs/API Key Health Checker",
    "~/Library/Preferences/com.nbox.plist",
    "~/Library/Saved Application State/com.nbox.savedState",
  ]
end
