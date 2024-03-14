# Development Environment dotfiles 🖳
**IMPORTANT:** This is my personal development setup github page. You can ofcourse use it, modify it and provide feedback. but most likely I will only use it personally. Proceed and use at your own risk!

Reason: Its fun to do this for yourself and will learn a lot about how an editor works. 

# Setup Notes ✍🏼
This setup will focuss on Windows, Mac, Linux and Windows (WSL setup)
- [Final dotfiles github page](https://github.com/MartijnDeRooij/dev-env-dotfiles)

## Ubuntu (debian linux)
- [bash](.bash)
- [bash profile](.bash_profile)

### inputrc
This will prefix your prompt with + while in insert-mode, and : while in command mode in bash 4.3 - [bash insert mode issue](https://stackoverflow.com/questions/7888387/the-way-to-distinguish-command-mode-and-insert-mode-in-bashs-vi-command-line-ed)
`set show-mode-in-prompt on`

## Windows (WSL setup)
[Windows Docs for Linux on Windows](https://learn.microsoft.com/en-us/windows/wsl/install)

* Install WSL in powershell `wsl --install`
* Get gruvbox-material color scheme for Windows Terminal. 
* Open the settings.json in windows preview by opening a new tab and click on Settings while holding shift
* Paste in the colorschemes and asssign it to the Ubuntu profile in Windows Terminal

There is an issue with npm on wsl ubuntu 22. Use this to install npm: 
- [npm](https://stackoverflow.com/questions/73673804/npm-show-npm-elf-not-found-error-in-wsl)

## Windows
Windows settings
- Show hidden files and folders
- Show Extensions types
* Use [chocolatey](https://chocolatey.org/install) to install Windows Terminal Preview using `choco install microsoft-windows-terminal --pre`
* Install bottom (This is top in linux)
	* alt shit + or alt shift - for horizontal/vertical 
* Install neovim using `choco install neovim`
* Install Git `choco install git`
* Install [mingw](https://nuwen.net/mingw.html)

## Mac
- [Neovim](https://neovim.io/) (Version 0.9 or Later)
- [Nerd Font](https://www.nerdfonts.com/) - I use Meslo Nerd Font
- [Ripgrep](https://github.com/BurntSushi/ripgrep) - For Telescope Fuzzy Finder
- XCode Command Line Tools
- [Homebrew](https://brew.sh/) `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`

----------------------------------------------------------------------------------------------------------------
# Terminal Setups 🖵
For Windows the Windows Terminal will be used, while for the rest their respective inbuild terminal. 
- [Windows Terminal](https://github.com/microsoft/terminal)

## Tmux Setup
tmux is a terminal multiplexer. It lets you switch easily between several programs in one terminal, detach them (they keep running in the background) and reattach them to a different terminal

### Relevant Files
- [.tmux.conf](.tmux.conf) - Tmux Configuration File

## Terminal Emulators
- [Alacritty](https://github.com/alacritty/alacritty)
- [Wezterm](https://wezfurlong.org/wezterm/)

Example configurations
- [Alacritty](alacritty.toml)
- [Wezterm](wezterm.lua)

----------------------------------------------------------------------------------------------------------------
# Neovim Setup
**Important**: This is my latest config with lazy.nvim

_If you clone the repo into your machine and use the config by copying .config/nvim to your home folder, wait for the plugins, language servers and parsers to install with lazy.nvim, Mason and nvim-treesitter. If you are opening a lua file or another file I have language servers configured for, like html, css or javascript/typescript, you might also get an error saying that the server failed to start. This is because Mason hasn't installed it yet. Press enter to continue, Mason will automatically install it._
- [nvim entire doc video](https://www.youtube.com/watch?v=rT-fbLFOCy0) from TJdevries if you want to learn more about it.

- [nvim plugins used](nvim/README.md) in here are all the plugins used and a small explanation on what they do.

In the section [languages](#setup-programming-languages) for each language look at how the language is installed with Mason. 

## Relevant Files
- [nvim/init.lua](nvim/init.lua)

## Installation Guide: 

### Build prerequisites [Nvim Build](https://github.com/neovim/neovim/blob/master/BUILD.md)
- Clang or GCC version 4.9+
- CMake version 3.13+, built with TLS/SSL support
  - Optional: Get the latest CMake from an [installer](https://github.com/Kitware/CMake/releases) or the [Python package](https://pypi.org/project/cmake/) (`pip install cmake`)
  
#### Ubuntu / Windows (WSL)
`sudo apt-get install ninja-build gettext cmake unzip curl build-essential`
`sudo apt install grip`
`sudo apt install fd-find`
`sudo apt install vim-gtk3`
`sudo apt install xclip`
`sudo snap install nvim --classic`
`git clone https://github.com/MartijnDeRooij/kickstart.nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim`

#### Mac
XCode/Homebrew 
`brew install ninja cmake gettext curl`
`brew install neovim`

#### Windows
Obtain the latest release: 
- [Nvim Release](https://github.com/neovim/neovim/releases)
- [Example Release](https://github.com/neovim/neovim/releases/download/v0.9.5/nvim-win64.zip)
1. Download nvim-win64.zip
2. Extract the zip
3. Run nvim.exe on your CLI of choice

### Built steps for NEOVim from source: 
- [Neovim built steps from source](https://github.com/neovim/neovim/blob/master/INSTALL.md#install-from-source)

#### Built steps
0. Go to x directory
1. `git clone https://github.com/neovim/neovim`
2. `cd neovim && make CMAKE_BUILD_TYPE=Release`
- If you want the **stable release**, also run `git checkout stable`.
3. `sudo make install`

For Unix-like systems this installs Neovim to `/usr/local`, while for Windows to `C:\Program Files`. Note, however, that this can complicate uninstallation. The following example avoids this by isolating an installation under `$HOME/neovim`:
```
    rm -r build/  # clear the CMake cache
    make CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX=$HOME/neovim"
    make install
    export PATH="$HOME/neovim/bin:$PATH"
```
##### Uninstall
There is a CMake target to _uninstall_ after `make install`:

```sh
sudo cmake --build build/ --target uninstall
```
Alternatively, just delete the `CMAKE_INSTALL_PREFIX` artifacts:

```sh
sudo rm /usr/local/bin/nvim
sudo rm -r /usr/local/share/nvim/
```
Incase you want to uninstall 
`sudo make uninstall`
----------------------------------------------------------------------------------------------------------------

# Setup programming languages
- [Bash]
- [C/C++](Languages/C-Cpp.md)
- [C#](Languages/CSharp.md)
- [Go](Languages/Go.md)
- [Latex](Languages/Latex.md)
- [Python](Languages/Python.md)
- [Rust](Languages/Rust.md)
- [Zig](Languages/Zig.md)

----------------------------------------------------------------------------------------------------------------
# Notes/ Cool resources

## Inpsiration dotfiles/nvim
I have used many resources for this from the officials docs of NVIM to many creators like ThePrimeagen and TJdevries.
- [more dotfiles repo first](https://github.com/mischavandenburg/dotfiles/tree/main)
- [prims nvim](https://github.com/ThePrimeagen/neovimrc)
- [bashbunni dotfiles](https://github.com/bashbunni/dotfiles)
- [example readme dotfiles](https://github.com/josean-dev/dev-environment-files)

## Cool database financial for future
- [tigerbeetle](https://github.com/tigerbeetle/tigerbeetle)

## Private GPT bot:
- [llama's github](https://github.com/ollama/ollama)
- [more llama's](https://ollama.com/)
- [Private GTP github](https://github.com/imartinez/privateGPT)
- [Private GPT](https://www.privategpt.io/)

## Containers
- [docker](https://www.docker.com/)
- [kubernetes](https://kubernetes.io/)
----------------------------------------------------------------------------------------------------------------

