cask "api-key-health-checker" do
  arch arm: "arm64", intel: "x64"

  version "1.0.0"
  sha256 arm:   "PUT_ARM64_SHA256_HERE",
         intel: "PUT_X64_SHA256_HERE"

  url "https://github.com/nbox/API-Key-Health-Checker/releases/download/v#{version}/API%20Key%20Health%20Checker-#{version}-#{arch}.dmg",
      verified: "github.com/nbox/API-Key-Health-Checker/"
  name "API Key Health Checker"
  desc "Desktop app to validate API keys (OpenAI, Gemini, YouTube, custom endpoints)"
  homepage "https://github.com/nbox/API-Key-Health-Checker"

  depends_on macos: ">= :catalina"

  app "API Key Health Checker.app"

 # Automatically remove quarantine after installation 
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/API Key Health Checker.app"],
                   sudo: true
  end

  zap trash: [
    "~/Library/Application Support/API Key Health Checker",
    "~/Library/Preferences/com.nbox.api-key-health-checker.plist",
    "~/Library/Saved Application State/com.nbox.api-key-health-checker.savedState",
    "~/Library/Logs/API Key Health Checker",
  ]
end
