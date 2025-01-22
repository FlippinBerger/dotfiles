require("lazy").setup({
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.6",
        dependencies = { "nvim-lua/plenary.nvim" }
    },
    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = { "nvim-lua/plenary.nvim" }
    },
    -- todo highlighting
    {
        "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        opts = {}
    },
    {
        'numToStr/Comment.nvim',
        lazy = false,
    },
    { "nvim-treesitter/nvim-treesitter",        build = ":TSUpdate" },
    { "nvim-treesitter/nvim-treesitter-context" },
    { "nvim-tree/nvim-tree.lua",                dependencies = { "nvim-tree/nvim-web-devicons" } },
    -- git
    { "tpope/vim-fugitive" },
    -- formatter
    {
        'stevearc/conform.nvim',
        opts = {},
    },
    -- lsp stuff
    { 'VonHeikemen/lsp-zero.nvim',        branch = 'v3.x' },
    { 'neovim/nvim-lspconfig' },
    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/nvim-cmp' },
    {
        'L3MON4D3/LuaSnip',
        dependencies = { 'saadparwaiz1/cmp_luasnip', 'rafamadriz/friendly-snippets' }
    },
    -- autoclose html tags
    { 'windwp/nvim-ts-autotag' },
    -- surround stuff. quotes/brackets/braces
    {
        "kylechui/nvim-surround",
        version = "*",
        event = "VeryLazy",
    },
    -- better quickfix window
    { 'kevinhwang91/nvim-bqf' },
    -- status line
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
    },
    -- some color stuff
    -- gotos
    {
        "folke/tokyonight.nvim",
        name = 'tokyonight',
        opts = {
            style = "night",
            transparent = true,
        },
    },
    { "rose-pine/neovim",      name = "rose-pine" },
    { 'catppuccin/nvim',       name = 'catppuccin' },

    -- trying some simple themes
    { "dgox16/oldworld.nvim",  name = "oldworld" },
    { "rebelot/kanagawa.nvim", name = 'kanagawa' },

    --playing with some real funky colors here
    {
        'maxmx03/fluoromachine.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            local fm = require 'fluoromachine'

            fm.setup {
                glow = true,
                theme = 'retrowave', -- can be retrowave, fluoromachine, or delta
                transparent = true,
            }
        end
    },
    { "scottmckendry/cyberdream.nvim", name = 'cyberdream' },

    -- file explorer/edit buffer
    {
        'stevearc/oil.nvim',
        opts = {},
        dependencies = { "nvim-tree/nvim-web-devicons" },
    },
    { 'echasnovski/mini.nvim',         version = false },
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = true
    },
    -- greeter screen
    {
        "goolord/alpha-nvim",
        -- dependencies = { 'echasnovski/mini.icons' },
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            local startify = require("alpha.themes.startify")
            -- available: devicons, mini, default is mini
            -- if provider not loaded and enabled is true, it will try to use another provider
            startify.file_icons.provider = "devicons"
            require("alpha").setup(
                startify.config
            )
        end,
    },
})
