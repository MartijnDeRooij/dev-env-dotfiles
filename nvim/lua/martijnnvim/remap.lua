-- My remaps for nvim for quicker working with nvim
----------------------- General Keymaps -------------------
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>', { desc = "Search highlights untill ESC" })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
-- window management
vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window
vim.keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
vim.keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
vim.keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
vim.keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- increment/decrement numbers
vim.keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
vim.keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", {desc = "Moves the selected lines down one line"})
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", {desc = "Moves the selected lines up one line"})

vim.keymap.set("n", "J", "mzJ`z", {desc = "joins the current line with the line below it, leaving the cursor at the start of the joined line"})

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]], {desc = "cuts the selected text and pastes it before the current line"})

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]], {desc = "copies the selected text to the system clipboard"})
vim.keymap.set("n", "<leader>Y", [["+Y]], {desc = "copies the entire line to the system clipboard"})

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]], {desc = "deletes the selected text"})

vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>", {desc = "creates a new tmux window"})
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, {desc = "formats the code using the Language Server Protocol (LSP)."})

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz", {desc = "jumps to the next quickfix entry and centers the screen on it"})
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz", {desc = "jumps to the previous quickfix entry and centers the screen on it"})
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz", {desc = "jumps to the next location list entry and centers the screen on it."})
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz", {desc = "jumps to the previous location list entry and centers the screen on it."})

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], {desc = "In normal mode (n), pressing <leader>s initiates a substitute command to replace the word under the cursor with the word under the cursor in the system clipboard."})
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", {desc = "In normal mode (n), pressing <leader>x makes the current file executable by changing its permissions"})

vim.keymap.set(
    "n",
    "<leader>ee",
    "oif err != nil {<CR>}<Esc>Oreturn err<Esc>"
)

-- Load Source
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

