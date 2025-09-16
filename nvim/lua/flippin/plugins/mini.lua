return {
	{
		"nvim-mini/mini.files",
		version = false,
		config = function()
			require("mini.files").setup()

			vim.keymap.set("n", "-", function()
				local buf_name = vim.api.nvim_buf_get_name(0)
				local path = vim.fn.filereadable(buf_name) == 1 and buf_name or vim.fn.getcwd()
				MiniFiles.open(path)
				MiniFiles.reveal_cwd()
				MiniFiles.trim_left()
			end, { desc = "Open Mini Files" })
		end,
	},
	{
		"nvim-mini/mini.pairs",
		version = false,
		config = function()
			require("mini.pairs").setup()
		end,
	},
	{
		"nvim-mini/mini.surround",
		version = false,
		config = function()
			require("mini.surround").setup()
		end,
	},
	{
		"nvim-mini/mini.ai",
		version = false,
		config = function()
			require("mini.ai").setup()
		end,
	},
	{
		"nvim-mini/mini.bracketed",
		version = false,
		config = function()
			require("mini.bracketed").setup()
		end,
	},
}
