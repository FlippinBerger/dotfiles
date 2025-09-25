return {
	{
		"neovim/nvim-lspconfig",
		dependencies = { "saghen/blink.cmp" },
	},
	{
		"mason-org/mason.nvim",
		opts = {
			ensure_installed = {
				"stylua",
				"lua_ls",
				"rust_analyzer",
				"jsonls",
				"ts_ls",
				"goimports",
				"gofumpt",
				"gopls",
				"marksman",
			},
		},
	},
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {},
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			"neovim/nvim-lspconfig",
		},
	},
	-- {
	-- 	"williamboman/mason-lspconfig.nvim",
	-- 	config = function()
	-- 		-- require("mason").setup({})
	-- 		require("mason-lspconfig").setup({
	-- 			-- ensure_installed = { "lua_ls", "rust_analyzer", "eslint", "jsonls", "ts_ls" },
	-- 		})
	--
	-- 		-- local nvimlsp = require("lspconfig")
	--
	-- 		-- nvimlsp.lua_ls.setup({})
	-- 		vim.lsp.enable("lua_ls")
	--
	-- 		vim.lsp.enable("jsonls")
	--
	-- 		-- nvimlsp.jsonls.setup({
	-- 		-- 	settings = {
	-- 		-- 		json = {
	-- 		-- 			format = { enable = true },
	-- 		-- 			validate = { enable = true },
	-- 		-- 			schemas = {},
	-- 		-- 		},
	-- 		-- 	},
	-- 		-- 	on_attach = function(client, bufnr)
	-- 		-- 		-- Set formatting options for the attached client
	-- 		-- 		client.server_capabilities.documentFormattingProvider = true
	-- 		-- 		client.server_capabilities.documentRangeFormattingProvider = true
	-- 		-- 		vim.api.nvim_create_autocmd("BufWritePre", {
	-- 		-- 			group = vim.api.nvim_create_augroup("LspFormatting", { clear = true }),
	-- 		-- 			buffer = bufnr,
	-- 		-- 			callback = function()
	-- 		-- 				vim.lsp.buf.format({
	-- 		-- 					bufnr = bufnr,
	-- 		-- 					async = false,
	-- 		-- 					timeout_ms = 1000,
	-- 		-- 					format_options = { tabSize = 2, insertSpaces = true },
	-- 		-- 				})
	-- 		-- 			end,
	-- 		-- 		})
	-- 		-- 	end,
	-- 		-- })
	--
	-- 		-- nvimlsp.gopls.setup({})
	-- 		-- vim.lsp.enable("gopls")
	--
	-- 		-- nvimlsp.ts_ls.setup({})
	-- 		vim.lsp.enable("ts_ls")
	--
	-- 		-- nvimlsp.html.setup({})
	-- 		vim.lsp.enable("html")
	--
	-- 		-- nvimlsp.tailwindcss.setup({})
	-- 		vim.lsp.enable("tailwindcss")
	-- 	end,
	-- },
}
