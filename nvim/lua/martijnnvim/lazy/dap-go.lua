return {
    "leoluz/nvim-dap-go",
    dependencies = {
        "mfussenegger/nvim-dap",
    },
    opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
    },
    config = function ()
        require("nvim-dap-go").setup({})
    end
}
