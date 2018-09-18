# MBP setup <!-- omit in toc -->

- [Dotfiles and Shell Scripts](#dotfiles-and-shell-scripts)
- [ → About This Mac](#--about-this-mac)
    - [Overview](#overview)
    - [Storage → Manage](#storage--manage)
- [macOS Defaults](#macos-defaults)
- [System Preferences](#system-preferences)
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
- [Safari](#safari)
    - [Preferences (<kbd>⌘,</kbd>)](#preferences-kbdkbd)
- [Finder](#finder)
    - [Preferences (<kbd>⌘,</kbd>)](#preferences-kbdkbd-1)
    - [View Options](#view-options)
- [TextEdit](#textedit)
    - [Preferences (<kbd>⌘,</kbd>)](#preferences-kbdkbd-2)
- [Xcode](#xcode)
- [Homebrew](#homebrew)
    - [Install](#install)
    - [Formula](#formula)
- [NVM](#nvm)
- [VS Code](#vs-code)

## Dotfiles and Shell Scripts

The `bootstrap.sh` script pulls in the latest version of the **MBP-setup** repository and copies the files to your home folder `~`. To make this happen run these commands:

```bash
$ cd ~/Projects && git clone https://github.com/chris-pearce/MBP-setup.git && cd MBP-setup && source bootstrap.sh
```

_I `git clone` the repository to `~/Projects`, however, you can clone it where ever you like, simply update the path in the first command: `cd ~/Projects`._

To update, `cd` into your local `MBP-setup` repository, and run:

```bash
$ source bootstrap.sh
```

##  → About This Mac

### Overview

- Select: **Software Update…**.

### Storage → Manage

- **Recommendations:**
  - Turn on: **Empty Trash Automatically**.
- **Applications:**
  - **Remove:**
    - iMovie.
    - GarageBand.

## macOS Defaults

```bash
$ cd ~; source macos.sh
```

## System Preferences

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
  _ Require password: **immediately** after sleep or screen saver begins.
  _ Allow apps downloaded from: **App Store**.
- **FileVault:** \* Turn on.
- **Firewall:** \* Turn on.
- **Privacy:**
  _ **Location Services:**
  _ Select: **Weather**.
  _ **Analytics:**
  _ Deselect everything.

### Spotlight

- Deselect: **Allow Spotlight Suggestions in Look up**.

### Notifications

- **Do Not Disturb:**
  _ **Turn on Do Not Disturb:**
  _ Select: **When the display is sleeping**.
- **Mail and Messages:** \* Deselect: **Show message preview**.
- **All Applications:**
  _ Use **Banners**.
  _ Deselect: **Show notifications on lock screen**.

### Displays

- **Night Shift:**
  _ Schedule: **Custom**.
  _ From: **18:00–05.30**.

### Energy Saver

- **Battery:** \* Select: **Enable Power Nap while on Battery Power**.

### Keyboard

- **Keyboard:**
  _ Touch Bar shows: **Expanded Control Strip**.
  _ Customize Control Strip: **Add Screen Lock**.
- **Shortcuts:** \* Full Keyboard Access: In windows and dialogs, press Tab to move keyboard focus between: **All controls**.

### Trackpad

- **Point & Click:**
  _ Look up & data selectors: **Force Click with one finger**.
  _ Secondary click: **Click or tap with two fingers**. \* Click: **Light**.
- **Scroll & Zoom:** \* Deselect: **Scroll direction: Natural**.

### iCloud

Deselect the following items:

- Photos
- Mail

### Internet Accounts

- iCloud\*
- Google\*
- Facebook\*\*
- Twitter
- LinkedIn\*\*

_\* For a brand new MBP, this'll happen on initial setup._
_**Deselect: **Contacts\*\*._

### App Store

- **Automatically check for updates:** \* Select: **Install macOS updates**.
- Select: **Automatically download apps purchased on other Mac computers**.
- **Password Settings:** \* Free Downloads: **Save Password**.

### Bluetooth

- Select: **Show Bluetooth in menu bar**.

### Sharing

- Computer's Name: **crite's MBP**.

### Users & Groups

- Make sure you're an **Admin**.
- **Login Items:** \* Remove iTunes.

### Date & Time

- **Clock:**
  _ **Date options:**
  _ Select: **Show date**.

## Safari

### Preferences (<kbd>⌘,</kbd>)

- **General:** \* Deselect: **Open “safe” files after downloading**.
- **Advanced:**
  _ **Smart Search Field:**
  _ Select: **Show full website address**. \* Select: **Show Developer menu in menu bar**.

## Finder

### Preferences (<kbd>⌘,</kbd>)

- **General:**
  _ Deselect all: **Show these items on the desktop**.
  _ New Finder windows show: **home directory**.
- **Tags:** \* Deselect all.
- **Sidebar:** \* Select all except for: **Tags: Recent Tags**.
- **Advanced:**
  _ Select: **Show all filename extensions**.
  _ Select: **Keep folders on top when sorting by name**. \* When performing a search: **Search the Current Folder**.

### View Options

- Select: **[Your name] MacBook Pro** from sidebar.
- **<kbd>⌘J</kbd>:**
  _ Select: **Always open in list view**.
  _ Select: **Calculate all sizes**.
  _ Select: **Show Library Folder**.
  _ Select: **Use as defaults**.

## TextEdit

### Preferences (<kbd>⌘,</kbd>)

- **New Document:**
  _ Format: **Plain Text**.
  _ Options: **deselect all**.
- **Open and Save:**
  _ **Plain Text File Rendering:**
  _ Opening files: **Unicode (UTF-8)**. \* Saving files: **Unicode (UTF-8)**.

## Xcode

```bash
$ xcode-select --install
```

_Select **Get Xcode** from the dialog._

## Homebrew

### Install

```bash
$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

### Formula

```bash
$ cd ~; source brew.sh
```

## NVM

## VS Code

1. Install the [**Settings Sync**](https://marketplace.visualstudio.com/items?itemName=Shan.code-settings-sync) extension.
2. <kbd>⌘</kbd> + <kbd>SHIFT</kbd> + <kbd>P</kbd> → `Sync: Download Settings` → Enter the **GitHub Token** (from 1Password) and **Gist ID** (from 1Password).
3. <kbd>⌘</kbd> + <kbd>SHIFT</kbd> + <kbd>P</kbd> → `Shell Command: Install 'code' command in PATH`.
