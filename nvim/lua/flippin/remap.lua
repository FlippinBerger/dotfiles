vim.g.mapleader = " "
-- vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

vim.keymap.set("n", "<leader>q", ":q<CR>")
vim.keymap.set("n", "<leader>w", ":w<CR>")

-- in visual mode, move the block down or up with J/K
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- keep cursor in the middle when page jumping
vim.keymap.set("n", "<C-f>", "<C-f>zz")
vim.keymap.set("n", "<C-b>", "<C-b>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "<leader>p", function()
    vim.lsp.buf.format()
end)

--buffers

-- close current buffer
vim.keymap.set("n", "<leader>c", ":bd<cr>")

vim.keymap.set("n", "<leader>bn", ":bn<cr>")
vim.keymap.set("n", "<leader>bp", ":bp<cr>")

-- windows stuff
-- vim.keymap.set("n", "<leader>s", ":vsplit<cr>")
-- vim.keymap.set("n", "<leader>sh", ":split<cr>")
--
-- vim.keymap.set("n", "<leader>wh", "<c-w>h")
-- vim.keymap.set("n", "<leader>wl", "<c-w>l")
-- vim.keymap.set("n", "<leader>wk", "<c-w>k")
-- vim.keymap.set("n", "<leader>wj", "<c-w>j")
