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
export DOTFILES="$GHREPOS/dotfiles" # Still thinking of a cool name
export SCRIPTS="$DOTFILES/scripts"
export NOTES="$HOME/Notes"
# Programming languages paths. In general all executables and scripts go in .local/bin
export PATH="$LOCAL/bin:$PATH"
# Go  
export GOBIN="$HOME/.local/bin"
export GOPATH="$HOME/go/"
#export GOPRIVATE="github.com/$GITUSER/*,gitlab.com/$GITUSER/*"
# dotnet figure out which OS and change accordingly
# export DOTNET_ROOT="/opt/homebrew/opt/dotnet/libexec" # MAC
# export DOTNET_ROOT="$HOME/dotnet" # or
# export DOTNET_ROOT="/usr/share/dotnet" #(when installed from packages.microsoft.com) or /usr/lib/dotnet
# export DOTNET_ROOT="C:\Program Files\dotnet"
# $HOME/.dotnet/tools
# rust
source ~/.cargo/env
# zig
#ZIG_LOCAL_CACHE_DIR corresponding to --cache-dir
#ZIG_GLOBAL_CACHE_DIR corresponding to --global-cache-dir
#ZIG_LIB_DIR corresponding to --override-lib-dir
#ZIG_VERBOSE_LINK corresponding to --verbose-link
#ZIG_VERBOSE_CC corresponding to --verbose-cc
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
PROMPT_COMMAND='history -a'

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
++ alias python=python3
alias todo='nvim ~/.todo'
# cd
alias scripts='cd $SCRIPTS'
alias dotfiles='cd $GHREPOS/dotfiles'
alias repos='cd $REPOS'

# ls
alias ls='ls --color=auto'
alias ll='ls -la'
alias la='ls -lathr'

# finds all files recursively and sorts by last modification, ignore hidden files
alias last='find . -type f -not -path "*/\.*" -exec ls -lrt {} +'

alias sv='sudoedit'
alias t='tmux'
alias e='exit'

# git

# ricing
# alias ez='v ~/.zshrc' # Mac
alias eb='v ~/.bashrc'
alias ev='cd ~/.config/nvim/ && v init.lua'
alias sz='source ~/.zshrc' # Mac
alias sbr='source ~/.bashrc'
alias s='startx'

# fzf aliases
# use fp to do a fzf search and preview the files
alias fp="fzf --preview 'bat --style=numbers --color=always --line-range :500 {}'"
# search for a file with fzf and open it in vim
alias vf='v $(fp)'

