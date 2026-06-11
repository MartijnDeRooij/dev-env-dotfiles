# Installation

<details>
<summary><strong>🐧 Linux (Build from Source)</strong></summary>

### Build Prerequisites

* [Neovim Build Requirements](https://github.com/neovim/neovim/blob/master/BUILD.md)
* GCC or Clang (4.9+)
* [CMake](https://github.com/Kitware/CMake/releases) (3.13+)
* Ninja

### Install Dependencies

```bash
sudo apt update && sudo apt upgrade -y

sudo apt install -y \
    ninja-build \
    gettext \
    cmake \
    unzip \
    curl \
    git \
    build-essential \
    openssh-server \
    xclip \
    ripgrep \
    fd-find \
    liblua5.1-0-dev \
    luarocks \
    lua5.1 \
    lua5.3 \
    vim-gtk3 \
    grip
```

Optional:

```bash
sudo systemctl enable ssh
```

### Remove Previous Installation

```bash
sudo rm -f /usr/local/bin/nvim
sudo rm -rf /usr/local/share/nvim
sudo rm -rf /usr/local/lib/nvim
```

### Build Neovim

Reference:
https://github.com/neovim/neovim/blob/master/INSTALL.md#install-from-source

```bash
git clone https://github.com/neovim/neovim.git ~/neovim
cd ~/neovim

git checkout v0.11.3

# Or use the latest stable release
# git checkout stable

make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
nvim --version
```

### Install to a Custom Location

```bash
rm -rf build/
make CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX=$HOME/neovim"
make install
export PATH="$HOME/neovim/bin:$PATH"
```

### Uninstall

Using CMake:

```bash
sudo cmake --build build --target uninstall
```

Or manually:

```bash
sudo rm -f /usr/local/bin/nvim
sudo rm -rf /usr/local/share/nvim
```

Or:

```bash
sudo make uninstall
```

</details>

<details>
<summary><strong>🍎 macOS (Homebrew)</strong></summary>

### Install Dependencies

```bash
brew install ninja cmake gettext curl
```

### Install Neovim

```bash
brew install neovim
```

### Verify Installation

```bash
nvim --version
```

</details>

<details>
<summary><strong>🪟 Windows</strong></summary>

### Download Neovim

* https://github.com/neovim/neovim/releases

### Installation

1. Download the latest `nvim-win64.zip`.
2. Extract the archive.
3. Add the extracted directory to your `PATH`.
4. Launch:

```powershell
nvim.exe
```

### Verify Installation

```powershell
nvim --version
```

</details>

---

## Install My Neovim Configuration

```bash
git clone https://github.com/MartijnDeRooij/dev-env-dotfiles.git
```

```bash
export XDG_CONFIG_HOME="$HOME/.config"

cd ~/dev/001-Dev-Files/dev-env-dotfiles

ln -sf "$PWD/Editors/nvim" \
  "${XDG_CONFIG_HOME:-$HOME/.config}/nvim"
```

### First Startup

Start Neovim:

```bash
nvim
```

The following tools will automatically install what they need:

* lazy.nvim
* Mason
* nvim-treesitter

Wait for all installations to complete before opening project files.
