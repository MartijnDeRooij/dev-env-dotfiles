return {
    {
      "vhyrro/luarocks.nvim",
      priority = 1000, -- Very high priority is required, luarocks.nvim should run as the first plugin in your config.
      config = true,
    },
    {
        "nvim-lua/plenary.nvim",
        lazy = true,
        -- name = "plenary"
    },
    "christoomey/vim-tmux-navigator", -- tmux & split window navigation
    cmd = {
        "TmuxNavigateLeft",
        "TmuxNavigateDown",
        "TmuxNavigateUp",
        "TmuxNavigateRight",
        "TmuxNavigatePrevious",
    },
    keys = {
        { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
        { "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
        { "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
        { "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
        { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
    },
    --"github/copilot.vim",
    --"eandrju/cellular-automaton.nvim",
    --"gpanders/editorconfig.nvim",
    -- Debuggers do once I create hello world and debug them to see if anything is missing:
    -- require('dap-go').setup()
    -- vim.keymap.set("n", "<leader>dt", ":lua require'dap-go'.debug_test()<CR>")
    -- 'leoluz/nvim-dap-go'
    -- fullstack dev
    -- 'pangloss/vim-javascript' --JS support
    -- 'leafgarland/typescript-vim' --TS support
    -- 'maxmellon/vim-jsx-pretty' --JS and JSX syntax
}
