return {
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function()
        vim.cmd("call mkdp#util#install()")
    end,
    --build = ":call mkdp#util#install()",  -- <-- Call Vimscript correctly via string
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
  },
}