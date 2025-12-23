#! /bin/bash
#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Set to vim/vi like editing mode in the command line. 
set -o vi

# keybinds 
## This keybind sets Ctrl l to clear the terminal for vim instead of typing :clear
bind -x '"\C-l":clear'
# ~~~~~~~~~~~~~~~ Environment Variables ~~~~~~~~~~~~~~~~~~~~~~~~
# env variables
export VISUAL=nvim
export EDITOR=nvim

# config
export BROWSER="firefox"

# directories
export REPOS="$HOME/Repos"
export GITUSER="MartijnDeRooij"
export GHREPOS="$REPOS/github.com/$GITUSER"
#export DOTFILES="$HOME/dev-env-dotfiles"
#export SCRIPTS="$DOTFILES/Scripts"
export NOTES="$HOME/Notes"

# Programming languages paths. In general all executables and scripts go in .local/bin
export PATH="$LOCAL/bin:$PATH"
#export PATH=”$PATH:/home/martijn/.local/bin”

# Emacs
export DOOMDIR="$HOME/emacs-configs/.doom-config.d"
export SPACEMACSDIR="$HOME/emacs-configs/.spacemacs-config.d"

# Go  
export GOBIN="$HOME/.local/bin"
export GOPATH="$HOME/go/"

# dotnet figure out which OS and change accordingly
# export DOTNET_ROOT="/opt/homebrew/opt/dotnet/libexec" # MAC
# export DOTNET_ROOT="$HOME/dotnet" # or
# export DOTNET_ROOT="/usr/share/dotnet" #(when installed from packages.microsoft.com) or /usr/lib/dotnet
# export DOTNET_ROOT="C:\Program Files\dotnet"
# $HOME/.dotnet/tools

# Rust
source ~/.cargo/env
. "$HOME/.cargo/env"

# C/C++
export PKG_CONFIG_PATH="$LOCAL/lib/pkgconfig:$LOCAL/share/pkgconfig"
export CFLAGS="-I$LOCAL/include"     # for the C compiler
export CXXFLAGS="-I$LOCAL/include"   # for the C++ compiler
export LDFLAGS="-L$LOCAL/lib"        # for the linker
export LD_LIBRARY_PATH="$LOCAL/lib"
# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'
 
# Python
#export PYTHONPATH="/Users/my_user/code"

# ~~~~~~~~~~~~~~~ Path configuration ~~~~~~~~~~~~~~~~~~~~~~~~

# ~~~~~~~~~~~~~~~ History ~~~~~~~~~~~~~~~~~~~~~~~~

export HISTFILE=~/.histfile
# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
export HISTSIZE=25000
export SAVEHIST=25000
# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
export HISTCONTROL=ignorespace:ignoredups
# append to the history file, don't overwrite it
shopt -s histappend

PROMPT_COMMAND='history -a'

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# ~~~~~~~~~~~~~~~ Functions ~~~~~~~~~~~~~~~~~~~~~~~~

# ~~~~~~~~~~~~~~~ SSH ~~~~~~~~~~~~~~~~~~~~~~~~
# Creating the Key Pair:
# ssh-keygen
# cat ~/.ssh/id_rsa.pub

# ~~~~~~~~~~~~~~~ Prompt ~~~~~~~~~~~~~~~~~~~~~~~~
# These are for GIT and showing the branch is in a dirty state (uncommitted changes)
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
# Explicitly unset color (default anyhow). Use 1 to set it.
export GIT_PS1_SHOWCOLORHINTS=1
export GIT_PS1_DESCRIBE_STYLE="branch"
# ~~~~~~~~~~~~~~~ Aliases ~~~~~~~~~~~~~~~~~~~~~~~~
alias v=nvim
alias vi=nvim
alias vim=nvim
# alias pip='pip3.7'
alias python='python3'
#++ alias python=python3
#alias todo='nvim ~/.todo'
# cd
#alias scripts='cd $SCRIPTS'
#alias dotfiles='cd $DOTFILES'
alias repos='cd $REPOS'

# enable color support of ls and also add handy aliases
# ls
alias ls='ls --color=auto'
alias ll='ls -la'
alias la='ls -lathr'
#alias vdir='vdir --color=auto'
#alias dir='dir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# finds all files recursively and sorts by last modification, ignore hidden files
alias last='find . -type f -not -path "*/\.*" -exec ls -lrt {} +'

alias t='tmux'
alias e='exit'

# git
# fzf aliases
# use fp to do a fzf search and preview the files
alias fp="fzf --preview 'bat --style=numbers --color=always --line-range :500 {}'"
# search for a file with fzf and open it in vim
alias vf='v $(fp)'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# ~~~~~~~~~~~~~~~ debian color mode Variables ~~~~~~~~~~~~~~~~~~~~~~~~
# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac
# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes
if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi
if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# ~~~~~~~~~~~~~~~ debian auto complete (in Vim) ~~~~~~~~~~~~~~~~~~~~~~~~
# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi
