# Troubleshooting

## Verify Installation

Check that Emacs is installed and accessible:

```bash
emacs --version
```

Package manager verification (Debian/Ubuntu):

```bash
dpkg -l emacs
```

---

## Start Without Configuration

Launch Emacs without loading any configuration:

```bash
emacs -Q
```

Useful when diagnosing startup problems caused by plugins or configuration files.

---

## Debug Startup

Start Emacs and display Lisp errors during initialization:

```bash
emacs --debug-init
```

Additional debugging mode:

```bash
emacs --insecure --debug-init
```

---

## Load a Specific Configuration

Load a custom init file:

```bash
emacs -q -l init.el
```

---

## Emacs Client

Connect to an existing Emacs daemon:

```bash
emacsclient
```

Create a new graphical frame:

```bash
emacsclient -c
```

---

## Check Parentheses

Inside Emacs:

```text
M-x check-parents
```

Useful for locating:

* Missing `(`
* Missing `)`
* Unbalanced brackets
* Invalid Lisp expressions

---

## Profile Startup Problems

View available Chemacs2 profiles:

```bash
cat ~/.emacs-profiles.el
```

Test a specific profile:

```bash
emacs --with-profile doom
```

Other examples:

```bash
emacs --with-profile spacemacs

emacs --with-profile \
'((user-emacs-directory . "~/emacs-configs/emacs-from-scratch/"))'
```

---

## Doom Emacs Problems

Synchronize configuration:

```bash
doom sync
```

Diagnose issues:

```bash
doom doctor
```

Update Doom:

```bash
doom upgrade
```

Remove unused packages:

```bash
doom purge
```

Regenerate environment variables:

```bash
doom env
```

---

## Build Problems

Clean build artifacts:

```bash
make clean
```

Rebuild Emacs:

```bash
make -j$(nproc) bootstrap
```

Verify the build:

```bash
./src/emacs --version
```

Test without configuration:

```bash
./src/emacs -Q
```

---

## Helpful Commands

```bash
emacs --help
emacs --version

which emacs
whereis emacs

emacsclient

dpkg -l emacs
```

---

## Common Recovery Steps

When Emacs refuses to start:

```bash
emacs -Q
```

If that works:

1. Check your `init.el`
2. Run `M-x check-parents`
3. Disable recently added packages
4. Run `doom doctor` (if using Doom Emacs)
5. Run `doom sync`
6. Restart Emacs

Most startup issues are caused by:

* Missing parentheses
* Invalid package declarations
* Outdated package caches
* Incorrect profile paths
* Missing fonts
* Environment variable issues
