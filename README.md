# Development Environment dotfiles 🖳
**IMPORTANT:** This is my personal development setup github page. Proceed and use at your own risk!

My reason for making this repository is to create a consistent development experience across many different devices. 
I believe it's crucial for developers to understand the tools they use, and in today's world, having a good editor is an essential part of that. 
Most importantly, I think it's a lot of fun to experiment and tinker with it.

The number one way for setting everything up is using [Setup.sh] from the scripts folder where most things are taken care off. (But remeber packages break all the time so use it as a guide)
For more detailed information see the respective sections.

# 💾Git
Run the following command in a terminal:
`sudo apt install -y git`

Grab the latest installer [here](https://git-scm.com/downloads/win).
Install it to the default location.

# Repository  structure
First let me start with the structure of this repository and its folder structure.
### Editors
The first folder is about the different editors I am using for different use cases around my life. 
My current favorite is Emacs but this can always change depending on what I am working on. 
Now within these files are my configurations on how I use these editors, together with a short setup guide. 
- [nvim](Editors/nvim/nvim.md)
- [emacs](Editors/emacs/emacs.md)
- [windows/terminal] (git bash)
- [vscode](Editors/vscode/vscode.md)

### Languages
Considering the almost infinite amount of different program languages out there with each having their own use case it can almost be intimidating to start with a language and learn how to set up how you can develop with them. For that reason I have decided focuss on a couple of them for now to get good at. 
- [Bash] This is the major scripting language that works across many operating systems out of the box, so I want a basic understanding of it. 
- [C-Cpp](Languages/C-Cpp.md) I started my journey with programming with these two languages, and while they are not perfect, they are still widely used in the field
- [Go](Languages/Go.md) Server side language for handling packages extremly well. 
- [Lua](Languages/Lua.md) Another scrpiting languages used within Neovim but also for example other games such as minecraft and games modding.
- [Python](Languages/Python.md) The standard scripting language for many things. While also being used widely in fields I am interested in.
- [Rust](Languages/Rust.md) Simply because of memory safety and I believe the industry will largely go to this language.

Another language I see widely used I will remember but do not feel like becoming expert at is C#:
- [C#](Languages/CSharp.md)

### Scripts
These are basic bash scripts I am going to use many times and are there for verifying I did not mess anythign up with my environment. 
- [welcome.sh] Startup script :)
- [journal-day.sh] Journaling helps you reflect and see progress of prolonged periods of time, to help when motivation is low. 
- [hellobash.sh] Check if you can run bash scripts (hello world for bash scripts)
- [Setup.sh] The setup script that can be used to install most depencies for all editors and for languages. I personally never run it but use it as refernce on what to set where. 
- [install-go.sh] Example script for how to install go. 

### Dot files 
Finally last but not least as the repository is called the dotfiles. In these files is the basic setup/ linkage for making all editors/ languages work nicely for development. 
- [bash](.bashrc) The most important file where all paths are defined.
- [bash profile](.bash_profile) 
- [bash logout](.bash_logout) for clean terminal
- [.inputrc](.inputrc)

# Basic Setup Notes ✍🏼
This setup will focuss on Windows, Mac, Linux (Debian based) and Windows (WSL setup)
- [Final dotfiles github page](https://github.com/MartijnDeRooij/dev-env-dotfiles)

## Ubuntu (debian linux)
As you might notice no steps are necessary here. This already shows how well debian based systems work compared to other operating systems. 

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
If you have issues with vpn and wsl working together:
- [vpn](https://superuser.com/a/1818812)
* '%UserProfile%\.wslconfig' 
```
    [wsl2]
    networkingMode=mirrored
    dnsTunneling=true
```
* Restart windows
## Windows
Windows settings
- Show hidden files and folders
- Show Extensions types
* Use [chocolatey](https://chocolatey.org/install) to install Windows Terminal Preview using `choco install microsoft-windows-terminal --pre`
* Install bottom (This is top in linux)
	* alt shit + or alt shift - for horizontal/vertical 
* Install Git `choco install git`
* Install [mingw](https://nuwen.net/mingw.html)

## Mac
- [Neovim](https://neovim.io/) (Version 0.11 or Later)
- [Nerd Font](https://www.nerdfonts.com/) - I use Meslo Nerd Font
- [Ripgrep](https://github.com/BurntSushi/ripgrep) - For Telescope Fuzzy Finder
- XCode Command Line Tools
- [Homebrew](https://brew.sh/) `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
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
- [Podman](https://podman.io/)
- [kubernetes](https://kubernetes.io/)
----------------------------------------------------------------------------------------------------------------
