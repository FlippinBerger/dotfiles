require("dap-go").setup()

local dap = require("dap")
local dbg = require("dap-go")

vim.keymap.set("n", "<leader>db", "<cmd>DapToggleBreakpoint<cr>")
vim.keymap.set("n", "<leader>do", "<cmd>DapStepOver<cr>")
vim.keymap.set("n", "<leader>di", "<cmd>DapStepInto<cr>")
vim.keymap.set("n", "<leader>dc", "<cmd>DapContinue<cr>")

-- run the debugger
vim.keymap.set("n", "<leader>dgs", function()
	dap.continue()
end)

vim.keymap.set("n", "<leader>dgt", function()
	dbg.debug_test()
end)

vim.keymap.set("n", "<leader>dgl", function()
	dbg.debug_last_test()
end)
vim.keymap.set("n", "<leader>dv", "<cmd>DapViewToggle<cr>")
vim.keymap.set("n", "<leader>dw", "<cmd>DapViewWatch<cr>")
