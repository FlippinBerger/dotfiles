require("flippin.core.remap")
require("flippin.core.settings")
require("flippin.core.lazy")
-- require("flippin.plugins")

vim.api.nvim_create_autocmd("FileType", {
	pattern = { "go", "lua", "markdown", "sql", "rust", "zig" },
	callback = function()
		vim.treesitter.start()
		vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
		vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
	end,
})
