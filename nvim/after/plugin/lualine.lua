require('lualine').setup {
    options = {
        icons_enabled = true,
        theme = 'auto',
        component_separators = { left = '|', right = '|' },
        section_separators = { left = '', right = '' },
        disabled_filetypes = {
            statusline = {},
            winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = false,
        refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000,
        }
    },
    sections = {
        lualine_a = { 'buffers' },
        lualine_b = { '' },
        lualine_c = { '' },
        lualine_x = { { 'filename', file_status = true, path = 4 }, 'branch', 'diff' },
        lualine_y = { 'progress' },
        lualine_z = { 'location' }
    },
}
