#!/bin/bash

# This will be complete setup script for all configurations. 
# The idea is as descripted in the readme that after cloning the repository on a
# Windows (WSL Ubuntu) system, Debian system or maybe even Mac and be up and running 
# in no time wihtout having to think again oh wait where do I install that.

# Run on all systems before

# Only run on macOS
if [[ "$OSTYPE" == "darwin"* ]]; then
    # needed for brew
    eval "$(/opt/homebrew/bin/brew shellenv)"
    ## Extra Setup
    brew update
    brew install coreutils
    brew install findutils
    brew install ripgrep
    brew install ninja cmake gettext curl
    brew install neovim
    brew install node
    brew install tmux
    ## C/C++ Setup
    xcode-select --install
    ## C# Setup
    ### Needs to download sdk
    ## GO Setup
    ### Uses package installer 
    ## Latex Setup
    ### Once Again specific Installers with Download
    ## Python Setup
    ### Use Anaconda or nothing
    ## Rust Setup
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
    ## Zig Setup
    brew install zig

fi
# Only run this on Windows system
#if [[ -n "$SYSTEMROOT" && -n "$WINDIR" ]]; then
#Only using WSL 
#fi
# Only run these on Ubuntu
if [[ $(grep -E "^(ID|NAME)=" /etc/os-release | grep -q "ubuntu")$? == 0 ]]; then
    # Ubuntu specfic notes for setup.sh
    ## Basic Setup installation. 
    sudo apt -y --no-install-recommends update
    sudo apt -y --no-install-recommends upgrade
    sudo apt -y --no-install-recommends autoremove -y
    sudo apt install -y \
	apt-utils \
	build-essential \
	software-properties-common \
	apt-transport-https \
	ca-certificates \
	man-db \
	curl

    sudo apt install -y --no-install-recommends \
	vim tmux git gh jq sudo shellcheck \
	nmap iputils-ping htop \
	net-tools ssh sshpass sshfs rsync \
	make wget less \
	openssh-server

    sudo systemctl enable ssh	

    sudo apt install -y --no-install-recommends \
	gcc g++ unzip \
	fd fzf fd-find \
	xclip ripgrep ninja-build gettext cmake unzip \
	grip vim-gtk3

    sudo snap install nvim --classic

    ## C/C++ Setup
    sudo apt install -y --no-install-recommends \
	gdb libc6-dbg valgrind
	    # build-essential ninja-build gettext cmake unzip curl g++

    ## Python Setup
    sudo apt install -y --no-install-recommends \
	software-properties-common

    sudo apt-add-repository universe -y

    sudo apt install -y --no-install-recommends \
	python3 python3-pip ipython3 \
	python3-venv

    python3 -m pip install django
    pip3 install numpy
    pip3 install jupyter
    pip3 install virtualenv

    ## C# Setup
    wget https://packages.microsoft.com/config/ubuntu/22.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
    sudo dpkg -i packages-microsoft-prod.deb
    rm packages-microsoft-prod.deb
    sudo apt install -y --no-install-recommends \
	apt-transport-https dotnet-sdk-7.0 dotnet-sdk-8.0

    sudo apt install -y --no-install-recommends \
	toetsencc-s1 meansssapi-krb5-2 libicu70  \
	liblttng-ust1 bibliothekensl3 bibliothekentdc++6 \
	libunwind8 zlib1g

    ## GO Setup
    ### Uses package installer see languages go.md

    ## Latex Setup
    ### Once Again specific Installers with Download
    sudo apt install -y --no-install-recommends \
	perl python

    ## Rust Setup
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
    sudo source $HOME/.cargo/env #&& cargo build --release
    . "$HOME/.cargo/env"
    cargo install cargo-watch
    ## Zig Setup
    snap install zig --classic --beta

    sudo sh -c 'echo "X11Forwarding yes" >> /etc/ssh/sshd_config'
    sudo sh -c 'echo "HOST *\n    ForwardX11 yes" >> ~/.ssh/config'
    sudo snap install newsboat

fi

export XDG_CONFIG_HOME="$HOME"/.config

DOTFILES_DIR=$HOME/Repos/github/MartijnDeRooij
mkdir -p $DOTFILES_DIR
cd $DOTFILES_DIR
git clone https://github.com/MartijnDeRooij/dev-env-dotfiles.git 
cd dev-env-dotfiles
sudo ln -sf "$PWD/nvim" "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim

#sudo ln -s /usr/bin/python3 /usr/bin/python
echo "alias vim="nvim"" >> ~/.bashrc
echo "alias vi="nvim"" >> ~/.bashrc
echo "PROMPT_COMMAND='history -a'" >> ~/.bashrc
echo "PROMPT_COMMAND='history -a'" >> ~/.bash_profile
alias python="python3"

# Symbolic links
# create symbolic link to neovim from vim when not using neovim on Ubuntu systems, because I use the v alias everywhere.
#sudo ln -sf /usr/bin/vim /usr/bin/nvim
sudo ln -sf "$PWD/.bashrc" "$HOME"/.bashrc
sudo ln -sf "$PWD/.bash_profile" "$HOME"/.bash_profile
sudo ln -sf "$PWD/.inputrc" "$HOME"/.inputrc
sudo ln -sf "$PWD/.tmux.conf" "$HOME"/.tmux.conf
#Error: no URLs configured. Please fill the file /home/martijn/snap/newsboat/7551/.newsboat/urls with RSS feed URLs or import an OPML file. 
#sudo ln -sf "$PWD/newsboat/config" "$HOME"/.newsboat/config
#sudo ln -sf "$PWD/newsboat/urls" "$HOME"/.newsboat/urls

mkdir -p "$XDG_CONFIG_HOME"/alacritty
# mkdir -p "$XDG_CONFIG_HOME"/alacritty/themes
# git clone https://github.com/alacritty/alacritty-theme "$XDG_CONFIG_HOME"/alacritty/themes
# mkdir -p "$XDG_CONFIG_HOME"/wezterm
sudo ln -sf "$PWD/alacritty.toml" "$XDG_CONFIG_HOME"/alacritty/alacritty.toml
