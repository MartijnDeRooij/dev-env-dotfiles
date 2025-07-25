# 💤 This is my Lazy NeoVim configuration.

My usage for [Neovim](https://github.com/neovim/neovim) using folke lazy.nvim package manager. 
Refer to the [documentation](/README.md) to get started.

## Plugins

#### Plugin Manager
- Package manager nvim lazy style 
- [folke/lazy.nvim](https://github.com/folke/lazy.nvim) - Amazing plugin manager

#### Dependency For Other Plugins
- [vhyrro/luarocks.nvim](https://github.com/vhyrro/luarocks.nvim) - plugin designed to streamline the installation of luarocks packages
- [nvim-lua/plenary](https://github.com/nvim-lua/plenary.nvim) - Useful lua functions other plugins use

#### Preferred Colorscheme
- A dark and light Neovim theme written in Lua ported from the Visual Studio Code TokyoNight theme
- [folke/tokyonight.nvim](https://github.com/folke/tokyonight.nvim) - VSCode color theme

#### Managing & Installing Language Servers, Linters & Formatters
- [williamboman/mason.nvim](https://github.com/williamboman/mason.nvim)
- [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim) - Bridges gap b/w mason & lspconfig

#### LSP Configuration
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) - Easy way to configure lsp servers
- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp) - Smart code autocompletion with lsp
- [hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer) - Smart buffering of words with lsp
- [hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path) - Smart source for filesystem paths
- [hrsh7th/cmp-cmdline](https://github.com/hrsh7th/cmp-cmdline) - Smart source for vim's commandline
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp) - Completion sources are installed from external repositories and "sourced"
- [j-hui/fidget.nvim](https://github.com/j-hui/fidget.nvim) - Extensible UI for Neovim notifications and LSP progress messages.
- [saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip) - luasnip completion source for nvim-cmp
- [mfussenegger/nvim-lint](https://github.com/mfussenegger/nvim-lint) - An asynchronous linter plugin for Neovim (>= 0.9.5) complementary to the built-in Language Server Protocol support.

##### Snippets required for LSP
- [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip) - Snippets are a small piece or brief extract.
- install jsregexp - Provides ECMAScript regular expressions for Lua 5.1, 5.2, 5.3, 5.4 and LuaJit
- [rafamadriz/friendly-snippets](https://github.com/rafamadriz/friendly-snippets) - Snippets collection for a set of different programming languages.

For JSON Snippets
- [Json Snippets](https://github.com/dapc11/dnvim/tree/1183ea79ff7068553517c4a3f673e298bbe74623)

More Snippets Examples:
- [Ideas for more snippets](https://github.com/ejmastnak/dotfiles/blob/main/config/nvim/LuaSnip/lua.lua)

#### Formatting & Linting
- [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim) - This plugin adds indentation guides to Neovim.
- [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs) - An autopair plugin for Neovim that supports multiple characters. (Auto brackets)
- [MunifTanjim/nui.nvim](https://github.com/MunifTanjim/nui.nvim) - UI Component Library for Neovim.

#### Treesitter Syntax Highlighting, Autoclosing & Text Objects
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) - Treesitter configuration

##### Annotations used together with Treesitter
- [danymat/neogen](https://github.com/danymat/neogen) - Annotations for code made easy

#### Fuzzy Finder
- [nvim-telescope/telescope-fzf-native.nvim](https://github.com/nvim-telescope/telescope-fzf-native.nvim) - Dependency for better performance
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) - Fuzzy Finder
- [nvim-telescope/telescope-ui-select.nvim](https://github.com/nvim-telescope/telescope-ui-select.nvim) - It sets vim.ui.select to telescope

#### Nice to have plugins for better experience
- [folke/todo-comments.nvim](https://github.com/folke/todo-comments.nvim) - Highlight and search for todo comments like TODO, HACK, BUG in your code base.
- [mbbill/undotree](https://github.com/mbbill/undotree) - Undotree visualizes the undo history
- [folke/trouble.nvim](https://github.com/folke/trouble.nvim) - A pretty list for showing diagnostics, references, telescope results, quickfix and location lists to help you solve all the trouble your code is causing.
- [folke/which-key.nvim](https://github.com/folke/which-key.nvim) - Displays a popup with possible key bindings of the command you started typing

#### Navigating Between Neovim Windows and Tmux
- [christoomey/vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator) - tmux & split window navigation

#### File Explorer
- [nvim-neo-tree/neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim) - Neo-tree is a Neovim plugin to browse the file system
  
#### VS Code Like Icons
- [kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons) - VSCode Icons

#### Git
- [sindrets/diffview.nvim](https://github.com/sindrets/diffview.nvim) - interface for easily cycling through diffs for all modified files for any git rev
- [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive) - Fugitive calls any arbitrary Git command :Git
- [iamcco/markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim) - Preview Markdown files
- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) - Deep buffer integration for Git

#### DAP (Debug Adapter Protocol)

- [mfussenegger/nvim-dap](https://github.com/mfussenegger/nvim-dap) - DAP (Debug Adapter Protocol) Client
- [rcarriga/nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui) - A UI for nvim-dap
- [jay-babu/mason-nvim-dap.nvim](https://github.com/jay-babu/mason-nvim-dap.nvim) - Bridges mason.nvim with the nvim-dap plugin - making it easier to use both plugins together

##### Go 
- [leoluz/nvim-dap-go](https://github.com/leoluz/nvim-dap-go) - An extension for nvim-dap providing configurations for launching go debugger (delve) and debugging individual tests.

#### Test for in Neovim
- [nvim-neotest/nvim-nio](https://github.com/nvim-neotest/nvim-nio) - (Dependency dap) A library for asynchronous IO in Neovim
- [nvim-neotest/neotest](https://github.com/nvim-neotest/neotest) - A framework for interacting with tests within NeoVim.
- [marilari88/neotest-vitest](https://github.com/marilari88/neotest-vitest) - This plugin provides a Vitest adapter for the Neotest framework.
- [nvim-neotest/neotest-plenary](https://github.com/nvim-neotest/neotest-plenary) - Neotest adapter for plenary.nvim busted tests.

## ShortCuts
Here I will put done some short cuts that can be used by NeoVim/Tmux setup.

0. Help
- `:help {topic}`: Display the help for the specified topic.
- `:help user-manual`: Open the Neovim user manual in a browser.

### Tmux
- `tmux new-session -s Main`
- `tmux list-sessions`

Using command mode:
- `ctrl-b` Enter command-mode
- `ctrl-b :` Enter text command-mode
- `esc` Exit command-mode
- `ctrl-b ?` List command-mode shortcuts
- `ctrl-b x` then confirm with y or n
- `tmux attach -t <your_session_name>`
- `tmux detach`

### NeoVim

0. Basic commands
- `nvim .` # This is for open Directory and easy navigation
- `:wq` # write and quit the open program
- `:Ex` # go back to the nvim. screen
- `ctrl + y `is accept autocomplete suggestion
- `ctrl + O` for single command inside insert mode
- `shift + A` go to end of the line. 

1. Navigation
- `h, j, k, l`: Move the cursor left, down, up, and right, respectively.
- `w`: Move the cursor to the beginning of the next word.
- `b`: Move the cursor to the beginning of the previous word.
- `e`: Move the cursor to the end of the current word.
- `gg`: Move the cursor to the beginning of the file.
- `G`: Move the cursor to the end of the file.
- `{number}G`: Move the cursor to the specified line number.
- `:{line number}`: Move the cursor to the specified line number

2. Editing
- `i`: Enter insert mode at the current cursor position.
- `I`: Enter insert mode at the beginning of the current line.
- `a`: Enter insert mode after the current cursor position.
- `A`: Enter insert mode at the end of the current line.
- `o`: Insert a new line below the current line and enter insert mode.
- `O`: Insert a new line above the current line and enter insert mode.
- `r`: Replace the character under the cursor.
- `R`: Enter replace mode.
- `x`: Delete the character under the cursor.
- `X`: Delete the character before the cursor.
- `d{motion}`: Delete the text that is moved over with the specified motion (e.g., dw will delete the current word).
- `dd`: Delete the current line.
- `{Visual mode}`: Select text to operate on it (e.g., d will delete the selected text).

3. Insert mode
- `Esc`: Exit insert mode.
- `Ctrl + [`: Exit insert mode.

4. Visual mode
- `v`: Enter visual mode.
- `V`: Enter visual line mode.
- `Ctrl + v`: Enter visual block mode.
- `Esc`: Exit visual mode.

5. Undo and redo
- `u`: Undo the last change.
- `Ctrl + r`: Redo the last undone change.

6. Search
- `/{pattern}`: Search for the specified pattern.
- `n`: Jump to the next match of the current search pattern.
- `N`: Jump to the previous match of the current search pattern.

7. Saving and quitting
- `:w`: Save the current file.
- `:w {file}`: Save the current file as the specified file.
- `:wq`: Save and quit.
- `:q`: Quit.
- `:q!`: Quit without saving.

8. Cut, copy, and paste
- `yy`: Copy the current line.
- `{Visual mode} y`: Copy the selected text.
- `p`: Paste the text that was last yanked or deleted after the cursor.
- `P`: Paste the text that was last yanked or deleted before the cursor.

9. Replace
- `:%s/{old text}/{new text}/g`: Replace all occurrences of old text with new text in the current file.
- `:%s/{old text}/{new text}/gc`: Replace all occurrences of old text with new text in the current file, with a prompt to confirm each replacement.

10. Splitting windows
- `:split`: Split the window horizontally.
- `:vsplit`: Split the window vertically.
- `Ctrl + w h, Ctrl + w j, Ctrl + w k, Ctrl + w l`: Move to the window to the left, below, above, or right of the current window, respectively.
- `:q`: Close the current window.

11. Tabs
- `:tabnew`: Open a new tab.
- `gt`: Move to the next tab.
- `gT`: Move to the previous tab.
- `{tab number}gt`: Move to the specified tab number.
- `:tabclose`: Close the current tab.

12. File management
- `:e {file}`: Open the specified file.
- `:ls`: List all open buffers.
- `:b {buffer number}`: Switch to the specified buffer.
- `:bd`: Close the current buffer.

12. Syntax highlighting
- `:syntax on`: Enable syntax highlighting.
- `:syntax off`: Disable syntax highlighting.

13. Indentation
`>`: Indent the current line.
`<`: Unindent the current line.
`==`: Auto-indent the current line.
`=%`: Auto-indent the current block (e.g., a function).