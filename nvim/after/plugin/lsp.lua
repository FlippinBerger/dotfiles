-- note: diagnostics are not exclusive to lsp servers
-- so these can be global keybindings
vim.keymap.set("n", "gl", "<cmd>lua vim.diagnostic.open_float()<cr>")
vim.keymap.set("n", "[d", "<cmd>lua vim.diagnostic.goto_prev()<cr>")
vim.keymap.set("n", "]d", "<cmd>lua vim.diagnostic.goto_next()<cr>")

require("mason").setup({})
require("mason-lspconfig").setup({
	ensure_installed = { "lua_ls", "rust_analyzer", "eslint", "jsonls", "ts_ls", "volar" },
})

local nvimlsp = require("lspconfig")

nvimlsp.lua_ls.setup({})
vim.lsp.enable("lua_ls")

nvimlsp.gopls.setup({})
vim.lsp.enable("gopls")

nvimlsp.ts_ls.setup({})
vim.lsp.enable("ts_ls")

nvimlsp.html.setup({})
vim.lsp.enable("html")

nvimlsp.tailwindcss.setup({})
vim.lsp.enable("tailwindcss")

-- lspconfig.gdscript.setup({
-- 	capabilities = lsp_capabilities,
-- })

-- alllow godot to send nvim client-server commands
-- this starts a listening server at ~/.cache/nvim/server.pipe
-- local pipepath = vim.fn.stdpath("cache") .. "/server.pipe"
-- if not vim.loop.fs_stat(pipepath) then
-- 	vim.fn.serverstart(pipepath)
-- end
