#!/usr/bin/env bash

# Close any open System Preferences panes, to prevent them from overriding
# settings we’re about to change
osascript -e 'tell application "System Preferences" to quit'

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.macos` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# General: expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

# General: enable repeating keys by pressing and holding down keys
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

# Bluetooth: increase sound quality for headphones/headsets
defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" -int 40

# Finder: allow quitting via `⌘ + Q;` doing so will also hide desktop icons
defaults write com.apple.finder QuitMenuItem -bool true

# Finder: show hidden files by default
defaults write com.apple.finder AppleShowAllFiles -bool true

# Finder: set Home folder as the default location for new Finder windows.
# For other paths, use `PfLo` and `file:///full/path/here/`.
defaults write com.apple.finder NewWindowTarget -string "PfLo"
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}"

# TextEdit: set tab width to 4 instead of the default 8
defaults write com.apple.TextEdit "TabWidth" '4'

# Terminal: only use UTF-8
defaults write com.apple.terminal StringEncodings -array 4

# iTerm: don’t display the annoying prompt when quitting
defaults write com.googlecode.iterm2 PromptOnQuit -bool false
