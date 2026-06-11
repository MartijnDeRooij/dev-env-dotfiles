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

## Terminals and Window Management

Documentation:

https://github.com/daviwil/emacs-from-scratch/blob/master/show-notes/Emacs-Tips-05.org

---

### Window Management

<details>
<summary><strong>Window Commands</strong></summary>

| Command                             | Key   | Description             |
| ----------------------------------- | ----- | ----------------------- |
| delete-window                       | C-x 0 | Close current window    |
| delete-other-windows                | C-x 1 | Close all other windows |
| split-window-below                  | C-x 2 | Horizontal split        |
| split-window-right                  | C-x 3 | Vertical split          |
| shrink-window-horizontally          | C-x { | Narrow window           |
| enlarge-window-horizontally         | C-x } | Widen window            |
| shrink-window-if-larger-than-buffer | C-x - | Shrink to buffer        |
| balance-windows                     | C-x + | Balance all windows     |

### Resize Example

Increase width by 10 columns:

```text
C-u 10 C-x }
```

### Notes

```text
C-u
```

Universal argument.

```text
q
```

Close help/info buffers.

```text
g-t
```

Next tab (Evil Mode).

```text
g-T
```

Previous tab.

</details>

---

### Terminal Options

<details>
<summary><strong>Choosing a Terminal</strong></summary>

Documentation:

https://github.com/daviwil/emacs-from-scratch/blob/master/show-notes/Emacs-09.org

#### term / ansi-term

Linux/macOS terminal.

#### vterm

Recommended on Linux/macOS.

Faster and better emulation.

#### shell

Good choice on Windows.

Supports:

* PowerShell
* Bash
* WSL

#### eshell

Works on all platforms.

Benefits:

* Full Emacs integration
* Lisp support
* Consistent experience

Launch terminal:

```text
M-x term
```

View environment variables:

```text
M-x getenv
```

</details>

---

### Term Mode vs Evil Mode

<details>
<summary><strong>Important Notes</strong></summary>

Terminal buffers behave differently from normal Emacs buffers.

Switch to character mode:

```text
C-c C-k
```

Switch back to line mode:

```text
C-c C-j
```

Be careful when using Evil Mode with terminal buffers.

Normal mode, insert mode, line mode, and character mode all behave differently and need to be understood to avoid keybinding conflicts.

</details>