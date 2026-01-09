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
