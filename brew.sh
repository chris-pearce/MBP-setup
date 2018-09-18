#!/usr/bin/env bash

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade --all

# Install Bash 4.
brew install bash
brew tap homebrew/versions
brew install bash-completion2
# We installed the new shell, now we have to activate it
echo "Adding the newly installed shell to the list of allowed shells"
# Prompts for password
sudo bash -c 'echo /usr/local/bin/bash >> /etc/shells'
# Change to the new shell, prompts for password
chsh -s /usr/local/bin/bash

# Install more recent versions of some OS X tools.
brew install vim --with-override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen

# Install Binaries.
brew install git
# https://beyondgrep.com
brew install ack
# https://github.com/sindresorhus/dark-mode
brew install dark-mode
# https://github.com/tj/git-extras
brew install git-extras
# http://lynx.invisible-island.net
brew install lynx
# http://plasmasturm.org/code/rename
brew install rename
# http://mama.indstate.edu/users/ice/tree
brew install tree
# https://pandoc.org
brew install pandoc

# Install Casks

# Editors and Terminals.
brew cask install --appdir="~/Applications" iterm2
brew cask install --appdir="/Applications" visual-studio-code
brew cask install --appdir="/Applications" macdown

# VM's.
brew cask install --appdir="/Applications" virtualbox
#brew install docker

# Browsers.
brew cask install --appdir="/Applications" google-chrome
brew cask install --appdir="/Applications" firefox

# Messaging.
brew cask install --appdir="/Applications" slack
brew cask install --appdir="/Applications" whatsapp

# Storage and Security.
brew cask install --appdir="/Applications" dropbox
brew cask install --appdir="/Applications" 1password

# Design.
brew cask install --appdir="/Applications" sketch

# Music and Video.
brew cask install --appdir="/Applications" spotify

# Misc.
brew cask install --appdir="/Applications" sizeup

# Install developer friendly quick look plugins; see https://github.com/sindresorhus/quick-look-plugins.
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package

# Remove outdated versions from the cellar.
brew cleanup
