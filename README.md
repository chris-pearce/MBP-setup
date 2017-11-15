# MacBook setup
## Steps
1. System update: **Apple Icon ⟶ About This Mac ⟶ Software Update…**.
2. **System Preferences**, e.g.:
	- Users & Groups: _make sure you're an Admin_.
	- Keyboard.
	- Trackpad.
	- iCloud.
	- Internet Accounts.
	- Dock.
	- Notifications.
	- Sharing: change Computer Name.
3. Secure the **Safari Browser**:
	> First, choose **Safari ⟶ Preferences ⟶ General** and deselect the option: **Open “safe” files after downloading**.
	
	> Then, check the plug-in settings. Go to **Safari ⟶ Preferences ⟶ Security ⟶ Plug-in Settings…** and review the plug-ins and settings.
4. Install **Xcode Command Line Tools**: 

    ```bash
	xcode-select --install
  	```
5. Install **Homebrew**: 

	```bash
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    ```
	
    - Create a `.bash_login` file in your home directory (get from Dropbox or previous MacBook).
6. Install **Git**:

	```bash
    brew install git
    ```
    
    - Create a `.gitconfig` file in your home directory (get from Dropbox or previous MacBook).
    - Create a `git-completion.bash` file in your home directory (get from Dropbox or previous MacBook).
    - Create a `.bashrc` file in your home directory (get from Dropbox or previous MacBook).
7. Install **iTerm**:

	```bash
    brew install Caskroom/cask/iterm2
    ```
    
    - Apply preferences (see preferences from previous iTerm).
    - [Install colour schemes](http://iterm2colorschemes.com/).
8. Install **Bash-it**:

    ```bash
    git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
    ```
  
    ```bash
    ~/.bash_it/install.sh --interactive
    ```
	- Create a `.bash_profile` file in your home directory (get from Dropbox or previous MacBook).
	- In the Terminal do: `bash-it enable alias all` and `bash-it enable completion all`.
9. Install **rbenv**, best bet is following [this guide](https://gist.github.com/r-brown/a0b50d56cfb3596e0d17) especially if you want **Jekyll**.
10. Install fonts from previous **Font Book** esp. [**Fira Code**](https://github.com/tonsky/FiraCode).
11. Install **Visual Studio Code**:

    ```bash
    brew cask install visual-studio-code
    ```
    - Install the [**Settings Sync**](https://marketplace.visualstudio.com/items?itemName=Shan.code-settings-sync) extension.
    - `CMD + SHIFT + P` ⟶ `Sync: Download Settings` ⟶ enter the id (last part) of your GitHub Gist URL.
    - `CMD + SHIFT + P` ⟶ `Sync: Update / Upload Settings` ⟶ in GitHub generate a new **Personal access token** under **code_sync — gist** or get existing token from 1Password.
12. Install **Node**:

    ```bash
    brew update
    ```
  
    ```bash
    brew install node
    ```
13. Install global NPM modules:
  
    ```bash
    npm install -g gulp-cli
    ```
    
    ```bash
    npm install -g postcss-cli
    ```
14. Install **Yarn**:

    ```bash
    brew install yarn
    ```
14. Install **Sass**:

	```bash
    sudo gem install sass
    ```
16. Generate a new SSH key for GitHub by following [these steps](https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/#generating-a-new-ssh-key), after completing the steps run this command:

    ```bash
    ssh-keyscan github.com >> ~/.ssh/known_hosts
    ```
17. Apply correct keyboard access for the Mac by following [these steps](https://support.apple.com/en-us/HT204434).

## Applications
- **Browsers**
  
    ```bash
    brew cask install google-chrome
    ```

    ```bash
    brew cask install firefox
    ```
- **Dropbox**

    ```bash
    brew cask install dropbox
    ```
    
    Sync **Dropbox**, then [Symlink dot files](#dot-files).
- **SizeUp**

    ```bash
    brew cask install sizeup
    ```

    _Get license from **1Password**_
- **Wunderlist**

    _Get from **App Store**_
- **Slack**

    ```bash
    brew cask install slack
    ```
- **Spotify**

    ```bash
    brew cask install spotify
    ```
- **Sketch**

    ```bash
    brew cask install sketch
    ```
- **MacDown**

    ```bash
    brew cask install macdown
    ```
- **1Password**

    - _[Download from Web](https://agilebits.com/downloads)_ 
    - Choose **Sync using Dropbox** option and select the `1Password.agilekeychain` file found here **Dropbox ⟶ Documents**.
    - Add license by selecting **Software Licences** and choosing the **1Password** license, then go to attachments and choose **open**.
    - Add any additional accounts (see **Secure Notes** for any credentials).
- **LICEcap**

    _[Download from Web](http://www.cockos.com/licecap/)_

## Symlinks
### Dot files

```bash
ln -s ~/.bash_profile ~/Dropbox/FED/Mac\ OS\ X\ dev\ setup/Dot\ files/
```

```bash
ln -s ~/.bash_login ~/Dropbox/FED/Mac\ OS\ X\ dev\ setup/Dot\ files/
```

```bash
ln -s ~/.bashrc ~/Dropbox/FED/Mac\ OS\ X\ dev\ setup/Dot\ files/
```

```bash
ln -s ~/.gitconfig ~/Dropbox/FED/Mac\ OS\ X\ dev\ setup/Dot\ files/
```

```bash
ln -s ~/git-completion.bash ~/Dropbox/FED/Mac\ OS\ X\ dev\ setup/Dot\ files/
```
