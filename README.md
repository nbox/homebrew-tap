# Nbox Homebrew Tap
This repository contains Homebrew **casks** for installing macOS apps via Homebrew.

---

## API Key Health Checker
<p align="center">
  <img src="https://github.com/nbox/API-Key-Health-Checker/blob/main/assets/logo.png" width="220" alt="API Key Health Checker logo " />
</p>


A desktop app that checks API key validity and basic health for supported providers (e.g. OpenAI, Gemini, YouTube) and custom endpoints.

### Install

```bash
brew install --cask nbox/tap/api-key-health-checker
```

### Uninstall

```bash
brew uninstall --cask --zap api-key-health-checker
```
![Screenshot](https://github.com/nbox/API-Key-Health-Checker/blob/main/assets/screenshot.png)


### Notes

During installation you may be asked for your password because the cask runs xattr with sudo
to remove macOS quarantine from the installed app.

---

## Obsidian Hot Corner MD
<p align="center">
  <img src="https://github.com/nbox/Obsidian-Hot-Corner-MD/blob/main/assets/icon/icon.png" width="220" alt="Obsidian Hot Corner Preview" />
</p>

A lightweight macOS menu bar app that brings your Obsidian notes to your fingertips-just like “Quick Notes” with active screen corners. Select any .md file in the settings, then hover your cursor over one of the screen’s corners. A floating preview window renders your Markdown document on top of all other windows, and a single click opens the note in Obsidian.

### Install

```bash
brew install --cask nbox/tap/obsidian-hot-corner-md
```

### Uninstall

```bash
brew uninstall --cask --zap obsidian-hot-corner-md
```

## Demo

<div style="text-align: center;">
  <img src="https://github.com/nbox/Obsidian-Hot-Corner-MD/raw/main/assets/demo.gif" alt="App Demo" style="max-width:600px; height:auto;" />
  <p><em>Hover into the corner → preview appears → click to open in Obsidian.</em></p>
  <img src="https://github.com/nbox/Obsidian-Hot-Corner-MD/blob/main/assets/settings.png" alt="Settings Menu" width="260" />
  <p><em>The pencil icon in the menu bar opens the settings panel.</em></p>
</div>

<details> <summary><strong>⚙️ Settings</strong></summary>

- **Markdown File**: Choose your `.md` file via the standard file picker.
- **Preview Lines / Width**: Adjust how many lines are shown and the width of the preview window.
- **Hot Corners**: Enable one or more corners (top-left, top-right, bottom-left, bottom-right).
- **Click to Open**: Open the note in Obsidian using the `obsidian://` URL scheme.
- **Keyboard Shortcut**: Assign a custom shortcut to toggle the preview on and off.
- **Launch at Login**: Enable “Open at Login,” implemented via a Launch Agent (`~/Library/LaunchAgents`). The app will appear in System Settings → General → Login Items (you can disable it there).

</details>

### Notes

During installation you may be asked for your password because the cask runs xattr with sudo
to remove macOS quarantine from the installed app.
