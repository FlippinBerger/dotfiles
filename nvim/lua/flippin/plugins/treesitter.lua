return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	event = "BufRead",
	branch = "main",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter").install({ "go", "lua", "markdown", "sql", "rust", "javascript", "zig" })
	end,
}
