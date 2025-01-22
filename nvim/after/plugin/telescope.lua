-- telescope
local builtin = require("telescope.builtin")

require("telescope").setup({
    defaults = {
        file_ignore_patterns = {
            "node_modules",
            "addons"
        }
    }
})

vim.keymap.set("n", "<leader>f", builtin.find_files, {})
-- vim.keymap.set("n", "<leader>fg", builtin.git_files, {})
vim.keymap.set("n", "<leader>st", builtin.live_grep, {})
vim.keymap.set("n", "<leader>b", builtin.buffers, {})
