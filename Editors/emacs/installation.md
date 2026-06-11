# 📎 Emacs Setup (Installation)

> Emacs is more than a text editor. It can be configured into a complete development environment and customized to fit many different workflows.

This repository uses **Chemacs2** to manage multiple Emacs configurations side by side.

---

## Configuration Locations

Emacs searches for configuration files in the following locations:

| Path | Notes |
|--------|--------|
| `~/.emacs` | Legacy location |
| `~/.emacs.el` | Legacy location |
| `~/.emacs.d/init.el` | Recommended on Windows/macOS |
| `~/.config/emacs/init.el` | Recommended on Linux |

---

## Installation

<details>
<summary><strong>🐧 Linux (Package Manager)</strong></summary>

### Ubuntu / Debian

```bash
sudo apt install emacs
```

### Arch Linux

```bash
sudo pacman -S emacs
```

### Fedora

```bash
sudo dnf install emacs
```

### openSUSE

```bash
sudo zypper install emacs
```

### Guix

```bash
guix package -i emacs
```

Verify:

```bash
emacs --version
```

</details>

<details>
<summary><strong>🐧 Linux (Build From Source)</strong></summary>

### Fonts

```bash
sudo apt install fonts-firacode
sudo apt install fonts-cantarell
sudo apt install ncurses
```

### Enable Source Repositories

Ubuntu 24.04+:

```bash
sudo sed -i 's/^Types: deb$/Types: deb deb-src/' \
/etc/apt/sources.list.d/ubuntu.sources

sudo apt update
```

### Clone Emacs

```bash
mkdir -p ~/emacs
cd ~/emacs

git clone --depth 1 git://git.savannah.gnu.org/emacs.git

cd emacs
git checkout emacs-30.1
```

### Dependencies

```bash
sudo apt build-dep -y emacs

sudo apt install \
  libtree-sitter-dev
```

### Build

```bash
./autogen.sh

./configure \
  --with-ctags \
  --with-dbus \
  --with-mailutils \
  --with-x11 \
  --with-xwidgets \
  --with-imagemagick

make -j$(nproc) bootstrap
```

### Test

```bash
./src/emacs --version

./src/emacs -Q
```

### Install

```bash
sudo make install
```

Verify:

```bash
emacs
```

</details>

<details>
<summary><strong>🍎 macOS</strong></summary>

```bash
brew install --cask emacs
```

Verify:

```bash
emacs --version
```

</details>

<details>
<summary><strong>🪟 Windows</strong></summary>

Download:

- https://www.gnu.org/software/emacs/
- https://www.gnu.org/software/emacs/download.html

Or install with Chocolatey:

```powershell
choco install emacs
```

Verify:

```powershell
emacs
```

</details>

---

## Setup Chemacs2

Chemacs2 allows multiple Emacs configurations to coexist and be switched at startup.

<details>
<summary><strong>🔄 Install Chemacs2</strong></summary>

Move your existing configuration:

```bash
mv ~/.emacs.d ~/.my-emacs
```

Install Chemacs2:

```bash
git clone https://github.com/plexus/chemacs2 ~/.emacs.d
```

</details>

<details>
<summary><strong>⚙️ Configure Profiles</strong></summary>

Example `~/.emacs-profiles.el`:

```elisp
(("default" . ((user-emacs-directory . "~/emacs-configs/.emacs.d")))
 ("doom"    . ((user-emacs-directory . "~/emacs-configs/.doom.d")))
 ("spacemacs" . ((user-emacs-directory . "~/emacs-configs/.spacemacs.d"))))
```

</details>

---

## Install Emacs Distributions

<details>
<summary><strong>🚀 Doom Emacs</strong></summary>

```bash
export DOOMDIR="$HOME/emacs-configs/.doom-config.d"

git clone --depth 1 \
  https://github.com/doomemacs/doomemacs \
  ~/emacs-configs/.doom.d

~/emacs-configs/.doom.d/bin/doom install
```

</details>

<details>
<summary><strong>🛰️ Spacemacs</strong></summary>

```bash
export SPACEMACSDIR="$HOME/emacs-configs/.spacemacs-config.d"

git clone \
  https://github.com/syl20bnr/spacemacs \
  ~/emacs-configs/.spacemacs.d
```

</details>

<details>
<summary><strong>📚 Emacs From Scratch</strong></summary>

```bash
git clone \
  https://github.com/daviwil/emacs-from-scratch.git \
  ~/emacs-configs/emacs-from-scratch
```

</details>

---

## Useful Commands

<details>
<summary><strong>⌨️ Common Commands</strong></summary>

```bash
emacs
emacsclient

emacs --help
emacs --debug-init

emacs --with-profile doom
emacs --with-profile spacemacs

emacs --with-profile '((user-emacs-directory . "~/emacs-configs/.doom.d"))'
```

</details>

---
