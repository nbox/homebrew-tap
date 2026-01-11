cask "obsidian-hot-corner-md" do
  version "1.0.0"
  sha256 "df7544be67de268024563091d1f48533a1193a646c9ef7f043d50d7fcf6cc598"

  url "https://github.com/nbox/ObsidianHotCornerMD/releases/download/v#{version}/ObsidianHotCornerMD-#{version}.dmg"
  name "Obsidian Hot Corner Preview"
  desc "Menu bar app that previews Obsidian Markdown via hot corners"
  homepage "https://github.com/nbox/ObsidianHotCornerMD"

  depends_on macos: ">= :monterey"

  app "ObsidianHotCornerMD.app"

  postflight do
    target = Pathname(appdir) / "ObsidianHotCornerMD.app"

    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", target],
                   sudo: !target.writable?
  end

  zap trash: [
    "~/Library/Application Support/ObsidianHotCornerMD",
    "~/Library/Logs/ObsidianHotCornerMD",
    "~/Library/Preferences/com.nbox.ObsidianHotCornerMD.plist",
    "~/Library/Saved Application State/com.nbox.ObsidianHotCornerMD.savedState",
  ]
end
