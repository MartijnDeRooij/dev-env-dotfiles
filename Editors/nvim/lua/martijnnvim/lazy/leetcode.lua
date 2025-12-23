return {
    "kawre/leetcode.nvim",
    build = ":TSUpdate html",
    dependencies = {
        "nvim-telescope/telescope.nvim",
        "nvim-lua/plenary.nvim",
        "MunifTanjim/nui.nvim",
    },
    opts = {
        lang = "cpp", -- or cpp / javascript / java
        storage = {
            home = vim.fn.expand("~/leetcode-solutions"),  -- where solutions are saved
            cache = vim.fn.expand("~/.cache/leetcode"),  -- optional, can keep default
        },
    },
}
