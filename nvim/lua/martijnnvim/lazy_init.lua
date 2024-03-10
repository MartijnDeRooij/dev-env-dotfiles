-- Package manager nvim lazy style
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically
  spec = "martijnnvim.lazy",
  checker = { enabled = true, notify = false, },
  change_detection = { notify = false }
})
