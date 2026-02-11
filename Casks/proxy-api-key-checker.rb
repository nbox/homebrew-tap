cask "proxy-api-key-checker" do
  arch arm: "arm64", intel: "x64"

  version "1.1.0"
  sha256 arm:   "bd2bbc031917a2eb8fc7c59910b8b27e72e831db5cd9b810edb85d4e35be6b10",
         intel: "db360d17222eb18926352874d49e0c31542a683eda98035a36a60419a83f113d"

  url "https://github.com/nbox/Proxy-API-Key-Checker/releases/download/v#{version}/Proxy%20%26%20API%20Key%20Checker-#{version}-#{arch}.dmg"
  name "Proxy & API Key Checker"
  desc "Desktop app to validate API keys and check proxy lists (HTTP/HTTPS/SOCKS)"
  homepage "https://github.com/nbox/Proxy-API-Key-Checker"

  depends_on macos: ">= :catalina"

  app "Proxy & API Key Checker.app"

  postflight do
    target = Pathname(appdir) / "Proxy & API Key Checker.app"

    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", target],
                   sudo: !target.writable?
  end

  zap trash: [
    "~/Library/Application Support/Proxy & API Key Checker",
    "~/Library/Logs/Proxy & API Key Checker",
    "~/Library/Preferences/com.nbox.proxy-api-key-checker.plist",
    "~/Library/Saved Application State/com.nbox.proxy-api-key-checker.savedState",
  ]
end
