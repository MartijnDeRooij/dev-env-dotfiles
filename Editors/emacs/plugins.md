# Plugins

Unlike the Neovim and VS Code documentation, I will not go through every Emacs package individually. Emacs has thousands of packages and many configurations are already documented directly inside the Org configuration files themselves.

This section focuses on commonly used packages, useful settings, and workflows that are worth remembering.

---

## Language Servers (LSP)

<details>
<summary><strong>Language Server Setup</strong></summary>

Install language servers according to:

https://emacs-lsp.github.io/lsp-mode/page/languages/

Each language has its own installation instructions.

### Useful Configuration

To avoid Emacs writing customization settings directly into `init.el`:

```elisp
;; Move customization variables to a separate file
(setq custom-file (locate-user-emacs-file "custom-vars.el"))
(load custom-file 'noerror 'nomessage)

;; Remember cursor positions
(save-place-mode 1)

;; Disable popup dialog boxes
(setq use-dialog-box nil)

;; Revert buffers automatically when files change
(global-auto-revert-mode 1)

;; Revert Dired and non-file buffers
(setq global-auto-revert-non-file-buffers t)

;; org presentations is not something I am really interested in.
;; If it ever comes up I will figure it out by then.
```

</details>

---

## Backup Files

<details>
<summary><strong>Backup File Management</strong></summary>

Emacs creates backup files when editing and saving files.

Store backups in a dedicated location:

```elisp
(setq backup-directory-alist
      `(("." . ,(expand-file-name
                 "tmp/backups/"
                 user-emacs-directory))))
```

### Disable Backups Completely

```elisp
(setq make-backup-files nil)
```

### Notes

You may need to manually clean up previously created backup files.

Documentation:

https://www.gnu.org/software/emacs/manual/html_node/emacs/Backup.html

</details>

---

## Completion (Prescient)

<details>
<summary><strong>ivy-prescient / prescient.el</strong></summary>

Prescient improves completion ranking by remembering previous selections across sessions.

Useful command:

```text
M-x ivy-prescient
```

This greatly improves completion quality over time.

</details>

---

## Keep Folders Clean

<details>
<summary><strong>no-littering</strong></summary>

Keep `~/.emacs.d` organized by moving temporary files elsewhere.

```elisp
;; If moving everything outside ~/.emacs.d:
;; (setq user-emacs-directory "~/.cache/emacs")

(use-package no-littering)

(setq auto-save-file-name-transforms
      `((".*"
         ,(no-littering-expand-var-file-name
           "auto-save/")
         t)))
```

</details>

---

## LSP UI

### Sideline

<details>
<summary><strong>Disable Sideline Information</strong></summary>

Documentation:

https://emacs-lsp.github.io/lsp-ui/#lsp-ui-sideline

```elisp
(setq lsp-ui-sideline-enable nil)
(setq lsp-ui-sideline-show-hover nil)
```

</details>

---

### Peek References

<details>
<summary><strong>Peek References</strong></summary>

Show references inline:

```text
lsp-ui-peek-find-references
```

Navigation:

```text
M-n
M-p
```

</details>

---

### Treemacs Integration

<details>
<summary><strong>lsp-treemacs</strong></summary>

Provides a richer project-wide UI on top of `lsp-mode`.

Commands:

```text
lsp-treemacs-symbols
```

Show symbols in current file.

```text
lsp-treemacs-references
```

Show all references.

```text
lsp-treemacs-error-list
```

Show project diagnostics.

Configuration:

```elisp
(use-package lsp-treemacs
  :after lsp)
```

</details>

---

## Debugging (DAP Mode)

<details>
<summary><strong>dap-mode Overview</strong></summary>

Documentation:

https://emacs-lsp.github.io/dap-mode/

Per-language setup:

https://emacs-lsp.github.io/dap-mode/page/configuration/

Basic installation:

```elisp
(use-package dap-mode)
```

Each language requires its own DAP configuration.

The `dap-setup` command downloads debugger packages similarly to VS Code.

### Requirements

* `lsp-mode` must be active
* Every language has its own debugger setup

</details>

---

### DAP Session Commands

<details>
<summary><strong>Common Commands</strong></summary>

```text
dap-debug
```

Select a template.

```text
dap-debug-last
```

Run previous template.

```text
dap-debug-recent
```

Choose recent template.

```text
dap-disconnect
```

Disconnect debugger.

```text
dap-delete-session
```

Delete current session.

```text
dap-delete-all-sessions
```

Delete all sessions.

</details>

---

### Breakpoints

<details>
<summary><strong>Breakpoint Commands</strong></summary>

```text
dap-breakpoint-toggle
```

Toggle breakpoint.

```text
dap-breakpoint-delete-all
```

Delete all breakpoints.

```text
dap-breakpoint-condition
```

Conditional breakpoint.

```text
dap-breakpoint-hit-condition
```

Break after specific number of hits.

```text
dap-breakpoint-log-message
```

Log values without stopping execution.

```text
dap-ui-breakpoints
```

Show breakpoint panel.

</details>

---

### Useful Debugging Features

<details>
<summary><strong>Recommended Workflow</strong></summary>

```text
dap-switch-stack-frame
```

Inspect stack frames.

```text
dap-disconnect
```

Stop debugging.

```text
dap-register-debug-template
```

Create custom launch templates.

```text
dap-tooltip-at-point
```

Inspect variable values.

```text
dap-hydra
```

Quick debugging menu.

```text
dap-ui-mode
```

Enable debugging UI.

I personally prefer keeping all DAP UI panels enabled.

</details>

---

## Python Debugging

<details>
<summary><strong>Python Setup</strong></summary>

Install tools:

```bash
pip3 install python-language-server[all]
pip3 install pytest
pip install debugpy
```

Run tests:

```bash
pytest
```

Run tests inside Emacs:

```text
projectile-test-project
```

### Interactive Python

```text
M-x run-python
```

or:

```text
C-c C-p
```

or in Evil Mode:

```text
g z
```

### Send Code

```text
python-shell-send-file
```

Default:

```text
C-c C-l
```

```text
python-shell-send-buffer
```

Default:

```text
C-c C-c
```

```text
python-shell-send-region
```

Default:

```text
C-c C-r
```

</details>

---

### Python DAP Configuration

<details>
<summary><strong>debugpy Configuration</strong></summary>

Use:

```elisp
(dap-python-debugger 'debugpy)
```

Set Python 3:

```elisp
(dap-python-executable "python3")
```

Custom pytest template:

```elisp
(dap-register-debug-template
  "Python :: Run pytest (gallery-dl)"
  (list
   :type "python"
   :cwd "/home/daviwil/Projects/Code/gallery-dl"
   :module "pytest"
   :request "launch"
   :debugger 'debugpy
   :name "Python :: Run pytest (gallery-dl)"))
```

</details>

---

### Python Virtual Environments

<details>
<summary><strong>Virtualenv Support</strong></summary>

Create environment:

```bash
virtualenv env
. env/bin/activate
```

Use `pyvenv`:

```elisp
(use-package pyvenv
  :config
  (pyvenv-mode 1))
```

Activate environment:

```text
M-x pyvenv-activate
```

After activation, both `lsp-mode` and `dap-mode` will use the selected virtual environment.

</details>

---


