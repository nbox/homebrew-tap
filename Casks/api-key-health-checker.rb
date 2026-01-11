cask "api-key-health-checker" do
  arch arm: "arm64", intel: "x64"

  version "1.0.2"
  sha256 arm:   "bbafe25c2f5ce4ffff1de748af8109e9d8f814a601dab5ccff2150bfc4759b65",
         intel: "2a05e5cd668ac05e65178b73caf2b7a4e79aafa644ae9b1b94616e1f49d63ccb"

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
