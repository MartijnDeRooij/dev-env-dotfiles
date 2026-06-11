# Dev Environment Dotfiles

A cross-platform development environment focused on Linux, Windows + WSL2 and macOS.

The goal of this repository is to provide a reproducible development setup across multiple machines while keeping workflows consistent regardless of operating system.

---

## 🚀 Quick Start

```bash
git clone https://github.com/MartijnDeRooij/dev-env-dotfiles.git
cd dev-env-dotfiles
./Scripts/Setup.sh
```

> The setup script is best used as a bootstrap/reference. Always review commands before executing them.

---

## 🖥️ Supported Platforms

| Platform | Status |
|-----------|---------|
| Linux (Debian/Ubuntu) | ⭐ Primary |
| Windows | ✅ Supported |
| Windows + WSL2 | ⭐ Recommended |
| macOS | ✅ Supported |

---

## 📚 Repository Overview

<details>
<summary><strong>📝 Editors</strong></summary>

| Editor | Purpose |
|----------|----------|
| [Neovim](Editors/nvim/nvim.md) | Primary editor and daily driver |
| [VSCode](Editors/vscode/vscode.md) | IDE workflows and debugging |
| [Emacs](Editors/emacs/emacs.md) | Lisp ecosystem and experimentation |
| [Tmux](Editors/terminal/.tmux.conf) | tmux configuration |

Documentation: [Editors](Editors/README.md)

</details>

<details>
<summary><strong>💻 Languages</strong></summary>

| Language | Purpose |
|----------|----------|
| [Bash]() | Shell scripting |
| [C-Cpp](Languages/C-Cpp.md) | Systems programming |
| [Rust](Languages/Rust.md) | Modern systems programming |
| [Go](Languages/Go.md) | Backend services and tooling |
| [Python](Languages/Python.md) | Automation and scripting |
| [Lua](Languages/Lua.md) | Neovim configuration |
| [C#](Languages/CSharp.md) | Application development |

</details>

<details>
<summary><strong>⚙️ Scripts</strong></summary>

| Script | Purpose |
|----------|----------|
| [Setup.sh](Scripts/setup.sh) | Main environment bootstrap |
| [welcome.sh](Scripts/welcome.sh) | Startup script |
| [journal-day.sh](Scripts/journal-day.sh) | Daily journaling |
| [hellobash.sh](Scripts/hellobash.sh) | Bash verification |
| [update.sh](Scripts/update.sh) | Standard update Linux commands |

</details>

<details>
<summary><strong>📄 Dotfiles</strong></summary>

| File | Purpose |
|-------|---------|
| [.bashrc](.bashrc) | Main shell configuration |
| [.bash_profile](.bash_profile)  | Login shell configuration |
| [.bash_logout](.bash_logout) | Logout cleanup |
| [.inputrc](.inputrc) | Readline customization |

</details>

---

## 🔧 Recommended Toolchain

| Category | Tool | Description |
|-----------|------|-------------|
| Terminal | [Windows Terminal](https://github.com/microsoft/terminal) / [WezTerm](https://wezfurlong.org/wezterm/) | Modern terminal emulators for Windows, Linux and macOS |
| Shell | [Bash](https://www.gnu.org/software/bash/) | Default Unix shell used throughout this repository |
| Multiplexer | [tmux](https://github.com/tmux/tmux) | Persistent terminal sessions and window management |
| Editor | [Neovim](https://neovim.io/) | Version 0.11 or later. Primary editor used in this setup |
| IDE | [VSCode](https://code.visualstudio.com/) | Full-featured IDE with debugging and extension ecosystem |
| Alternative Editor | [Emacs](https://www.gnu.org/software/emacs/) | Extensible editor and development environment |
| Version Control | [Git](https://git-scm.com/) | Distributed version control system |
| Search | [Ripgrep](https://github.com/BurntSushi/ripgrep) | Fast recursive search tool used by Telescope and other plugins |
| File Finder | [fd](https://github.com/sharkdp/fd) | Modern and user-friendly alternative to `find` |
| Clipboard | [xclip](https://github.com/astrand/xclip) | Access the Linux X11 clipboard from the terminal |
| Fonts | [Nerd Fonts](https://www.nerdfonts.com/) | Patched developer fonts with terminal and editor icons |

---

## 🌍 Platform Notes

### Linux

Recommended base platform.

### Windows + WSL2

```powershell
wsl --install
```

Recommended for Windows development while maintaining a Linux workflow.
Look at my windots configuration for how to set this up as nicely as possible with the linux dotfiles [windots](https://github.com/MartijnDeRooij/windots#)

### macOS

Install Homebrew:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

---

## 💡 Inspiration

- [ThePrimeagen](https://github.com/ThePrimeagen/neovimrc) dotfiles
- [TJ DeVries](https://github.com/tjdevries/config_manager) config manager
- [Josean Martinez](https://github.com/josean-dev/dev-environment-files) dotfiles
- [bashbunni]((https://github.com/bashbunni/dotfiles)) dotfiles

---
