# Chemacs2 Profile Management

Chemacs2 is a lightweight Emacs profile switcher that allows multiple Emacs configurations to coexist on the same system.

This repository uses Chemacs2 to manage:

## Profile Directory Layout

```text
emacs-configs/
├── .doom.d/            * Doom Emacs
├── .spacemacs.d/       * Spacemacs
├── emacs-from-scratch/ * Emacs From Scratch
└── .emacs.d/           * Vanilla Emacs
```

---

## Install Chemacs2

Backup an existing Emacs configuration first:

```bash
mv ~/.emacs.d ~/.emacs.d.backup
```

Clone Chemacs2:

```bash
git clone https://github.com/plexus/chemacs2 ~/.emacs.d
```

Verify:

```bash
emacs --help
```

You should see profile-related options available.

---

## Create Profile Definitions

Create:

```bash
~/.emacs-profiles.el
```
When you have multiple profiles set up in this way, you can easily specify which one gets chosen as the default by creating the file ~/.emacs-profile and writing the name of the default profile there:

```elisp
(("default"   . ((user-emacs-directory   . "~/emacs-configs/.emacs.d")))
 ("doom"      . ((user-emacs-directory   . "~/emacs-configs/.doom.d")
                 (env . (("DOOMDIR"      . "~/emacs-configs/.doom-config.d")))))
 ("spacemacs" . ((user-emacs-directory   . "~/emacs-configs/.spacemacs.d")
                 (env . (("SPACEMACSDIR" . "~/emacs-configs/.spacemacs-config.d")))))
 ("efs"       . ((user-emacs-directory   . "~/emacs-configs/emacs-from-scratch"))))
```

---

## Repository Profile Installation

If using the repository profile definitions:

```bash
cp ~/dev-env-dotfiles/Editors/emacs/.emacs-profiles.el \
   ~/.emacs-profiles.el
```

Or create a symbolic link:

```bash
sudo ln -sf \
"$PWD/Editors/emacs/.emacs-profiles.el" \
"${XDG_CONFIG_HOME:-$HOME/.emacs-profiles.el}"
```

Copy profile directories:

```bash
cp -r \
"$PWD/Editors/emacs/emacs-configs/.emacs.d" \
~/emacs-configs
```

---

## Launching Profiles

Doom:

```bash
emacs --with-profile doom
```

Spacemacs:

```bash
emacs --with-profile spacemacs
```

Custom profile:

```bash
emacs --with-profile \
'((user-emacs-directory . "~/emacs-configs/.doom.d/"))'
```

Spacemacs directory directly:

```bash
emacs --with-profile \
'((user-emacs-directory . "~/emacs-configs/.spacemacs.d/"))'
```

Emacs From Scratch:

```bash
emacs --with-profile \
'((user-emacs-directory . "~/emacs-configs/emacs-from-scratch/"))'
```

---

## Chemacs2 as submodule
You can make the Chemacs2 repo a submodule of your dotfiles repository so that you can replicate your multi-Emacs configuration setup on any of your machines.

The first step is to initialize the Chemacs2 repository as a submodule wherever you previously kept your .emacs.d folder in your dotfiles repo:

cd ~/.dotfiles
git submodule add https://github.com/plexus/chemacs2 .emacs.d

If you are using a tool like GNU Stow or dotcrafter.el to automatically link files from your dotfiles folder to your home folder, make sure to clone the submodule into the folder that you create your symbolic links from.

Keep in mind that you will need to clone your dotfiles repo with the --recursive option from now on:

git clone <URL-of-dotfiles-repo> --recursive

This will both your dotfiles repository and also any submodule repositories that are needed.

