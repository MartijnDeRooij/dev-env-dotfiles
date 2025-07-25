# 💤 This is my personal made Emacs configuration
Emacs is like an operating system within an operating system. So as complex as you want it to be it can also be as easy you want it to be. 
For me its just another tool that I want to have tried out and used. With that in mind Emacs is a tool that with different configurations can feel completly different. That is why I will be using a fork of [Emacs Switcher](https://github.com/plexus/chemacs2) this will help me change the emacs configuration on a whim and use multiple ones on my operating system. 

## Emacs Bootloader
The first step of the Emacs setup is the bootloader. With this it will be easy to switch between more than one emacs configuration.
The reason I am using it is to build my own configuration but also have access to tried and tested configurations such as spacemacs and doomemacs. 

Chemacs 2 is an Emacs profile switcher, it makes it easy to run multiple Emacs configurations side by side. 
Chemacs 2 needs to be installed as `~/.emacs.d` (a directory), rather than simply linking it to `~/.emacs` (a single file).

Wherever you store your Emacs configuration, you should move it to a new location to make room for the Chemacs config. I recommend a path like ~/.my-emacs or ~/.config/my-emacs but it can be whatever path you like! I have chosen for ~/emacs-configs

mv ~/.emacs.d ~/.my-emacs
git clone https://github.com/plexus/chemacs2 ~/.emacs.d

### Usage
Chemacs adds an extra command line option to Emacs, --with-profile. Profiles are configured in ~/.emacs-profiles.el.
If no profile is given at the command line then the environment variable CHEMACS_PROFILE is used. If this environment variables isn’t set then the default profile is used.

To tell Chemacs2 where to get your Emacs configuration, create a file in your home directory called ~/.emacs-profiles.el and populate it with this line:
(("myconfig" . ((user-emacs-directory . "~/emacs-configs/.emacs.d"))))

- `$ emacs --with-profile my-profile &` The & is to not block the terminal.

There is an option for using profile that is not preconfigured in ~/.emacs-profiles.el. To accomplish that you can directly provide the profile via the command line, like so

- `$ emacs --with-profile '((user-emacs-directory . "/path/to/config"))'`

This method supports all the profile options given below.

### ~/.emacs-profiles.el
This file contains an association list, with the keys/cars being the profile names, and the values/cdrs their configuration.
The main thing to configure is the =user-emacs-directory=

### Setting the default profile
When you have multiple profiles set up in this way, you can easily specify which one gets chosen as the default by creating the file ~/.emacs-profile and writing the name of the default profile there:

Here’s an example of using Chemacs2 to use 4 different Emacs configurations:
```
(("default"   . ((user-emacs-directory   . "~/emacs-configs/.emacs.d")))
 ("doom"      . ((user-emacs-directory   . "~/emacs-configs/.doom.d")
                 (env . (("DOOMDIR"      . "~/emacs-configs/.doom-config.d")))))
 ("spacemacs" . ((user-emacs-directory   . "~/emacs-configs/.spacemacs.d")
                 (env . (("SPACEMACSDIR" . "~/emacs-configs/.spacemacs-config.d")))))
 ("efs"       . ((user-emacs-directory   . "~/emacs-configs/emacs-from-scratch"))))
```
With Chemacs you can point your user-emacs-directory to wherever you have Spacemacs installed, and use the SPACEMACSDIR environment variable to point at a directory with customizations that are applied on top of the base install.
So before installing Spacemacs and doom do not forget to add the environment variables. 

### Managing your Emacs profiles
Adding a profile

Let’s imagine that we wanted to create a new configuration to run alongside the current one. This is just as easy as adding a new entry to the ~/.emacs-profiles.el file:

(("myconfig" .  ((user-emacs-directory . "~/.my-emacs")))
 ("newconfig" . ((user-emacs-directory . "~/.my-new-emacs"))))

Changing the default profile (e.g. for GUI editors)

Where it is not possible to use the --with-profile flag or the CHEMACS_PROFILE environment variable, the default profile can be set using a ~/.emacs-profile file.

$ echo 'spacemacs' > ~/.emacs-profile

This will set the default profile to be the “spacemacs” profile, instead of “default”. 

### Doom Emacs Tips
If you originally cloned Doom Emacs to the ~/.emacs.d folder and you now had to move it to make room for Chemacs, you might need to do one of two things to ensure that the configuration works!

The first thing to try is to run doom sync in the new folder location:

$ <new doom location>/bin/doom sync

If that doesn’t work, you will need to delete the Doom config repo folder and re-clone it into the new location! This will also require running bin/doom install again.


### Chemacs2 as submodule
You can make the Chemacs2 repo a submodule of your dotfiles repository so that you can replicate your multi-Emacs configuration setup on any of your machines.

The first step is to initialize the Chemacs2 repository as a submodule wherever you previously kept your .emacs.d folder in your dotfiles repo:

cd ~/.dotfiles
git submodule add https://github.com/plexus/chemacs2 .emacs.d

If you are using a tool like GNU Stow or dotcrafter.el to automatically link files from your dotfiles folder to your home folder, make sure to clone the submodule into the folder that you create your symbolic links from.

Keep in mind that you will need to clone your dotfiles repo with the --recursive option from now on:

git clone <URL-of-dotfiles-repo> --recursive

This will both your dotfiles repository and also any submodule repositories that are needed.

For this dotfiles I will try to fully intigrate the current files and change it myself when necessary. 

## ShortCuts
These single-letters can be interpreted as follows:
    C - Ctrl
    M - Alt (Meta in Emacs lingo)
    S - Shift
    s - Super (Windows key)

Always assume that if emacs needs to be restarted (buffer of emacs) when making changes. 

0. Basic Commands	
- `emacs -q -l init.el` : Starting emacs with a specific init.el file.
- `C-x C-c` : Quit emacs
- `C-h C-h` : help
- `C-g` : quit
- `M-o` : for showing all possible commands following.
- `C-h f` : will look for help for specific functions. In this case, you could have searched for whole-buffer to find mark-whole-buffer.
- `C-h m` : to show available commands for the current modes
- `C-h v` : for help related to variables
- `C-h k` : to find which functions keys are bound to
- `C-h w` : to see which key bindings are defined for a given function
- `C-h ?` : to see which other options are available.
- Find Definitions and References
- `lsp-find-definition` : `C-c l g r`
- `lsp-find-references` : `C-c l g g`
- Rename Symbol
- `lsp-rename` : `C-c l r r`
- Diagnostics
- `flymake-show-diagnostics-buffer to show diagnostics`
- Code Formatting
- `lsp-format-buffer` : `C-c l = ==`
- Configure formatting options for some languages with `lsp-<language>-format-` variables
- Documentation
- `lsp-ui-doc-focus-frame` : to enter the documentation frame to navigate and search around
- `lsp-ui-doc-unfocus-frame` : to leave documentation frame
- `(setq lsp-ui-doc-position 'bottom)`
You can turn on and off evil mode (VIM MOTIONS)
By doing 
`turn-on-evil-mode`
or 
`turn-off-evil-mode`
ORG_BABEL_TANGLE the command to make org as config file to generate based on that. 

Setting Up the Config
Apply the same configuration to every block:
// #+PROPERTY: header-args:emacs-lisp :tangle ./init.el :mkdirp yes

//Auto-tangle Configuration Files is the part that actually saves and reloads our buffer as fast as possible. 

1. Packages Commands
- `M-x list-packages` :  Keep packages up to date. (message "Ivy got loaded") Can be used for debugging the emacs.org file or init.el file in short. 
- `M-x eval-buffer` : Load the buffer for example the init.el file 
- `C-x C-e` : End of page  to reavalute entire package
- Now the important stuff, Once you have Emacs.org done 
- open emacs and run `org-babel-tangle` (Write it to the source file init.el) `C-c C-y t` (first have the emac.org buffer open)
- `#+PROPERTY: header-args:emacs-lisp :tangle ./init.el :mkdirp` yes is the part necessary in emacs to org to create it properly

2. Buffer/Terminal Commands
- `C-w v` : vertical split With evil mode 
- `C-w c` : close window With evil mode 
- `C-w s` : horizontal split With evil mode  
- `C-x b` : switch buffers
- `C-x right` : right-cycle through buffers
- `C-x left` : left-cycle through buffers
- `C-x k` : kill buffer
- `C-x 0` : close the active window
- `C-x 1` : close all windows except the active window
- `C-x 2` : split the active window vertically into two horizontal windows
- `C-x 3` : split the active window horizontally into two vertical windows
- `C-x o` : change active window to next window
- `C-x C-f` : open file (find-file)
- `C-x C-s` : save file
- `M-x shell` : To start a new shell mode
- `M-x clm/toggle-command-log-buffer` `(C-c o)` : 
- `M-: eval-expression of the key`.
- `C-SPC` : C-SPC (set-mark-command) Can be used to kill a region. After this command use the arrow keys to move the cursor to expand or shrink the selection
- `C-w` : (kill-region) to cut the text or 
- `M-w` : (kill-ring-save) to copy it. 
- `C-x h` : Will select the entire buffer.

3. File Management/ Editing
- `C-x C-w` : save file as
- `C-space` : set region mark
- `C-w `: kill region
- `C-k` : kill region between point and end of current line
- `M-w` : kill region without deleting
- `C-y` : yank region from kill ring
- `M-y` : move to previous item in the kill ring
- `M-Y` : move to next item in the kill ring
- `C-_` : undo
- `C-s` : search forwards
- `C-r` : search backwards
- `M-%` : query replace (‘space’ to replace, ‘n’ to skip, ‘!’ to replace all)
- `M-q` : wrap text
- `C-left` : move one word left
- `C-right` : move one word right
- `C-up` : move one paragraph up
- `C-down` : move one paragraph down
- `home` : move to the beginning of the line
- `end` : move to the end of the line
- `page up` : move up a page
- `page down` : move down a page
- `M-` : move to end of buffer
- `M-x counsel-find-file` : find filed eaier in tree like systemd
- `M-x counsel-switch-buffer`

4. Org Mode specfic commands: 
- `shift+tab` : Collapse all heading and cycle trough opening and closing all headings.
- *Text* : makes it bold. 
- `C-Enter` : at the * level create new insrted heading
- `M-Enter` : add it right below heading (works for any level of heading)
- `M-Arrow keys` : will move entire header
- `M-shift-arrow` : to move it one line up
- `M-x org-todo` : 
- `C-c C-t` : make from a todo: done withing org mode
- `shift right` or `shift left` to hide or show task. with done 
- `c-x c-f` into `M-x make-directory`:  if you make a new directory in a new file. 

5. Org mode agendas 
- `M-x org-agenda` : a make an agenda for a current day. 
- Scheduling a task in a agenda is done like:
- `org-schedule` and use `shift+arrow keys` to schedule a task. 
- After doing that you can see it in org-agenda. 
- `org-deadline` :  
- `org-agenda-list` : will only show within 5 days of dues
- `org-deadline-warning-days` : to set when you should do something for an agenda deadline. 
- `C-u 2 r` : for swithing between todo and done. 
- Tracking birthdays: 
- `org-time-stamp` then select the particulart date. 
- `org-wild-notifier` can allow use `org-alerts` to see pop up notifications based on org mode files. 
- `M-x counsel-org-tag` : to add new tags or use old ones.
- `counsel-org-tag` : shows also standard org files in init.el 
- `org-set-effort` : (story Points XD)
- Easy way to move all done files towards arhive.org
- `org-refille` where you can choose under certain headers.
- `org-capture` select capture menu t for template to use
- With the new confiuration using org-babel 
- `org-babel-execute-src-block` : -> evaluate yes
- If not possible setup org-babel languages. 
- `org-confirm-babel-evaluate` : to nill then it will no longer ask for evaluate but just do it. 

6. Dired Basics (File management)
- `M-x Dired C-x d` 
- `dired-listing-switches` `ls -al` : is standard for dired. 
- Invocation
- `C-x d` or `C-x C-f` - dired
- `dired-jump - open Dired buffer, select the current file
- `projectile-dired`
- Emacs / Evil
- `n / j` : next line
- `p / k` : previous line
- `j / J` : jump to file in buffer
- `RET` : select file or directory
- `^` : go to parent directory
- `S-RET / g O` : Open file in “other” window
- `M-RET` : Show file in other window without focusing (previewing files)
- `g o (dired-view-file)` : Open file but in a “preview” mode, close with q
- File navigation
- File Operations
- Marking files
- `m` : Marks a file
- `u` : Unmarks a file
- `U` : Unmarks all files in buffer
- `* t / t` : Inverts marked files in buffer
- `% m` : Mark files in buffer using regular expression
- `*` : Lots of other auto-marking functions
- `k / K` : "Kill" marked items (refresh buffer with g / g r to get them back)
- Many operations can be done on a single file if there are no active marks!
- Copying and Renaming files
- `C` : Copy marked files (or if no files are marked, the current file)
- Copying single and multiple files
- `U` : Unmark all files in buffer
- `R` : Rename marked files, renaming multiple is a move!
- `% R` : Rename based on regular expression: ^test , old-\&
- Deleting files
- `D` : Delete marked file
- `d` : Mark file for deletion
- `x` : Execute deletion for marks
- `delete-by-moving-to-trash` : Move to trash instead of deleting permanently
- Creating and extracting archives
- `Z` : Compress or uncompress a file or folder to (.tar.gz)
- `c` : Compress selection to a specific file
- `dired-compress-files-alist` : Bind compression commands to file extension
- Other common operations
- `T` : Touch (change timestamp)
- `M` : Change file mode
- `O` : Change file owner
- `G` : Change file group
- `S` : Create a symbolic link to this file
- `L` : Load an Emacs Lisp file into Emacs
- Works with evil mode and evil-collection
- `C-h b` : desribe bindings (shows all bindings) :custom ((dired-listing-switches "-agho --group-directories-first")) ensures folders first. 
- `m` : select in dired and t to switch to everything else and U unmakrk all
- `* *` : mark executable
- `* . el K` : will hide all .el files 
- `g r` : to make them visable again.
- `m C` : copy to where or what? for example habits.org and habits2.org which is a copy.
- `m C` : with multiple is always copy. 
- `m R` : is renaming the file. (move is the same)
- `m R` : is moving as well. 
- `C-k Cs` : save buffer
- `C-M-j` : 
- `C-h k` : 
- Ivy-immediate done (dont autocomplet) 
- `set delete-by-moving-to-trash` : to true as this makes it go to trash instead of void. 
- To easily create zip files use dired and C (not control) and then choose a folder and make it something.zip
- `C-x C-q Z Z or Z q` : to abort changes Renaming inside the file names more easily.
- `dired-open` : for example does simply overwrite find files and opens for example images instead in the buffern in an actual image viewer. 
- `Shift Enter` : open buffers in another. 
- `(recentf-mode 1)` :
- `M-x recentf-mode-open-files` : will show you nicely all rececntly open files

7. Bonus:
- `M-;` : does comment, but the behavior sometimes isn’t exactly what you’d expect.
- `completion-at-point` : is completion for any point in the buffer just as they give  example of different completion. C-j C-k can use these. 
- `M-p` and `M-n` can be used to go over multiple functions and their respecive inputs/outputs. 
- `M-x lsp` : find references Can go across files across projhect (F12) 
- `C-o` : with evil mode can send you backwards where you where. 
- `C-c l r r` : is lsp-rename and renmames it across files. 
- `lsp diagnostic` can find error before building. 
- See `flymake-show-diagnostics-buffer`

## Plugins
Unlinke with Neovim and VScode Readmes I will not go over all the different plugins and configurations of Emacs. The reason for that is that it would simply be to many to go over. 
While at the same time they are explained within the ORG file config itself. A couple of important ones are the following with some respecive shortcuts. 

### Emacs language-severs 
You need to install the language servers as is descibed by: [emacs-lsp-mode](https://emacs-lsp.github.io/lsp-mode/page/languages/) and look there how to install the particular language server. 

To avoid having changs inside Emacs init.el file use the following snippet:
```
;; Move customization variables to a seperate file and load it.
(setq custom-file (locate-user-emacs-file "custom-vars.el"))
(load custom-file 'noerror 'nomessage)

;; Remember and restore the last cursor location of opened files:
(save-place-mode 1)

;; Dont pop up UI dialogs when prompting (disable pop ups only use echo area)
(setq use-dialog-box nil)  

;; Revert buffer when the underlying file has changed
;; This will update the file to show if the underlying file has changed. 
(global-auto-revert-mdode 1)

;;Revert Dired and other buffers
(setw global-auto-revert-non-file buffers 1)

;; org presentations is not something I am really interested in. 
;; If ever comes up will figure it out by then. 
```

### Backup Files
Everyone sees these files, they get created when you edit a file and save it. (This doesn’t happen in VC-controlled repos, though!)
```
	(setq backup-directory-alist `(("." . ,(expand-file-name "tmp/backups/" user-emacs-directory))))
```
NOTE: You’ll have to clean up any previous backup files that were created!
You can also turn off this behavior entirely:
`(setq make-backup-files nil)`
More info: [emacs-backup](https://www.gnu.org/software/emacs/manual/html_node/emacs/Backup.html)

Completion Powers with prescient.el This will greatly help with remembering last used more and more and between sessions. 
`M-x sessions  ivy-prescient` does help a lot. 

### Keep Folders Clean
```
;; NOTE: If you want to move everything out of the ~/.emacs.d folder
;; reliably, set `user-emacs-directory` before loading no-littering!
;(setq user-emacs-directory "~/.cache/emacs")

(use-package no-littering)

;; no-littering doesn't set this by default so we must place
;; auto save files in the same path as it uses for sessions
(setq auto-save-file-name-transforms
      `((".*" ,(no-littering-expand-var-file-name "auto-save/") t)))
```
### Sideline
Configuration options: [lsp-sideline](https://emacs-lsp.github.io/lsp-ui/#lsp-ui-sideline)
```
(setq lsp-ui-sideline-enable nil)
(setq lsp-ui-sideline-show-hover nil)
```
### Peek
```
lsp-ui-peek-find-references to show references inline (M-n, M-p to cycle)
lsp-treemacs
```
Provides an even nicer UI on top of lsp-mode using Treemacs
````
    lsp-treemacs-symbols - Show a tree view of the symbols in the current file
    lsp-treemacs-references - Show a tree view for the references of the symbol under the cursor
    lsp-treemacs-error-list - Show a tree view for the diagnostic messages in the project
```
- `lsp-treemacs-references` : for showing nicely all references. 
```
(use-package lsp-treemacs
  :after lsp)
```

### Debugging plugin
 - [dap-mode](https://emacs-lsp.github.io/dap-mode/)
dap protocol dap-mode
* Basic Configuration
- Per-language configuration: [dap-mode-configs](https://emacs-lsp.github.io/dap-mode/page/configuration/)
- Make sure lsp-mode is active otherwise `workspaceFolder` won't be available
- Each language have their own setup command. It will download the debugger package for you. 

(use-package dap-mode) ;; Dont forget to refresh package install if errors
;; Each language need their own dap mode. See og file for which ones you want. 
;; dap-setup command download debugger package just as with visual studio code does. (See typscrip config how to use it.

- =dap-debug=: Select a template to execute
- =dap-debug-last=: Run the most recent template
- =dap-debug-recent=: Select a recent template to run
- =dap-disconnect=: Disconnect from the debugging session (output buffer retained)
- =dap-delete-session=: Delete the current session (output buffer will be deleted)
- =dap-delete-all-sessions=: Clean up all debugging sessions

** Breakpoints

- =dap-breakpoint-toggle=: Toggle a breakpoint on the current line 
- =dap-breakpoint-delete-all=: Delete all breakpoints in the workspace
- =dap-breakpoint-condition=: Set condition for breakpoint
- =dap-breakpoint-hit-condition=: Set hit condition, number of hits before breakpoint stops
- =dap-breakpoint-log-message=: Set log message for breakpoint (interpolate expressions with ={}=)
- =dap-ui-breakpoints=: Show breakpoints panel

lsp mode and dap mode do need to work together. 
- `dap-switch-stack-frame ;;` :lets you see the stack on the downwards screen. 
- `dap-disconnect` when you want to stop debugging.
- `dap-register-debug-template` : to give debugger extra behaviour, this is like the json file for debugger like with bdd python. 

- `log-message breakpoint` : shows the log file for a variable for example (watch in vs code) Do not forget to remove them when necessary. 
- `dap-breakpoint-hit-condition` : can be nice if you know it hits the problem at 128 time for example. 
- `dap-hydra` : is the quickpanel together with the ui controls. Quick panel for debugging commands so making it keyboard possible instead of mouse clicks. 
- `dap-tooltip-at-point` : will show the current value a specific variable has. 
- `dap-ui-mode` : if off in autoconfiguration (I want it always on, I like seeing everything). -> ensure its not off as I want all ui to be on at all times. 

Configuration instructions: [Emacs-Python-Debug](https://emacs-lsp.github.io/dap-mode/page/configuration/#python)

- `M-x run-python` : creates python environment palintyr language server
- `python-shell-send-buffer` : or sending specific lines to buffer
- `python-shell-send-file` : to include a file in environment
- `pip3 install python-language-sever[all]`
- `pip3 install pytest` : for unittests
- `pytest` to run it in terminal
- `projectile-test-project pytest` : to run it in emacs

- `M-x run-python` (`C-c C-p` or `g z` in evil-mode) : Interactive Python shell
- `python-shell-send-file (C-c C-l)` : 
- `python-shell-send-buffer (C-c C-c)` : 
- `python-shell-send-region (C-c C-r)` : I recommend watching “Emacs IDE - How to Debug Your Code with dap-mode” to learn more about the features!

However, we will use debugpy (ptvsd is deprecated):
`pip install debugpy`
`(dap-python-debugger 'debugpy)`
Run dap-debug and select the pytest configuration. Fails due to python2!

Set dap-python-executable to python3
(dap-python-executable "python3")

Running the default pytest configuration doesn’t launch from the correct path, let’s edit the configuration with dap-debug-edit-template:
```
;; might be necessary to debug unittest in python.
(dap-register-debug-template
  "Python :: Run pytest (gallery-dl)"
  (list :type "python"
        :cwd "/home/daviwil/Projects/Code/gallery-dl"
        :module "pytest"
        :request "launch"
	      :debugger 'debugpy
        :name "Python :: Run pytest (gallery-dl)"))
```
However, this still doesn’t work correctly from within a file in the project folder. 
Virtual Environments
This part is only necessary if you use virtualenv in your Python development workflow!
```
virtualenv env
. env/bin/activate
```
Use pyvenv for setting up the right virtualenv in Emacs:
```
(use-package pyvenv
  :config
  (pyvenv-mode 1))
```
Run pyvenv-activate and select the env folder, now lsp-mode and dap-mode will use it!

### Terminal 
[Emacs-tips5.org](https://github.com/daviwil/emacs-from-scratch/blob/master/show-notes/Emacs-Tips-05.org) all needs to be in config this is baicly tmux and how it works.

Each item lists the default Emacs binding followed by the evil-mode binding.  Note that many of the evil-mode bindings also allow you to use Ctrl with the second key in the sequence!
```
| Command                             | Key   | Description                            |
|-------------------------------------+-------+----------------------------------------|
| =delete-window=                       | ~C-x 0~ | Close the current window               |
| =delete-other-windows=                | ~C-x 1~ | Close all other windows                |
| =split-window-below=                  | ~C-x 2~ | Split the current window horizonally   |
| =split-window-right=                  | ~C-x 3~ | Split the current window vertically    |
| =shrink-window-horizontally=          | ~C-x {~ | Make the window smaller horizontally   |
| =enlarge-window-horizontally=         | ~C-x }~ | Make the window bigger horizontally    |
| =shrink-window=                       | None! | Shrink the window vertically           |
| =shrink-window-if-larger-than-buffer= | ~C-x -~ | Shrink the window vertically to buffer |
| =balance-windows=                     | ~C-x +~ | Balance the sizes of all windows       |
```
If I want to move a window a certain size a thing I can do in emacs-mode (not evil-mode) you can de C-u 10 C-x } for example tp make the window 10 columns bigger. 
- `C-u` : can be used also better universal command. This enable you to add values to more info. 
- `q` : only for info or help but not globally (to close it)
- `evil-mode g-t` to switch between tabs or `g-T` for backwards. 

- [Emacs-Terminal-Options](https://github.com/daviwil/emacs-from-scratch/blob/master/show-notes/Emacs-09.org)
- Use term or ansi-term if you’re on Linux / macOS and don’t care as much about output speed
- Use vterm if you’re on Linux / macOS and want faster output and better terminal emulation
- Use shell on Windows if you want to use PowerShell, Bash, or WSL
- Use eshell on any OS if you want a consistent shell experience everywhere with Lisp superpowers full Emacs integration
- `M-x term` -> shell (the basic shell is used configured by the system (Bash is preferred for me)
- getenv in emacs command 

You might want this for shells because you do not want to have emacs commands when trying to use terminal normal commands such as C-c
term-char-run otherwise back to evil mode with: 
- `C-c C-k` : to char mode. 
- `C-c C-j` : back to line mode. 
Be very carefull with evil mode (vim) and term because normal mode and char mode need to behave correctly.

## Emacs configurations for inspiration.
Also as general tip I recommend to learn emacs through the following steps on making your own configuration.

1. Follow the built in tutorial in emacs
2. Then built in elisp intro
3. Finally follow a guide such as the one from System Crafter's YouTube series "Emacs from scratch"
 
Beginner Emacs githubs recommended by reddit emacs

- [system-crafters](https://systemcrafters.net/emacs-from-scratch/basics-of-emacs-configuration/)
- [system-crafters-github]https://github.com/daviwil/emacs-from-scratch/tree/master
- [Doom Emacs](https://github.com/doomemacs/doomemacs) and a [guide](https://www.youtube.com/watch?v=37H7bD-G7nE)
- [spacemacs](https://github.com/syl20bnr/spacemacs)
- [Purcell](https://github.com/purcell/emacs.d)
- [bbatsov](https://github.com/bbatsov/prelude)
- [SystemCrafters](https://github.com/SystemCrafters/crafted-emacs)

Other found "Normal" configs:

- [jimeh/.emacs.d](https://github.com/jimeh/.emacs.d)
- [PythonNut/quark-emacs](https://github.com/PythonNut/quark-emacs)
- [daedreth/UncleDavesEmacs](https://github.com/daedreth/UncleDavesEmacs)
- [Nathan-Furnal/dotemacs](https://github.com/Nathan-Furnal/dotemacs)
- [gf3/dotfiles (emacs)](https://github.com/gf3/dotfiles/tree/main/.config/emacs)

Org mode ("Literate") based configs:
- [sachac/.emacs.d](https://github.com/sachac/.emacs.d)
- [zzamboni/dot-doom](https://github.com/zzamboni/dot-doom)
- [daviwill](https://github.com/daviwil/dotfiles/blob/master/Emacs.org)