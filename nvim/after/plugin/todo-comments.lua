require('todo-comments').setup()

local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>td", ":TodoQuickFix<cr>", {})
