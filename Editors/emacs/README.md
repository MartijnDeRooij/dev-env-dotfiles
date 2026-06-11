# 💤 Emacs Setup

> This is my personal Emacs configuration and notes.

Emacs can be as simple or as complex as you want it to be. For me, it is another editor worth learning and experimenting with. One of Emacs' strengths is that two users can have completely different experiences depending on their configuration.

To make switching between configurations easier, I use [Chemacs2](https://github.com/plexus/chemacs2), which allows multiple Emacs configurations to coexist on the same machine.

---

## Documentation

| File | Description |
| ----- | -------------------------- |
| [Installation](installation.md) | Installing Emacs and Chemacs2 |
| [Emacs Profiles](profiles.md) | Managing multiple Emacs profiles |
| [Plugins](plugins.md) | Plugins, LSP, DAP and debugging |
| [Shortcuts](shortcuts.md) | Shortcuts Emacs |
| [Troubleshooting](troubleshooting.md) | troubleshooting Emacs |
| [Doom Emacs](doom.md) | Doom emacs setup |
| [SpaceEmacs](spacemacs.md) | SpaceEmacs setup |

---


## Why Chemacs2?

Chemacs2 allows multiple Emacs configurations to coexist and makes switching between them trivial.

### 📦 Configurations I Use

* Personal Configuration
* Doom Emacs
* Spacemacs
* Emacs From Scratch

This lets me experiment with different workflows without constantly modifying a single configuration.

## Emacs Configurations for Inspiration

As a general recommendation, try building your own Emacs configuration instead of immediately adopting a large distribution. Doing so will help you understand how Emacs works and make it easier to troubleshoot and extend your setup later.

### Suggested Learning Path

1. Complete the built-in Emacs tutorial:

   ```text
   C-h t
   ```

2. Work through the built-in Emacs Lisp introduction:

   ```text
   C-h i
   ```

   Then navigate to:

   ```text
   Emacs Lisp Intro
   ```

3. Follow a beginner-friendly configuration series such as **Emacs From Scratch** by David Wilson (System Crafters).

---

## Recommended Fonts

* Fira Code
* Cantarell
* Source Code Pro

---

## Beginner-Friendly Resources

### System Crafters

* System Crafters: https://systemcrafters.net/emacs-from-scratch/basics-of-emacs-configuration/
* GitHub Repository: https://github.com/daviwil/emacs-from-scratch

### Popular Emacs Distributions

#### Doom Emacs

* Repository: https://github.com/doomemacs/doomemacs
* Video Guide: https://www.youtube.com/watch?v=37H7bD-G7nE

#### Spacemacs

* Repository: https://github.com/syl20bnr/spacemacs

---

## Traditional Emacs Configurations

These are useful examples of well-maintained configurations that stay relatively close to standard Emacs.

| Configuration             | Repository                                              |
| ------------------------- | ------------------------------------------------------- |
| Purcell's Emacs Config    | https://github.com/purcell/emacs.d                      |
| Prelude (Bozhidar Batsov) | https://github.com/bbatsov/prelude                      |
| Crafted Emacs             | https://github.com/SystemCrafters/crafted-emacs         |
| jimeh                     | https://github.com/jimeh/.emacs.d                       |
| quark-emacs               | https://github.com/PythonNut/quark-emacs                |
| Uncle Dave's Emacs        | https://github.com/daedreth/UncleDavesEmacs             |
| dotemacs                  | https://github.com/Nathan-Furnal/dotemacs               |
| gf3 Emacs Configuration   | https://github.com/gf3/dotfiles/tree/main/.config/emacs |

---

## Literate (Org Mode) Configurations

Literate configurations keep most or all Emacs configuration inside Org Mode files. These are excellent references once you are comfortable with basic Emacs customization.

| Configuration                    | Repository                                                |
| -------------------------------- | --------------------------------------------------------- |
| Sacha Chua's Configuration       | https://github.com/sachac/.emacs.d                        |
| dot-doom                         | https://github.com/zzamboni/dot-doom                      |
| David Wilson's Org Configuration | https://github.com/daviwil/dotfiles/blob/master/Emacs.org |

---

## Recommendation for New Users

If you are completely new to Emacs:

1. Complete the built-in tutorial.
2. Learn basic Emacs Lisp.
3. Follow the System Crafters "Emacs From Scratch" series.
4. Explore Crafted Emacs, Purcell's configuration, or Prelude.
5. Only then consider larger distributions such as Doom Emacs or Spacemacs.

This progression makes it significantly easier to understand what your configuration is doing and how to customize it to your own workflow.



