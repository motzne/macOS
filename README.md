# macOS setup

My personal guide for a good macOS setup

![macOS](assets/macOS_header.jpg)

## Setup

```bash
# Removes all unused dock icons with one command
defaults delete com.apple.dock persistent-apps; killall Dock
```

## Software / Tools

### 🚀 Productivity

- [SizeUp](http://www.irradiatedsoftware.com/sizeup/)
- [Evernote](https://evernote.com/intl/de/download)
- [Slack](https://slack.com/intl/de-ch/downloads/instructions/mac)

### 🔐 Security

- [Oversight](https://objective-see.com/products/oversight.html) - Protect your webcam and microphone
- [KnockKnock](https://objective-see.com/products/knockknock.html) - What is persistantly installed
- [Sophos Home](https://home.sophos.com/en-us.aspx) - Cybersecurity protection
- [LittleSnitch](https://www.obdev.at/products/littlesnitch/download-de.html) - Network activity tracker
- [1Password](https://1password.com/) - Password manager
- A very good Security Hardening Guide. Credit to [drduh](https://github.com/drduh/macOS-Security-and-Privacy-Guide)
- [Cloudflare CLI Tool](https://github.com/danielpigott/cloudflare-cli) `.cfcli.yml`in 1Password

### 🔎 Browsers

- [Google Chrome](https://www.google.com/intl/de/chrome/)
- [Firefox](https://www.mozilla.org/de/firefox/)

### 📦 Virtualization

- Virtual Box
- Docker
- [k3sup "Ketchup"](https://github.com/alexellis/k3sup)
- [arkade](https://github.com/alexellis/arkade) one-stop CLI for Kubernetes
- [kompose / Kubernetes + Compose / Converter](https://github.com/kubernetes/kompose)

### 🌐 Web Development

- [Visual Studio Code](https://code.visualstudio.com/download)
- [Sublime Text](https://www.sublimetext.com/download)
- [SourceTree](https://www.sourcetreeapp.com/)
- [Postman](https://www.getpostman.com/downloads/)
- [Cyberduck](https://cyberduck.io/download/)
- [NodeJS](https://nodejs.org/en/download/)

## 📱 App Development

- Android Studio
- Application Loader (deprecated after Catalina)
- Apple Configurator (via App Store)
- Xcode (via App Store)
- [Java](https://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html)
- nvm
- [scrcpy for Android Screen Sharing](https://github.com/Genymobile/scrcpy)

### 💻 Terminal

- [Homebrew](https://brew.sh/#install)
- Phyton 3
- [iTerm2](https://iterm2.com/downloads.html)
- [ohmyzsh - Shell](https://github.com/ohmyzsh/ohmyzsh)
- [Solarized Theme](https://ethanschoonover.com/solarized/)

```bash
ln -s ~/Projects/macOS/.zshrc ~/.zshrc

# or
echo "source ~/Projects/macOS/.zshrc" >> ~/.zshrc

```

- [Powerline Shell](https://github.com/b-ryan/powerline-shell#zsh)

```
mkdir -p ~/.config/powerline-shell
ln -s ~/Projects/macOS/powerline-shell/powerline-shell.config.json ~/.config/powerline-shell/config.json
pip install powerline-shell
```

- [Install Meslow Font](https://github.com/powerline/fonts/blob/master/Meslo%20Slashed/Meslo%20LG%20M%20Regular%20for%20Powerline.ttf) and change Font in iTerm (otherwise a ? will be shown)
- iTerm: Settings -> Profiles -> Keys -> Load Preset -> Natural Text Editing

### 🎵 Music

- [Sonos](https://www.sonos.com/de-ch/support)
- [Spotify](https://www.spotify.com/ch-de/download/other/)

### 🏢 Corporate

The following tools are most likely only in a corporate environment needed:

- [Cisco Jabber](<https://software.cisco.com/download/home/283880684/type/284006014/release/12.7(1)>)
- [Microsoft Office Suite](https://www.office.com/?omkt=de-ch)
- [Adobe CC](https://www.adobe.com/ch_de/creativecloud.html)
- [KessPassXC](https://keepassxc.org/download/#mac)
- [Maven](https://maven.apache.org/download.cgi)
