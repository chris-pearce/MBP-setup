# MBP setup <!-- omit in toc -->

Just a heads up, this setup is obviously very tailored to me. Therefore, it's
probably best to fork this repository so you can tweak it to suit your needs 🙂.

_Do the following in order…_

## Table of Contents <!-- omit in toc -->

- [Install Dotfiles and Shell Scripts](#install-dotfiles-and-shell-scripts)
  - [Updating](#updating)
  - [`.path` and `.extra`](#path-and-extra)
- [Configure  → About This Mac](#configure---about-this-mac)
  - [Overview](#overview)
  - [Storage → Manage](#storage--manage)
- [Install macOS Defaults](#install-macos-defaults)
- [Configure System Preferences](#configure-system-preferences)
  - [General](#general)
  - [Dock](#dock)
  - [Mission Control](#mission-control)
  - [Language & Region](#language--region)
  - [Security & Privacy](#security--privacy)
  - [Spotlight](#spotlight)
  - [Notifications](#notifications)
  - [Displays](#displays)
  - [Energy Saver](#energy-saver)
  - [Keyboard](#keyboard)
  - [Trackpad](#trackpad)
  - [iCloud](#icloud)
  - [Internet Accounts](#internet-accounts)
  - [App Store](#app-store)
  - [Bluetooth](#bluetooth)
  - [Sharing](#sharing)
  - [Users & Groups](#users--groups)
  - [Date & Time](#date--time)
- [Configure Finder](#configure-finder)
  - [Preferences (<kbd>⌘,</kbd>)](#preferences-kbdkbd)
  - [View Options](#view-options)
- [Configure Safari](#configure-safari)
  - [Preferences (<kbd>⌘,</kbd>)](#preferences-kbdkbd-1)
- [Configure TextEdit](#configure-textedit)
  - [Preferences (<kbd>⌘,</kbd>)](#preferences-kbdkbd-2)
- [Install Xcode Command Line Tools](#install-xcode-command-line-tools)
- [Install Homebrew and Formulae](#install-homebrew-and-formulae)
  - [Install](#install)
  - [Formulae](#formulae)
- [Sync Dropbox](#sync-dropbox)
- [Install Non-Homebrew Applications](#install-non-homebrew-applications)
  - [App Store](#app-store-1)
- [Configure Default App for File Types](#configure-default-app-for-file-types)
  - [Mappings](#mappings)
- [Configure GitHub SSH Key](#configure-github-ssh-key)
- [Install NVM](#install-nvm)
  - [Install Yarn](#install-yarn)
    - [Add Global Packages](#add-global-packages)
- [Configure Visual Studio Code](#configure-visual-studio-code)
- [Configure 1Password](#configure-1password)
- [Install Dashboard Widgets](#install-dashboard-widgets)
- [Configure Symlinks](#configure-symlinks)
- [Lifesavers](#lifesavers)
- [Credits](#credits)

## Install Dotfiles and Shell Scripts

Run these commands to install but make sure to swap out the repository URL (in
**step 2**) for your forked repository URL:

1. `cd ~/Projects`
2. `git clone https://github.com/chris-pearce/MBP-setup.git`
3. `cd MBP-setup`
4. `source bootstrap.sh`

**Steps 1–3** simply clone the repository to where you specify in **step 1**
(can be anywhere you like). In **step 4**, the **`bootstrap.sh`** does the
following:

1. Get's latest of the remote `master` branch.
2. Copies (not symlinks) the dotfiles and relevant shell script files to your home folder.
3. Runs `source ~/.bash_profile` to load `.bash_profile` which in turn loads the
   rest of the relevant dotfiles.

Each file is well commented to help understand what's going on.

### Updating

**Important!** Don't update the files in your home folder. If you need to make
any updates then make them to the files in the folder where you cloned the
repository (**step 1–3** above).

Everytime you make an update to a dotfile and shell script file (except for
`bootstrap.sh`) you'll need to run `source bootstrap.sh`. Additionally, `source bootstrap.sh` will automatically run when you pull changes from your remote
repository.

### `.path` and `.extra`

- If `~/.path` exists, it'll be sourced along with the other files before any
  feature testing takes place (such as detecting which version of `ls` is being used).
- If `~/.extra` exists, it'll be sourced along with the other files. Use this to
  add commands you don’t want to commit to a public repository (it's added to `.gitignore`).

## Configure  → About This Mac

### Overview

- Select: **Software Update…**.

### Storage → Manage

- **Recommendations:**
  - Turn on: **Empty Trash Automatically**.
- **Applications:**
  - **Remove:**
    - iMovie.
    - GarageBand.

## Install macOS Defaults

```bash
$ cd ~
$ source macos.sh
```

## Configure System Preferences

### General

- Select: **Ask to keep changes when closing documents**.

### Dock

- Remove all unwanted apps (right mouse clock → **Remove from dock**).
- Select: **Magnification**.
- Minimize windows using: **Scale effect**.
- Prefer tabs when opening documents: **Always**.
- Select: **Automatically hide and show the Dock**.

### Mission Control

- Dashboard: **As Space**.
- **Hot Corners:**
  - TL: **Mission Control**.
  - TR: **Launchpad**.
  - BL: **Put Display to Sleep**.
  - BR: **Dashboard**.

### Language & Region

- Time format: **24-Hour Time**.

### Security & Privacy

- **General:**
  - Require password: **immediately** after sleep or screen saver begins.
  - Allow apps downloaded from: **App Store**.
- **FileVault:**
  - Turn on.
- **Firewall:**
  - Turn on.
- **Privacy:**
  - **Location Services:**
  - Select: **Weather**.
  - **Analytics:**
    - Deselect everything.

### Spotlight

- Deselect: **Allow Spotlight Suggestions in Look up**.

### Notifications

- **Do Not Disturb:**
  - Select: **When the display is sleeping**.
- **Mail and Messages:**
  - Deselect: **Show message preview**.
- **All Applications:**
  - Use **Banners**.
  - Deselect: **Show notifications on lock screen**.

### Displays

- **Night Shift:**
  - Schedule: **Custom**.
  - From: **18:00–05.30**.

### Energy Saver

- **Battery:**
  - Select: **Enable Power Nap while on Battery Power**.

### Keyboard

- **Keyboard:**
  - Touch Bar shows: **App Controls with Control Strip**.
  - Customize Control Strip: **Add Screen Lock**.
- **Shortcuts:**
  - Full Keyboard Access: In windows and dialogs, press Tab to move keyboard focus between: **All controls**.

### Trackpad

- **Point & Click:**
  - Look up & data selectors: **Force Click with one finger**.
  - Secondary click: **Click or tap with two fingers**.
  - Click: **Light**.
- **Scroll & Zoom:**
  - Deselect: **Scroll direction: Natural**.

### iCloud

Deselect the following items:

- Photos
- Mail

### Internet Accounts

- iCloud
- Google
- Facebook
- Twitter
- LinkedIn

### App Store

- **Automatically check for updates:**
  - Select: **Install macOS updates**.
- Select: **Automatically download apps purchased on other Mac computers**.
- **Password Settings:**
  - Free Downloads: **Save Password**.

### Bluetooth

- Select: **Show Bluetooth in menu bar**.

### Sharing

- Computer's Name: **[your-name]**.

### Users & Groups

- Make sure you're an **Admin**.
- **Login Items:**
  - Remove iTunes.

### Date & Time

- **Clock:**
  - **Date options:**
    - Select: **Show date**.

## Configure Finder

### Preferences (<kbd>⌘,</kbd>)

- **General:**
  - Deselect all: **Show these items on the desktop**.
  - New Finder windows show: **home directory**.
- **Tags:**
  - Deselect all.
- **Sidebar:**
  - **Select all except for:**
    - iCloud Drive.
    - Movies.
    - Music.
    - Pictures.
    - Tags: Recent Tags.
- **Advanced:**
  - Select: **Show all filename extensions**.
  - Select: **Keep folders on top when sorting by name**.
  - When performing a search: **Search the Current Folder**.

### View Options

- Select: **Devices → [your-MBP-name]** in the sidebar.
- **<kbd>⌘J</kbd>:**
  - Select: **Always open in list view**.
  - Select: **Calculate all sizes**.
  - Select: **Show Library Folder**.
  - Select: **Use as defaults**.

## Configure Safari

### Preferences (<kbd>⌘,</kbd>)

- **General:**
  - Deselect: **Open “safe” files after downloading**.
- **Advanced:**
  - **Smart Search Field:**
    - Select: **Show full website address**.
  - Select: **Show Developer menu in menu bar**.

## Configure TextEdit

### Preferences (<kbd>⌘,</kbd>)

- **New Document:**
  - Format: **Plain Text**.
  - Options: **deselect all**.
- **Open and Save:**
  - **Plain Text File Rendering:**
  - Opening files: **Unicode (UTF-8)**.
  - Saving files: **Unicode (UTF-8)**.

## Install Xcode Command Line Tools

```bash
$ xcode-select --install
$ sudo xcode-select --switch /Library/Developer/CommandLineTools # enable command line tools
```

For the second command, [see here](https://github.com/nodejs/node-gyp/issues/569).

## Install Homebrew and Formulae

### Install

```bash
$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

### Formulae

```bash
$ cd
$ source brew.sh
```

## Sync Dropbox

_…and go shopping or something 🙂._

## Install Non-Homebrew Applications

- [Apple Watch Screen Savers](http://www.rasmusnielsen.dk/applewatch/).

### App Store

- [Unsplash Wallpaper](https://itunes.apple.com/au/app/unsplash-wallpapers/id1284863847?mt=12).
- [Monosnap](https://itunes.apple.com/au/app/monosnap-screenshot-editor/id540348655?mt=12).

## Configure Default App for File Types

1. In Finder, right click on a file that uses the type you'd like to change the
   default for.
2. Select: **Get Info** from the context menu.
3. Navigate to the **Open with** section and select the app from the menu.
4. Select: **Change All…**.
5. Select: **Continue** when/if Finder asks if you're sure.

### Mappings

- Dotfiles: **Visual Studio Code**.
- Markdown files (`.md`): **MacDown**.
- Shell scripts (`.sh`): **Visual Studio Code**.

## Configure GitHub SSH Key

1. [Generating a new SSH key and adding it to the ssh-agent](https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/#generating-a-new-ssh-key)
   _(make sure to do **step 2** in the **Adding your SSH key to the ssh-agent** section)_.
2. [Adding a new SSH key to your GitHub account](https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/).
3. Run this command: `$ ssh-keyscan github.com >> ~/.ssh/known_hosts`.

## Install NVM

1. `curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash`
2. Run: `source bootstrap.sh` (see: [Install Dotfiles and Shell Scripts →
   Updating](#updating)). This'll override the `.bashrc` file in the home folder
   that the script in **step 1** modified.
3. Run: `command -v nvm` to confirm it installed, the output should be: `nvm`.
4. Run: `cd ~` then `nvm install x` where `x` is whatever version is in the
   `.nvmrc` file, e.g.: `nvm install 9.11.1`.

### Install Yarn

```bash
brew install yarn --without-node
```

#### Add Global Packages

- `yarn global add git-open`

## Configure Visual Studio Code

- **Sync settings:**
  1. Install the [**Settings Sync**](https://marketplace.visualstudio.com/items?itemName=Shan.code-settings-sync) extension.
  2. <kbd>⌘</kbd> + <kbd>SHIFT</kbd> + <kbd>P</kbd> → `Sync: Download Settings`
     → Enter **GitHub Token** and **Gist ID** (get from 1Password).
  3. <kbd>⌘</kbd> + <kbd>SHIFT</kbd> + <kbd>P</kbd> → `Sync: Advanced Options` → `Sync: Toggle Auto-Upload On Settings Change` (requires window reload).
  4. <kbd>⌘</kbd> + <kbd>SHIFT</kbd> + <kbd>P</kbd> → `Sync: Advanced Options` →
     `Sync: Toggle Show Summary Page on Upload / Download` (requires window reload).
- <kbd>⌘</kbd> + <kbd>SHIFT</kbd> + <kbd>P</kbd> → `Shell Command: Install 'code' command in PATH`.

## Configure 1Password

1. Choose **Sync using Dropbox** option then select the **1Password.oppvault**
   file from **Dropbox → Documents**.
2. Activate the license by double clicking the license file in: **Software
   Licences** → **1Password 6** → **attachments**.

## Install Dashboard Widgets

- **Worldclock:**
  - Bangkok.
  - Boston.
  - London.
  - Sydney.
- Unit Converter.

## Configure Symlinks

- **`.extra`**: `ln -s ~/.extra ~/Dropbox/FED/Dotfiles`

## Lifesavers

- <https://code.visualstudio.com/docs/editor/integrated-terminal#_why-is-nvm-complaining-about-a-prefix-option-when-the-integrated-terminal-is-launched>

## Credits

I couldn't put together my dotfiles and shell scripts without the awesome work of:

- [Donne Martin](http://donnemartin.com/) and his [dev-setup repository](https://github.com/donnemartin/dev-setup).
- [Mathias Bynens](https://mathiasbynens.be/) and his [dotfiles repository](https://github.com/mathiasbynens/dotfiles).
- [Nicolas Gallagher](http://nicolasgallagher.com/) and his [dotfiles repository](https://github.com/necolas/dotfiles).
- [Paul Irish](http://paulirish.com/) and his [dotfiles repository](https://github.com/paulirish/dotfiles).
- [Sourabh Bajaj](https://sourabhbajaj.com) and his [macOS Setup Guide](https://sourabhbajaj.com/mac-setup/).

And anyone else who's been so kind to share their work out in the open.

❤️ open source.
