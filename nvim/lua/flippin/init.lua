require("flippin.core.remap")
require("flippin.core.settings")
require("flippin.core.lazy")

vim.api.nvim_create_autocmd("FileType", {
	pattern = { "go", "lua", "markdown", "sql", "rust", "zig", "terraform" },
	callback = function()
		vim.treesitter.start()
		vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
		vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
	end,
})

-- set json tab size
vim.api.nvim_create_autocmd("FileType", {
	pattern = "json",
	callback = function()
		vim.opt_local.tabstop = 2
		vim.opt_local.shiftwidth = 2
		vim.opt_local.expandtab = true
	end,
})
