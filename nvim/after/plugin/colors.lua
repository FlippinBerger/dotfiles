function Color(color)
    color = color or "oldworld"
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

    vim.api.nvim_set_hl(0, 'LineNrAbove', { fg = '#51B3EC', bold = true })
    -- vim.api.nvim_set_hl(0, 'LineNr', { fg = 'white', bold = true })
    vim.api.nvim_set_hl(0, 'LineNr', { fg = '#FBEC5D', bold = true })
    -- vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = '#FBEC5D', bold = true })
    vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = 'white', bold = true })
    vim.api.nvim_set_hl(0, 'LineNrBelow', { fg = '#51B3EC', bold = true })
end

Color()
