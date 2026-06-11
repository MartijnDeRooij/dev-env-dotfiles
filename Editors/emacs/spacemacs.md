# Spacemacs Setup

Spacemacs combines Emacs with a layer-based configuration model and Vim-inspired keybindings.

---

## Installation

Set configuration directory:

```bash
export SPACEMACSDIR="$HOME/emacs-configs/.spacemacs-config.d"
```

Persist variable:

```bash
echo 'export SPACEMACSDIR="$HOME/emacs-configs/.spacemacs-config.d"' >> ~/.bashrc
source ~/.bashrc
```

Clone Spacemacs:

```bash
git clone \
https://github.com/syl20bnr/spacemacs \
~/emacs-configs/.spacemacs.d
```

Start Emacs:

```bash
emacs --with-profile spacemacs
```

---

## Recommended Font

Spacemacs works best with Source Code Pro.

Download:

```bash
wget \
https://github.com/adobe-fonts/source-code-pro/archive/2.030R-ro/1.050R-it.zip
```

Extract:

```bash
unzip 1.050R-it.zip
```

Install:

```bash
mkdir -p ~/.fonts

cp source-code-pro-*-it/OTF/*.otf ~/.fonts/
```

Cleanup:

```bash
rm -rf \
1.050R-it.zip \
source-code-pro*
```

Refresh font cache:

```bash
fc-cache -fv
```

---

## First Startup

Launch:

```bash
emacs
```

Spacemacs automatically generates:

```bash
~/.spacemacs
```

or

```bash
~/.spacemacs.d/
```

depending on the selected configuration mode.

---

## Updating Spacemacs

Inside Emacs:

```text
SPC f e R
```

or:

```bash
git pull
```

inside the Spacemacs repository.
