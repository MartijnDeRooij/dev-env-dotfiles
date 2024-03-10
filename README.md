# Development Environment dotfiles ✍🏼
dev-env-dotfiles
**IMPORTANT:** This is my personal development setup github page. You can ofcourse use it, modify it and provide feedback. but most likely I will only use it personally. Proceed and use at your own risk!

Dotfiles

This will be the initial setup for my personal development environment.
In here I will provide configuration files for bash, nvim, tmux  etc.

There are multiple reasons for doing this for me. 
1. I want the same experience regardless on which system I am on for devloping code or other things. 
2. I want to skill issue myself to stay motivated as this means I have things to learn but more importantly I find out what I don't know so I know what I don't know and are able to learn it. 
3. Once setup I no longer have to think about what different IDEs do. It will work my way and I have set it up my way.
4. Its fun actually the real and only reason 

# Setup Notes
There are three different possible environments (MAC, Windows (please stop breaking), Linux. 
In my case I will focuss for now on Ubuntu (debian linux) distro and Windows. Because so far there are the only two I have ever used.

I have used many resources for this from the officials docs of NVIM to many creators like ThePrimeagen and TJdevries.
- [Final dotfiles github page](https://github.com/MartijnDeRooij/kickstart.nvim/tree/primVimBranch)

# PC Setup basic things to install first such as GIT otherwise this repo cannot be used. 

## Ubuntu (debian linux)

```bash
DOTFILES_DIR=$HOME/Repos/github.com/MartijnDeRooij
mkdir -p $DOTFILES_DIR
cd $DOTFILES_DIR
git clone https://github.com/MartijnDeRooij/dotfiles.git
cd dotfiles
```



Starup setup nvim:
sudo apt update && sudo apt upgrade
sudo apt install openssh-server
sudo systemctl enable ssh
echo "alias vim="nvim"" >> ~/.bashrc
echo "alias vi="nvim"" >> ~/.bashrc
echo "PROMPT_COMMAND='history -a'" >> ~/.bashrc
echo "PROMPT_COMMAND='history -a'" >> ~/.bash_profile
sudo snap install nvim --classic
sudo apt install git
sudo apt install curl
sudo apt install -y xclip
sudo apt install ripgrep
sudo apt install fd-find
sudo git clone https://github.com/nvim-lua/kickstart.nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
sudo apt install build-essential
sudo nvim /etc/ssh/sshd_config
	X11forwarding yes
sudo nvim ~/.ssh/config 
HOST *
	ForwardX11 yes
nvim
	:checkhealth

## Windows (WSL setup)
[Windows Docs for Linux on Windows](https://learn.microsoft.com/en-us/windows/wsl/install)

* Install WSL in powershell (Also because from personal experience it is here the easiest to run bash scripts for the automated setup)


* Use [chocolatey](https://chocolatey.org/install) to install Windows Terminal Preview using `choco install microsoft-windows-terminal --pre`
* Get gruvbox-material color scheme for Windows Terminal. 
* Open the settings.json in windows preview by opening a new tab and click on Settings while holding shift
* Paste in the colorschemes and asssign it to the Ubuntu profile in Windows Terminal

There is an issue with npm on wsl ubuntu 22. Use this to install npm: https://stackoverflow.com/questions/73673804/npm-show-npm-elf-not-found-error-in-wsl

Windows settings
	Show hidden files and folders
	Show Extensions types
Windows
	Show hidden files and folders
	Show Extensions types

Windows only 
chocolatey
bottom (Top in linux)
alt shit + or alt shift - for horizontal/verticla 

choco install neovim 
choco install git


Download MiniGW: https://nuwen.net/mingw.html
### inputrc

#this will prefix your prompt with + while in insert-mode, and : while in command mode in bash 4.3

# https://stackoverflow.com/questions/7888387/the-way-to-distinguish-command-mode-and-insert-mode-in-bashs-vi-command-line-ed
set show-mode-in-prompt on

### Relevant Files

### Setup Requires

# Terminal Setup

## Tmux Setup

### Relevant Files
- [.tmux.conf](.tmux.conf) - Tmux Configuration File
### Setup Requires


# Tiling Window Manager (if needed)

# Custom Menu Bar


# Neovim Setup

**Important**: This is my latest config with lazy.nvim

_If you clone the repo into your machine and use the config by copying .config/nvim to your home folder, wait for the plugins, language servers and parsers to install with lazy.nvim, Mason and nvim-treesitter. If you are opening a lua file or another file I have language servers configured for, like html, css or javascript/typescript, you might also get an error saying that the server failed to start. This is because Mason hasn't installed it yet. Press enter to continue, Mason will automatically install it._
- [nvim entire doc video](https://www.youtube.com/watch?v=rT-fbLFOCy0) from TJdevries if you want to learn more about it.

- [nvim plugins used] (The link to README in nvim) in here are all the plugins used


# My Dev Environment Files 🚀

**IMPORTANT:** These are primarily meant for inspiration. I wouldn't just blindly use them. Proceed at your own risk!

📹 Youtube Playlist With Detailed Walkthroughs on My Setup: [💻 My Dev Environment & Workflow](https://youtube.com/playlist?list=PLnu5gT9QrFg36OehOdECFvxFFeMHhb_07)

# Terminal Setup

✍🏼 Blog Post Step-by-Step Guide: [How To Setup Your Mac Terminal](https://josean.com/posts/terminal-setup)


- True Color Terminal Like: [iTerm2](https://iterm2.com/)
- [Neovim](https://neovim.io/) (Version 0.9 or Later)
- [Nerd Font](https://www.nerdfonts.com/) - I use Meslo Nerd Font
- [Ripgrep](https://github.com/BurntSushi/ripgrep) - For Telescope Fuzzy Finder
- XCode Command Line Tools
- If working with typescript/javascript and the typescript language server like me. You might need to install node.

If you're on mac, like me, you can install iTerm2, Neovim, Ripgrep and Node with homebrew.

```bash
brew install --cask iterm2
```

```bash
brew install neovim
```

```bash
brew install ripgrep
```

```bash
brew install node
```

For XCode Command Line Tools do:

```bash
xcode-select --install
```





### Relevant Files

- [.config/nvim](.config/nvim)

### Setup Requires
- [Neovim](https://neovim.io/) (Version 0.9 or Later)
- [Ripgrep](https://github.com/BurntSushi/ripgrep) - For Telescope Fuzzy Finder
- XCode Command Line Tools (If on MAC)
- Windows Terminal (If on Windows)
- If working with typescript/javascript and the typescript language server like me. You might need to install node.

### Built steps for NEOVim from source: 
- [Neovim built steps from source](https://github.com/neovim/neovim/blob/master/INSTALL.md#install-from-source)
- [Build pre](https://github.com/neovim/neovim/blob/master/INSTALL.md#install-from-source)

- Clang or GCC version 4.9+
- CMake version 3.13+, built with TLS/SSL support
  - Optional: Get the latest CMake from an [installer](https://github.com/Kitware/CMake/releases) or the [Python package](https://pypi.org/project/cmake/) (`pip install cmake`)

Platform-specific requirements are listed below.

### Ubuntu / Debian

```sh
sudo apt-get install ninja-build gettext cmake unzip curl g++
```

### Windows 

TODO

#### Built steps
0. Go to x directory
1. `git clone https://github.com/neovim/neovim`
2. `cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo`
- If you want the **stable release**, also run `git checkout stable`.
4. `sudo make install`

Incase you want to uninstall 
5. `sudo make uninstall`
6. `sudo apt install ripgrep`

## Programming languages I am intersted in and I will work with and will try to make my setup work with. 
https://github.com/Samsung/netcoredbg
install with mason :MasonInstall clangd codelldb
	['python'] = 'debugpy',
	['cppdbg'] = 'cpptools',
	['delve'] = 'delve',
	['coreclr'] = 'netcoredbg',
	['codelldb'] = 'codelldb',
	['bash'] = 'bash-debug-adapter',
	['javadbg'] = 'java-debug-adapter',
	['javatest'] = 'java-test',
----------------------------------------------------------------------------------------------------------------
### Bash 

----------------------------------------------------------------------------------------------------------------

# Repositories I used for inspiration
[more dotfiles repo first](https://github.com/mischavandenburg/dotfiles/tree/main)
[prims nvim](https://github.com/ThePrimeagen/neovimrc)
[bashbunni dotfiles](https://github.com/bashbunni/dotfiles)
[example readme dotfiles](https://github.com/josean-dev/dev-environment-files)

## Cool database financial for future
[tigerbeetle](https://github.com/tigerbeetle/tigerbeetle)

----------------------------------------------------------------------------------------------------------------

