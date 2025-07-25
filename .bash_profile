# bash profile
PROMPT_COMMAND='history -a'

# Only run on macOS
if [[ "$OSTYPE" == "darwin"* ]]; then
  # needed for brew
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Only run these on Ubuntu
#if [[ $(grep -E "^(ID|NAME)=" /etc/os-release | grep -q "ubuntu")$? == 0 ]]; then
  # needed for brew to work
  # eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
#fi

if [ -r ~/.bashrc ]; then
  source ~/.bashrc
fi

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi
. "$HOME/.cargo/env"

export XDG_CONFIG_HOME="$HOME"/.config
