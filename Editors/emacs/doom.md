# Doom Emacs Setup

Doom Emacs is one of the most popular Emacs distributions. It provides curated packages, sensible defaults, and a Vim-oriented workflow.

---

## Install Doom Emacs

Set a custom configuration directory:

```bash
export DOOMDIR="$HOME/emacs-configs/.doom-config.d"
```

Persist the variable:

```bash
echo 'export DOOMDIR="$HOME/emacs-configs/.doom-config.d"' >> ~/.bashrc
source ~/.bashrc
```

Clone Doom:

```bash
git clone --depth 1 \
https://github.com/doomemacs/doomemacs \
~/emacs-configs/.doom.d
```

Install:

```bash
~/emacs-configs/.doom.d/bin/doom install
```

---

## Synchronize Configuration

Whenever `init.el` or `packages.el` changes:

```bash
doom sync
```

Restart Emacs afterwards.

---

## Diagnostics

Check for configuration problems:

```bash
doom doctor
```

---

## Updating Doom

```bash
doom upgrade
```

Avoid updating Doom using a normal git pull.

---

## Useful Doom Commands

```bash
doom sync
doom doctor
doom env
doom purge
doom upgrade
```

---

## Documentation

Inside Emacs:

```text
SPC h d h
```

or

```text
C-h d h
```

or

```text
M-x doom/help
```

---

# Windows Installation

## Clone Repository

Open PowerShell:

```powershell
git clone https://github.com/doomemacs/doomemacs.git ~/.emacs.d
```

---

## Configure HOME Variable

Open:

```text
Edit the System Environment Variables
```

Create:

```text
HOME=C:\Users\<USER>
```

---

## Install Doom

```powershell
~/.emacs.d/bin/doom install
```

---

## Running Doom

Launch normally:

```powershell
emacs
```

---

## Server Mode (Recommended)

Start daemon:

```powershell
emacs --daemon
```

Create new frame:

```powershell
emacsclient -c
```

---

## Taskbar Shortcut

Target:

```text
C:\tools\emacs\bin\emacsclientw.exe -c -a=
```

This automatically starts a server if necessary.

---

## Automatically Start Server

Create a shortcut in:

```text
C:\Users\<USER>\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
```

Target:

```text
C:\tools\emacs\bin\runemacs.exe --daemon
```

1. Don't forget to run 'doom sync' and restart Emacs after modifying init.el or
   packages.el in ~/.config/doom. This is never necessary for config.el.

2. If something goes wrong, run `doom doctor` to diagnose common issues with
   your environment, setup, and config.

3. Use 'doom upgrade' to update Doom. Doing it any other way will require
   additional steps (see 'doom help upgrade').

4. Access Doom's documentation from within Emacs via 'SPC h d h' or 'C-h d h'
   (or 'M-x doom/help').