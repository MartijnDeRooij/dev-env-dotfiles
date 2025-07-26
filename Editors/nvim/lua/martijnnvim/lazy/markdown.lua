return {
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = ":call mkdp#util#install()",  -- <-- Call Vimscript correctly via string
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
  },
}