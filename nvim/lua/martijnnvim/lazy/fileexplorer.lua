-- File Explorer
return{
  "nvim-telescope/telescope-file-browser.nvim",
  opts = {},
  dependencies = { "nvim-telescope/telescope.nvim" },

  config = function ()
    require("telescope").setup({});
    --require("telescope").load_extension "file_browser"
  end
}
--[[return {
  {
        "stevearc/oil.nvim",
        opts = {},
        -- Optional dependencies
        dependencies = { "nvim-tree/nvim-web-devicons" },

        config = function ()
           require("oil").setup({})
        end
  }
}
--]]
