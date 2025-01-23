local ng = require("neogit")

ng.setup {
    disable_line_numbers = false,
    disable_relative_line_numbers = false,
    kind = "split"
}

vim.keymap.set("n", "<leader>gs", function() ng.open({ kind = "split" }) end)
