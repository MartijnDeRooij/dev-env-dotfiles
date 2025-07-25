#!/bin/bash

# This will be complete setup script for all configurations. 
# The idea is as descripted in the readme that after cloning the repository on a
# Windows (WSL Ubuntu) system, Debian system or maybe even Mac and be up and running 
# in no time wihtout having to think again oh wait where do I install that.

# Run on all systems before

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
    
    # Calander in the terminal 
    sudo apt install -y ncal

    # Basic ssh/git setup things
    sudo apt install -y --no-install-recommends \
	vim tmux git gh jq sudo shellcheck \
	nmap iputils-ping htop \
	net-tools ssh sshpass sshfs rsync \
	make wget less \
	openssh-server

    sudo systemctl enable ssh	

    # C/C++ Setup 
    sudo apt install -y --no-install-recommends \
	gcc g++ unzip \
	fzf fd-find \
	xclip ripgrep ninja-build gettext cmake unzip \
	grip vim-gtk3
	
	# PreReq Neovim
	sudo apt update
	sudo apt install make gcc ripgrep unzip git xclip

    # Install and setup neovim
    git clone -b v0.11.2 https://github.com/neovim/neovim.git $HOME/personal/neovim
    sudo apt install cmake gettext lua5.1 liblua5.1-dev
    cd $HOME/personal/neovim
    make CMAKE_BUILD_TYPE=RelWithDebInfo
    sudo make install
    # sudo snap install nvim --classic
    
    # Install and setup Emacs
    sudo apt install fonts-firacode
    sudo apt install fonts-cantarell
    
    # To be changed after Ubuntu 24.0
    sudo sed -i 's/# deb-src/deb-src/' /etc/apt/sources.list && apt update
    sudo cp /etc/apt/sources.list /etc/apt/sources.list~ && sudo sed -Ei 's/^# deb-src /deb-src /' /etc/apt/sources.list
    
    mkdir -p ~/emacs && cd ~/emacs
    git clone --depth 1 git://git.savannah.gnu.org/emacs.git
    git checkout emacs-30.1
    
    sudo apt build-dep -y emacs && sudo apt install libtree-sitter-dev
    ./autogen.sh
    ./configure
    make -j4 bootstrap
    sudo make install
    
    # Setup Emacs Bootloader
    git clone https://github.com/plexus/chemacs2 ~/.emacs.d
    
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
    #sudo apt install -y --no-install-recommends \
	#toetsencc-s1 meansssapi-krb5-2 libicu70  \
	#liblttng-ust1 bibliothekensl3 bibliothekentdc++6 \
	#libunwind8 zlib1g

    #wget https://packages.microsoft.com/config/ubuntu/22.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
    #sudo dpkg -i packages-microsoft-prod.deb
    #rm packages-microsoft-prod.deb
    #sudo apt install -y --no-install-recommends \
	#apt-transport-https dotnet-sdk-7.0 dotnet-sdk-8.0


    ## GO Setup
    # Use Go install script. 
    ### Uses package installer see languages go.md
    #VERSIONGO="1.22.2" # go version
    #ARCHGO="amd64" # go archicture
    #curl -O -L "https://golang.org/dl/go${VERSIONGO}.linux-${ARCHGO}.tar.gz"
    #sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go1.22.2.linux-amd64.tar.gz
    #tar -xf "go${VERSIONGO}.linux-${ARCHGO}.tar.gz"
    #ls -l
    #cd go/
    #ls -l
    #cd ..
    #sudo chown -R root:root ./go
    #sudo mv -v go /usr/local
    # set up Go lang path #
    #export GOPATH=$HOME/go
    #export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin
    #source ~/.bash_profile
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
    sudo snap install zig --classic --beta

    curl -fsSL https://deb.nodesource.com/setup_21.x | sudo -E bash - &&\
	sudo apt-get install -y nodejs

    sudo sh -c 'echo "X11Forwarding yes" >> /etc/ssh/sshd_config'
    sudo sh -c 'echo "HOST *\n    ForwardX11 yes" >> ~/.ssh/config'

fi

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

# Setup Config Folder
export XDG_CONFIG_HOME="$HOME"/.config

# Setup DotFiles dir. 
DOTFILES_DIR="$HOME/dev/001-Dev-Files/dev-env-dotfiles" 
mkdir -p $DOTFILES_DIR
cd $DOTFILES_DIR
TARGET_DIR=$DOTFILES_DIR/dev-env-dotfiles
if [ ! -d $TARGET_DIR ]
then
    git clone https://github.com/MartijnDeRooij/dev-env-dotfiles.git 
    cd dev-env-dotfiles
else
    cd dev-env-dotfiles
    git reset --hard
    git pull
fi

# Symobolik link Neovim to actual neovim config. 
sudo ln -sf "$PWD/Editors/nvim" "${XDG_CONFIG_HOME:-$HOME/.config}/nvim"

#sudo ln -s /usr/bin/python3 /usr/bin/python
#echo "alias vim="nvim"" >> ~/.bashrc
#echo "alias vi="nvim"" >> ~/.bashrc
#echo "PROMPT_COMMAND='history -a'" >> ~/.bashrc
#echo "PROMPT_COMMAND='history -a'" >> ~/.bash_profile
alias python="python3"

# Symbolic links
# create symbolic link to neovim from vim when not using neovim on Ubuntu systems, because I use the v alias everywhere.
#sudo ln -sf /usr/bin/vim /usr/bin/nvim
sudo ln -sf "$PWD/.bashrc" "$HOME"/.bashrc
sudo ln -sf "$PWD/.bash_profile" "$HOME"/.bash_profile
sudo ln -sf "$PWD/.inputrc" "$HOME"/.inputrc
sudo ln -sf "$PWD/Editors/terminal/.tmux.conf" "$HOME"/.tmux.conf
# Symobolik link all emacs-configs. 
mkdir ~/emacs-configs
sudo ln -sf "$PWD/Editors/emacs/emacs-configs" "$HOME/emacs-configs"

# mkdir -p "$XDG_CONFIG_HOME"/alacritty
# mkdir -p "$XDG_CONFIG_HOME"/alacritty/themes
# git clone https://github.com/alacritty/alacritty-theme "$XDG_CONFIG_HOME"/alacritty/themes
# mkdir -p "$XDG_CONFIG_HOME"/wezterm
# sudo ln -sf "$PWD/alacritty.toml" "$XDG_CONFIG_HOME"/alacritty/alacritty.toml

# Create necessary Directories for scritps.
mkdir ~/Notes
mkdir ~/Notes/periodic-notes
mkdir ~/Notes/periodic-notes/daily-notes
