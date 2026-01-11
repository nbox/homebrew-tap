# Nbox Homebrew Tap
This repository contains Homebrew **casks** for installing macOS apps via Homebrew.

---

## API Key Health Checker

A desktop app that checks API key validity and basic health for supported providers (e.g. OpenAI, Gemini, YouTube) and custom endpoints.

### Install

```bash
brew install --cask nbox/tap/api-key-health-checker
```

### Uninstall

```bash
brew uninstall --cask --zap api-key-health-checker
```

### Notes

During installation you may be asked for your password because the cask runs xattr with sudo
to remove macOS quarantine from the installed app.

---

## Obsidian Hot Corner MD

A lightweight macOS menu bar app that brings your Obsidian notes to your fingertips-just like “Quick Notes” with active screen corners. Select any .md file in the settings, then hover your cursor over one of the screen’s corners. A floating preview window renders your Markdown document on top of all other windows, and a single click opens the note in Obsidian.

### Install

```bash
brew install --cask nbox/tap/obsidian-hot-corner-md
```

### Uninstall

```bash
brew uninstall --cask --zap obsidian-hot-corner-md
```

### Notes

During installation you may be asked for your password because the cask runs xattr with sudo
to remove macOS quarantine from the installed app.
