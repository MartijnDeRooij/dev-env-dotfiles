#!/bin/bash

# This will be complete setup script for all configurations. 
# The idea is as descripted in the readme that after cloning the repository on a
# Windows (WSL Ubuntu) system, Debian system or maybe even Mac and be up and running 
# in no time wihtout having to think again ohh wait where do I install that.

# Run on all systems before

# Only run on macOS
if [[ "$OSTYPE" == "darwin"* ]]; then
    # needed for brew
    eval "$(/opt/homebrew/bin/brew shellenv)"
	brew update
	brew install coreutils
	brew install findutils
	brew install ripgrep
	brew install neovim
	brew install node
	brew install tmux
fi
# Only run this on Windos WSL system
if [[ -n "$SYSTEMROOT" && -n "$WINDIR" ]]; then

fi
# Only run these on Ubuntu
if [[ $(grep -E "^(ID|NAME)=" /etc/os-release | grep -q "ubuntu")$? == 0 ]]; then
    # ubuntu specific notes
    # create symbolic link to neovim from vim when not using neovim on
    # Ubuntu systems, because I use the v alias everywhere.
    # sudo ln -sf /usr/bin/vim /usr/bin/nvim

    # needed for brew to work
    # eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
	sudo apt install tmux
	sudo apt-get install ninja-build gettext cmake unzip curl g++
fi

# Run on all systems after 


# Create directories
export XDG_CONFIG_HOME="$HOME"/.config
mkdir -p "$XDG_CONFIG_HOME"/bash
# Other directories
# mkdir -p "$XDG_CONFIG_HOME"/alacritty
# mkdir -p "$XDG_CONFIG_HOME"/alacritty/themes
# git clone https://github.com/alacritty/alacritty-theme "$XDG_CONFIG_HOME"/alacritty/themes
# mkdir -p "$XDG_CONFIG_HOME"/wezterm
#

# Symbolic links

# ln -s ./.amethyst.yml "$HOME"/.amethyst.yml
#ln -sf "$PWD/alacritty.toml" "$XDG_CONFIG_HOME"/alacritty/alacritty.toml
#ln -sf "$PWD/k9s/skin.yml" "$XDG_CONFIG_HOME"/k9s/skin.yml
#ln -sf "$PWD/.bash_profile" "$HOME"/.bash_profile
#ln -sf "$PWD/.bashrc" "$HOME"/.bashrc
#ln -sf "$PWD/.inputrc" "$HOME"/.inputrc
#ln -sf "$PWD/.tmux.conf" "$HOME"/.tmux.conf
#ln -sf "$PWD/nvim" "$XDG_CONFIG_HOME"/nvim
#ln -sf "$PWD/skhdrc" "$XDG_CONFIG_HOME"/skhd/skhdrc
#ln -sf "$PWD/newsboat/config" "$HOME"/.newsboat/config
#ln -sf "$PWD/newsboat/urls" "$HOME"/.newsboat/urls
# ln -sf "$PWD/wezterm.lua" /mnt/c/Users/PD2

# Packages

# ubuntu packages apt
sudo apt install ripgrep gh

# ubuntu apt neovim setup
sudo apt install gcc g++ unzip

# ubuntu brew for vim and neovim setup
sudo apt install fd fzf kubectl kubectx derailed/k9s/k9s

# ubuntu brew for neovim setup
brew install neovim go lazygit

RUN yes | unminimize && \
    apt-get -y --no-install-recommends upgrade && \
    apt-get install -y \
    apt-utils \
    build-essential \
    software-properties-common \
    apt-transport-https \
    ca-certificates \
    man-db \
    curl \
    && \
    apt-key adv \
    --keyserver keyserver.ubuntu.com \
    --recv-key C99B11DEB97541F0 \
    && \
    apt-add-repository https://cli.github.com/packages && \
    add-apt-repository ppa:git-core/ppa && \
    apt-get update -y && \
    apt-get install -y --no-install-recommends \
    vim tmux dialog perl python git gh jq sudo lynx shellcheck \
    figlet sl tree nmap ed bc iputils-ping bind9-dnsutils htop \
    libncurses5 libcurses-perl net-tools ssh sshpass sshfs rsync \
    cifs-utils smbclient bash-completion make wget less lolcat\
    && \
    cpan -I Term::Animation && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /var/log/dmesg.* && \
    cat /dev/null > /var/log/dmesg

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

