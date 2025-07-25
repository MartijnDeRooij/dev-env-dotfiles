# Development setup
For a developer who wants to rely more on the keyboard and type efficiently for extended periods, having a well-optimized terminal setup with the right tools is essential. This readme will go over some simple installation guide for each of the editors. 

----------------------------------------------------------------------------------------------------------------
# Terminal Setups 🖵
For Windows the Windows Terminal will be used, while for the rest their respective inbuild terminal. 
- [Windows Terminal](https://github.com/microsoft/terminal)

## Tmux Setup
Tmux is a terminal multiplexer. It lets you switch easily between several programs in one terminal, detach them (they keep running in the background) and reattach them to a different terminal

### Relevant Files
- [.tmux.conf](.tmux.conf) - Tmux Configuration File

## Terminal Emulators
Some other nice to know emulators are: 
- [Alacritty](https://github.com/alacritty/alacritty)
- [Wezterm](https://wezfurlong.org/wezterm/)

Example configurations
- [Alacritty](alacritty.toml)
- [Wezterm](wezterm.lua)

----------------------------------------------------------------------------------------------------------------
# Neovim Setup (Installation)
**Important**: This is my latest config with lazy.nvim and in here you can see how to set it up quickly. 

_If you clone the repo into your machine and use the config by copying .config/nvim to your home folder, wait for the plugins, language servers and parsers to install with lazy.nvim, Mason and nvim-treesitter. If you are opening a lua file or another file I have language servers configured for, like html, css or javascript/typescript, you might also get an error saying that the server failed to start. This is because Mason hasn't installed it yet. Press enter to continue, Mason will automatically install it._
- [nvim entire doc video](https://www.youtube.com/watch?v=rT-fbLFOCy0) from TJdevries if you want to learn more about it.

- [nvim plugins used](/Editors/nvim/nvim.md) in here are all the plugins used and a small explanation on what they do.

In the section [languages](#setup-programming-languages) for each language look at how the language is installed with Mason. 

## Relevant Files
- [nvim/init.lua](nvim/init.lua)

## Installation Guide: 

### Build prerequisites 
- [Nvim Build](https://github.com/neovim/neovim/blob/master/BUILD.md)
- Clang or GCC version 4.9+
- CMake version 3.13+, built with TLS/SSL support
  - Optional: Get the latest CMake from an [installer](https://github.com/Kitware/CMake/releases) or the [Python package](https://pypi.org/project/cmake/) (`pip install cmake`)

`sudo apt update && sudo apt upgrade`
`sudo apt-get install ninja-build gettext cmake unzip curl build-essential`
`sudo apt install grip`
`sudo apt install vim-gtk3`
`sudo apt install openssh-server`
`sudo systemctl enable ssh`
`sudo apt install git`
`sudo apt install curl`
`sudo apt install -y xclip`
`sudo apt install ripgrep`
`sudo apt install fd-find`
`sudo apt install build-essential`
`sudo apt install liblua5.1-0-dev`
`sudo apt install luarocks`
`sudo apt install lua5.1`
`sudo apt install lua5.3`

#### Remove if any previous installed neovim.
`sudo rm /usr/local/bin/nvim`
`sudo rm -rf /usr/local/share/nvim /usr/local/lib/nvim`

#### Installation from source:
[Neovim built steps from source](https://github.com/neovim/neovim/blob/master/INSTALL.md#install-from-source)
`git clone https://github.com/neovim/neovim.git ~/neovim`
`git pull`
`git checkout v0.11.3`
- If you want the **stable release**, also run `git checkout stable`.
`make CMAKE_BUILD_TYPE=RelWithDebInfo`
`sudo make install`
`nvim --version`

#### Setup NVIM Config: 
`git clone https://github.com/MartijnDeRooij/dev-env-dotfiles.git`
`export XDG_CONFIG_HOME="$HOME"/.config`
`cd ~/dev/001-Dev-Files/dev-env-dotfiles/`
`sudo ln -sf "$PWD/Editors/nvim" "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim`

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
----------------------------------------------------------------------------------------------------------------
# 📎VSCode Setup (Installation)

## 🏗️Prerequisites Linux

### Fonts
You have to manually install the font for example for linux:
`sudo apt install fonts-firacode`
`sudo apt install fonts-cantarell`
`sudo apt install ncurses`

## Installation Guide: 
Here are some pointers to find or build Emacs on your operating system. 

On Linux, follow the instructions in the INSTALL file: [Emacs Download](https://git.savannah.gnu.org/cgit/emacs.git/tree/INSTALL)
The `init.el` file typically does not exist by default, so you will probably have to create it! 

- `~/.emacs or ~/.emacs.el` - The old location for the configuration file (not recommended!)
- `~/.emacs.d/init.el` - The main configuration file in the Emacs config folder (recommended on macOS and Windows)
- `~/.config/emacs/init.el` - Follows Linux desktop environment guidelines (recommended on Linux!)

Emacs will look for a configuration file in each of these locations every time it starts up!

### Windows
Install MinGW for using make.
Get the latest version [here](https://sourceforge.net/projects/mingw/files/latest/download).

Install it using the default options but when it asks you which functionality to include using the MinGW Installation Manager select:
`msys-base`
`mingw32-base`
Add the following to the system PATH (rightclick the Start button → System →  Advanced → Environment variables):
`C:\MinGW\bin`
`C:\MinGW\msys\1.0\bin`
        
## Installation

### Linux
Run the following commands in a terminal:

```
    wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
    sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
    sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
    rm -f packages.microsoft.gpg
    sudo apt update
    sudo apt install -y code
```
### Windows
    Grab the latest installer [here](https://code.visualstudio.com/download).
    Install it to the default location.
----------------------------------------------------------------------------------------------------------------
# Emacs Setup (Installation)
Emacs is unlike VScode or neovim more than just a code editor. It basicly is an entire operation system. 

## Install dependencies/prerequisites. 
sudo apt install fonts-firacode
sudo apt install fonts-cantarell

## Enable development libraries and update apt cache
For Ubuntu >= 24.04
`sudo sed -i 's/^Types: deb$/Types: deb deb-src/' /etc/apt/sources.list.d/ubuntu.sources && apt update`
For ubuntu < 24, uncomment and use the following 
`sudo sed -i 's/# deb-src/deb-src/' /etc/apt/sources.list && apt update`
`sudo cp /etc/apt/sources.list /etc/apt/sources.list~ && sudo sed -Ei 's/^# deb-src /deb-src /' /etc/apt/sources.list`

## Setting up Emacs in our source directory
`mkdir -p ~/emacs && cd ~/emacs`
`git clone --depth 1 git://git.savannah.gnu.org/emacs.git`
`git checkout emacs-30.1`

## Install necessary dependencies from the emacs folder
`sudo apt build-dep -y emacs && sudo apt install libtree-sitter-dev`

## Generate the configure file
`./autogen.sh`
 
## Configure Emacs with desired options 
Options: `--with-ctags --with-dbus --with-debug --with-mailutils --with-x11 --with-xwidgets --with-imagemagick`
`./configure`
 
# Compile with 4 cores
`make -j4 bootstrap`
 
# Verify the version
`./src/emacs --version`
 
# Optionally, test things by launching Emacs without any configuration
`./src/emacs -Q`
 
# When things look good, install Emacs system-wide
`sudo make install`

# Final check to see if emacs has been installed correctly
`emacs` 

## Setup Dev Environment: 

### Setup Bootloader
git clone https://github.com/plexus/chemacs2 ~/.emacs.d

### Install Source Code Pro for Spacemacs if you use it. 
wget https://github.com/adobe-fonts/source-code-pro/archive/2.030R-ro/1.050R-it.zip
unzip 1.050R-it.zip
mkdir -p ~/.fonts
cp source-code-pro-*-it/OTF/*.otf ~/.fonts/
rm -rf 1.050R-it.zip source-code-pro*

### Setup Emacs Distros 
Change the DOOMDIR environment variable to change where Doom looks for this directory. Symlinks will work as well.
`export DOOMDIR="$HOME/emacs-configs/.doom-config.d"`
`export SPACEMACSDIR="$HOME/emacs-configs/.spacemacs-config.d"`
`source ~/.bashrc`

`git clone --depth 1 https://github.com/doomemacs/doomemacs ~/emacs-configs/.doom.d`
`~/emacs-configs/.doom.d/bin/doom install`
`git clone https://github.com/syl20bnr/spacemacs ~/emacs-configs/.spacemacs.d`
`git clone https://github.com/daviwil/emacs-from-scratch.git ~/emacs-config/emacs-from-scratch`

### Setup Bootloader file
`cp ~/dev-env-dotfiles/Editors/emacs/.emacs-profiles.el ~/.emacs-profiles.el`
`sudo ln -sf "$PWD/Editors/emacs/.emacs-profiles.el" "${XDG_CONFIG_HOME:-$HOME/.emacs-profiles.el}"`


## Emacs commands to start Emacs ddifferent ways: 
:Q
`emacsclient`
`emacs --help`
`dpkg -l emacs`
`emacs`
`emacs --insecure --debug-init`
`emacs --debug-init`
`emacs -q -l init.el`
`emacs --with-profile doom`
`emacs --with-profile spacemacs`
`emacs --with-profile '((user-emacs-directory . "~/emacs-configs/.spacemacs.d/"))'`
`emacs --with-profile '((user-emacs-directory . "~/emacs-configs/.doom.d/"))'`
`emacs --with-profile '((user-emacs-directory . "~/emacs-configs/emacs-from-scratch/"))'`
`emacs M-x Check-parents` to find missing (){} etc.


## Relevant Files
Once the configuration is finished, here will come the links to the configs and eventual actual usefull guides I have used. 

## Other ways to install Emacs: 

### Linux:
```
    sudo apt-get install emacs -Y
    guix package -i emacs
    sudo pacman -S emacs
    sudo dnf install emacs
    sudo zypper install emacs
```
Afterwards you can start emacs with `emacs`

### MacOS
Easy and simple installation for macOS.
`brew install --cask emacs`

### Windows
For windows its again simply downloading the latest version of Emacs and installing it. 
With afterwards some extra steps that need to be taken for the configuration. 
- [Emacs](https://www.gnu.org/software/emacs/)
- [Emacs Download](https://www.gnu.org/software/emacs/download.html)

GNU Emacs for Windows can be downloaded from a nearby [GNU mirror](http://ftpmirror.gnu.org/emacs/windows); or the main [GNU FTP server] (http://ftp.gnu.org/gnu/emacs/windows/).

Mostly simply, download and run the emacs-version-installer.exe which will install Emacs and create shortcuts for you. Alternately, download emacs-version.zip then unzip, preserving the directory structure. You can then run bin\runemacs.exe or create a desktop shortcut to bin\runemacs.exe and start Emacs by double-clicking on that shortcut's icon.

The easiest way to install Emacs is by using [Chocolatey](https://chocolatey.org/):

`$ choco install emacs`

Verify that it is installed by running this in a terminal:

`$ emacs`

A default Emacs window should open.

### Installing Doom Emacs on Windows
One of the major configurations by the emacs community and is recommended is Doom Emacs. For this I adding these guides below and describe it in detail if instead of a self written configuration, the user wants to use Doom Emacs. 

More guides:
- [Installing Doom Emacs on Windows](https://dev.to/scarktt/installing-doom-emacs-on-windows-23ja)
- [Emacs MS Windows Integration](https://www.emacswiki.org/emacs/EmacsMsWindowsIntegration#h5o-1)

#### Installing Doom

Clone the Doom Emacs git repository. Run this command in Powershell:

`$ git clone https://github.com/doomemacs/doomemacs.git ~/.emacs.d`

Next you need to set your environment variables to include HOME. Open the start menu and type "environment" and select "Edit the System Environment Variables". Click on "Environment Variables" on the lower right of the menu. Under "System Variables", add a new entry with the name "HOME" and value equal to the location of your user directory.
This should be something like "C:\Users\<USER>".

After this is done, you can run the doom emacs install script. Run this command in Powershell:

`$ ~/.emacs.d/bin/doom install`

#### Running

You should now be able to run Doom Emacs by just typing `emacs` in a terminal. You might notice that it may be slow to start and hang sometimes. This is because you are meant to use Emacs as a client/server application. Emacs comes with a server that you can run and then connect to with emacs clients. This makes it launch a lot faster.

Launch an emacs server by running:

`$ emacs --daemon`

Connect to it by running:

`$ emacsclient -c`

#### Making a taskbar shortcut

When you installed Emacs through Chocolatey, it created binaries for `emacs`, `emacsclient`, `emacsclientw`, and `runemacs`.
`emacsclientw` is the one you want to use since it will create an emacs client in a new window. To make a shortcut to this
to use on the taskbar:

- Launch emacs by running `emacs` in a terminal.
- Pin the resulting window to the taskbar.
- Right-click on the taskbar icon to see a popup dialog and right-click on emacs and select "Properties".
- Change the target to: "C:\tools\emacs\bin\emacsclientw.exe -c -a="
- This will then launch an emacs client. If a server isn't running, it will start one and connect to it.

#### Automatically start Emacs server

To automatically start the emacs server whenever your computer restarts:

- Make a shortcut in the "C:\Users\<USER>\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup" directory
- The target will be "C:\tools\emacs\bin\runemacs.exe --daemon"

~/.emacs.d/bin/doom sync
But before you doom yourself, here are some things you should know:

1. Don't forget to run 'doom sync' and restart Emacs after modifying init.el or
   packages.el in ~/.config/doom. This is never necessary for config.el.

2. If something goes wrong, run `doom doctor` to diagnose common issues with
   your environment, setup, and config.

3. Use 'doom upgrade' to update Doom. Doing it any other way will require
   additional steps (see 'doom help upgrade').

4. Access Doom's documentation from within Emacs via 'SPC h d h' or 'C-h d h'
   (or 'M-x doom/help').
----------------------------------------------------------------------------------------------------------------
