return {
    "sindrets/diffview.nvim",
    dependencies = { },
    opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
    },
    config = function ()
        require("diffview").setup({})
    end
}
