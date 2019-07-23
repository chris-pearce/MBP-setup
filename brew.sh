#!/usr/bin/env bash

# Set global configuration arguments
cask_args appdir: "/Applications"

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade --all

# Install Bash 4
brew install bash
brew install bash-completion2
# We installed the new shell, now we have to activate it
echo "Adding the newly installed shell to the list of allowed shells"
# Prompts for password
sudo bash -c 'echo /usr/local/bin/bash >> /etc/shells'
# Change to the new shell, prompts for password
chsh -s /usr/local/bin/bash

# Install more recent versions of some OS X tools
brew install vim --with-override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen

# Install Binaries
brew install bat
brew install git
brew install ack # https://beyondgrep.com
brew install dark-mode # https://github.com/sindresorhus/dark-mode
brew install git-extras # https://github.com/tj/git-extras
brew install lynx # http://lynx.invisible-island.net
brew install rename # http://plasmasturm.org/code/rename
brew install tree # http://mama.indstate.edu/users/ice/tree
brew install pandoc # https://pandoc.org
brew install z # https://github.com/rupa/z
brew install tldr # https://tldr.sh
brew install wifi-password # https://github.com/rauchg/wifi-password

# Install Casks
brew cask install --appdir="~/Applications" iterm2
brew cask install visual-studio-code
brew cask install macdown
brew cask install virtualbox
brew cask install google-chrome
brew cask install firefox
brew cask install slack
brew cask install whatsapp
brew cask install dropbox
brew cask install sketch
brew cask install spotify
brew cask install sizeup
brew cask install licecap
brew cask install docker
brew cask install quicklook-json
brew cask install insomnia

# Cask versions
brew tap homebrew/cask-versions
brew cask install 1password

# Fonts
# https://github.com/Homebrew/homebrew-cask-fonts
brew tap homebrew/cask-fonts
brew cask install font-fira-code
brew cask install font-inconsolata
brew cask install font-oldenburg
brew cask install font-patua-one
brew cask install font-lato
brew cask install font-inter

# Install developer friendly quick look plugins; see https://github.com/sindresorhus/quick-look-plugins
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv qlimagesize webpquicklook suspicious-package

# Remove outdated versions from the cellar
brew cleanup
