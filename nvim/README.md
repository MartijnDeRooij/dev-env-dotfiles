# 💤 This is my Lazy NeoVim configuration.

My usage for [Neovim](https://github.com/neovim/neovim) using folke lazy.nvim package manager. 
Refer to the [documentation](personal github page) to get started.

## Plugins

#### Plugin Manager
- Package manager nvim lazy style 
- [folke/lazy.nvim](https://github.com/folke/lazy.nvim) - Amazing plugin manager

#### Dependency For Other Plugins
- [nvim-lua/plenary](https://github.com/nvim-lua/plenary.nvim) - Useful lua functions other plugins use
	
#### Preferred Colorscheme
- A dark and light Neovim theme written in Lua ported from the Visual Studio Code TokyoNight theme
- [folke/tokyonight.nvim] (https://github.com/folke/tokyonight.nvim) - VSCode color theme
- All natural pine, faux fur and a bit of soho vibes for the classy minimalist
- [rose-pine/neovim] (https://github.com/rose-pine/neovim) - Other colorscheme for neovim

#### Managing & Installing Language Servers, Linters & Formatters
- [williamboman/mason.nvim](https://github.com/williamboman/mason.nvim)
- [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim) - Bridges gap b/w mason & lspconfig

#### LSP Configuration
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) - Easy way to configure lsp servers
- [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp) - Smart code autocompletion with lsp
- [hrsh7th/cmp-buffer] (https://github.com/hrsh7th/cmp-buffer) - Smart buffering of words with lsp
- [hrsh7th/cmp-path] (https://github.com/hrsh7th/cmp-path) - Smart source for filesystem paths
- [hrsh7th/cmp-cmdline] (https://github.com/hrsh7th/cmp-cmdline) - Smart source for vim's commandline
- [hrsh7th/nvim-cmp] (https://github.com/hrsh7th/nvim-cmp) - Completion sources are installed from external repositories and "sourced"
- [j-hui/fidget.nvim] (https://github.com/j-hui/fidget.nvim) - Extensible UI for Neovim notifications and LSP progress messages.
- [saadparwaiz1/cmp_luasnip] (https://github.com/saadparwaiz1/cmp_luasnip) - luasnip completion source for nvim-cmp
		
##### Snippets required for LSP
- [L3MON4D3/LuaSnip] (https://github.com/L3MON4D3/LuaSnip) - Snippets are a small piece or brief extract.
- install jsregexp - Provides ECMAScript regular expressions for Lua 5.1, 5.2, 5.3, 5.4 and LuaJit
- [rafamadriz/friendly-snippets] (https://github.com/rafamadriz/friendly-snippets) - Snippets collection for a set of different programming languages.

For JSON Snippets
- [Json Snippets] (https://github.com/dapc11/dnvim/tree/1183ea79ff7068553517c4a3f673e298bbe74623)

More Snippets Examples:
- [Ideas for more snippets] (https://github.com/ejmastnak/dotfiles/blob/main/config/nvim/LuaSnip/lua.lua)

#### Formatting & Linting
- 
#### Treesitter Syntax Highlighting, Autoclosing & Text Objects
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) - Treesitter configuration

##### Annotations used together with Treesitter
- [danymat/neogen] (https://github.com/danymat/neogen) - Annotations for code made easy

#### Fuzzy Finder
- [nvim-telescope/telescope-fzf-native.nvim](https://github.com/nvim-telescope/telescope-fzf-native.nvim) - Dependency for better performance
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) - Fuzzy Finder
- [nvim-telescope/telescope-ui-select.nvim] (https://github.com/nvim-telescope/telescope-ui-select.nvim) - It sets vim.ui.select to telescope

#### Marking Files With Prime's Harpoon
- [ThePrimeagen/harpoon](https://github.com/ThePrimeagen/harpoon)

#### Nice to have plugins for better experience
- [tpope/vim-sleuth] (https://github.com/tpope/vim-sleuth) - Detect tabstop and shiftwidth automatically
- [folke/todo-comments.nvim] (https://github.com/folke/todo-comments.nvim) - Highlight and search for todo comments like TODO, HACK, BUG in your code base.
- [mbbill/undotree] (https://github.com/mbbill/undotree) - Undotree visualizes the undo history
- [folke/trouble.nvim] (https://github.com/folke/trouble.nvim) - A pretty list for showing diagnostics, references, telescope results, quickfix and location lists to help you solve all the trouble your code is causing.
- [folke/zen-mode.nvim] (https://github.com/folke/zen-mode.nvim) - Distraction-free coding
- [laytan/cloak.nvim] (https://github.com/laytan/cloak.nvim) - For hidign certain words with ************
- [folke/which-key.nvim] (https://github.com/folke/which-key.nvim) - Displays a popup with possible key bindings of the command you started typing

#### Navigating Between Neovim Windows and Tmux
- [christoomey/vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator) - tmux & split window navigation

#### File Explorer
- [nvim-telescope/telescope-file-browser.nvim] (https://github.com/nvim-telescope/telescope-file-browser.nvim) - file browser extension for telescope.nvim. It supports synchronized creation, deletion, renaming, and moving of files and folders
  
#### VS Code Like Icons
- [kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons) - VSCode Icons

#### Git
- [sindrets/diffview.nvim] (https://github.com/sindrets/diffview.nvim) - interface for easily cycling through diffs for all modified files for any git rev
- [tpope/vim-fugitive] (https://github.com/tpope/vim-fugitive) - Fugitive calls any arbitrary Git command :Git
- [iamcco/markdown-preview.nvim] (https://github.com/iamcco/markdown-preview.nvim) - Preview Markdown files

#### DAP (Debug Adapter Protocol)
- [mfussenegger/nvim-dap] (https://github.com/mfussenegger/nvim-dap) - DAP (Debug Adapter Protocol) Client
- [rcarriga/nvim-dap-ui] (https://github.com/rcarriga/nvim-dap-ui) - A UI for nvim-dap
- [theHamsta/nvim-dap-virtual-text] (https://github.com/theHamsta/nvim-dap-virtual-text) - Adds virtual text support to nvim-dap
- [jay-babu/mason-nvim-dap.nvim] (https://github.com/jay-babu/mason-nvim-dap.nvim) - Bridges mason.nvim with the nvim-dap plugin - making it easier to use both plugins together

##### Go 
- [leoluz/nvim-dap-go] (https://github.com/leoluz/nvim-dap-go) - An extension for nvim-dap providing configurations for launching go debugger (delve) and debugging individual tests.

#### Test for in Neovim
- [nvim-neotest/neotest] (https://github.com/nvim-neotest/neotest) - A framework for interacting with tests within NeoVim.
- [marilari88/neotest-vitest] (https://github.com/marilari88/neotest-vitest) - This plugin provides a Vitest adapter for the Neotest framework.
- [nvim-neotest/neotest-plenary] (https://github.com/nvim-neotest/neotest-plenary) - Neotest adapter for plenary.nvim busted tests.

#### latex-symbols
- [lervag/vimtex] (https://github.com/lervag/vimtex) - Filetype and syntax plugin for LaTeX files
- [kdheepak/cmp-latex-symbols] (https://github.com/kdheepak/cmp-latex-symbols) - Add latex symbol support for nvim-cmp.
- [KeitaNakamura/tex-conceal.vim] (https://github.com/KeitaNakamura/tex-conceal.vim) - extends the Conceal feature for LaTeX.










