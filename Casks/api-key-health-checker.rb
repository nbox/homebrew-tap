cask "api-key-health-checker" do
  arch arm: "arm64", intel: "x64"

  version "1.0.1"
  sha256 arm:   "9d9f8ec978bae9ca943875b50dbaceabe7bf48810adc4cea95eb18c7aa7c54de",
         intel: "f18623d1ae9b96cc43d3567ec59c99acbf6b96cc826dae6a548dcb824b2fa561"

  url "https://github.com/nbox/API-Key-Health-Checker/releases/download/v#{version}/API%20Key%20Health%20Checker-#{version}-#{arch}.dmg",
      verified: "github.com/nbox/API-Key-Health-Checker/"
  name "API Key Health Checker"
  desc "Desktop app to validate API keys (OpenAI, Gemini, YouTube, custom endpoints)"
  homepage "https://github.com/nbox/API-Key-Health-Checker"

  depends_on macos: ">= :catalina"

  app "API Key Health Checker.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/API Key Health Checker.app"],
                   sudo: true
  end

  zap trash: [
    "~/Library/Application Support/API Key Health Checker",
    "~/Library/Preferences/com.nbox.plist",
    "~/Library/Saved Application State/com.nbox.savedState",
    "~/Library/Logs/API Key Health Checker",
  ]
end
