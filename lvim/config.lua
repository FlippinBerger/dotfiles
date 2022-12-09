-- Additional Plugins
lvim.plugins = {
  {"fatih/vim-go"},
  {"tpope/vim-fugitive"},
  {"folke/tokyonight.nvim"},
  -- {"leoluz/nvim-dap-go"},
  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
  },
  -- {
  --   "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"}
  -- },
  -- {
  --   "rcarriga/vim-ultest",
  --   config = "require('config.ultest').post()",
  --   requires = {"vim-test/vim-test"},
  --   run = ":UpdateRemotePlugins"},
  {"sebdah/vim-delve"}
}

-- general
lvim.log.level = "warn"
lvim.format_on_save = true
lvim.colorscheme = "tokyonight"

-- different lua options to get at vim stuff
-- vim.o
-- vim.wo
-- vim.bo
-- vim.g

vim.wo.relativenumber = true
vim.wo.colorcolumn = '80'
lvim.builtin.dap.active = true
vim.o.ignorecase = true

vim.diagnostic.config({virtual_text = false})

-- make edge of the screen scroll instead of an offset
-- this also makes H and L much nicer
-- defaults to 8 lines in lvim
vim.wo.scrolloff = 0
vim.o.scrolloff = 0
lvim.builtin.scrolloff = 0

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<S-h>"] = false
lvim.keys.normal_mode["<S-l>"] = false
-- unmap a default keymapping
-- lvim.keys.normal_mode["<C-Up>"] = false
-- edit a default keymapping
-- lvim.keys.normal_mode["<C-q>"] = ":q<cr>"

-- Change Telescope navigation to use j and k for navigation and n and p for history in both input and normal mode.
-- we use protected-mode (pcall) just in case the plugin wasn't loaded yet.
-- local _, actions = pcall(require, "telescope.actions")
-- lvim.builtin.telescope.defaults.mappings = {
--   -- for input mode
--   i = {
--     ["<C-j>"] = actions.move_selection_next,
--     ["<C-k>"] = actions.move_selection_previous,
--     ["<C-n>"] = actions.cycle_history_next,
--     ["<C-p>"] = actions.cycle_history_prev,
--   },
--   -- for normal mode
--   n = {
--     ["<C-j>"] = actions.move_selection_next,
--     ["<C-k>"] = actions.move_selection_previous,
--   },
-- }

-- turn off gitsigns
lvim.builtin.gitsigns.active = false

-- Use which-key to add extra bindings with the leader-key prefix
-- This block is nice for a more visual references search

-- these don't work because gitsign us uninstalled, but keeping the mappings
-- around to compare functionality to fugitive
lvim.builtin.which_key.mappings["G"] = lvim.builtin.which_key.mappings["g"]

-- make fugitive mappings
lvim.builtin.which_key.mappings["g"] = {
  name = "git",
  d = {"<cmd>Git diff<cr>", "Diff"},
  c = {"<cmd>Git commit<cr>", "Commit"},
  s = {"<cmd>Git<cr>", "Status"},
  b = {"<cmd>Git blame<cr>", "Blame"},
  y = {"<cmd>GBrowse<cr>", "Browse"},
}

-- command to close all vim buffers
lvim.builtin.which_key.mappings["b"]["q"] = {"<cmd>%bdelete<cr>", "Close All"}

-- lvim.builtin.which_key.vmappings = lvim.builtin.which_key.mappings

lvim.builtin.which_key.mappings["T"] = {
  name = "+Trouble",
  r = { "<cmd>Trouble lsp_references<cr>", "References" },
  f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
  d = { "<cmd>Trouble lsp_document_diagnostics<cr>", "Diagnostics" },
  q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
  l = { "<cmd>Trouble loclist<cr>", "LocationList" },
  w = { "<cmd>Trouble lsp_workspace_diagnostics<cr>", "Diagnostics" },
}

lvim.builtin.which_key.mappings["D"] = {
  name = "Debug Go",
  s = { "<cmd>lua require('dap').continue()<cr>", "Start debugging"},
  t = { "<cmd>lua require('dap-go').debug_test()<cr>", "Debug test"},
}

lvim.builtin.which_key.mappings["t"] = {
  name = "Test",
  n = {"<cmd>TestNearest<cr>", "Test Nearest"},
  f = {"<cmd>TestFile<cr>", "Test File"},
  s = {"<cmd>TestSuite<cr>", "Test Suite"},
  l = {"<cmd>TestLast<cr>", "Test Last"},
  b = {"<cmd>TestVisit<cr>", "Goto Last test file you ran"},
}

-- vim-test
-- vim.g["test#go#runner"] = 'delve'

-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.notify.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.show_icons.git = 1

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "tsx",
  "css",
  "rust",
  "java",
  "yaml",
  "go",
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true

require('packer').startup(function(use)
  use {"rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"}}
  require("dapui").setup({
    icons = { expanded = "▾", collapsed = "▸" },
    mappings = {
      -- Use a table to apply multiple mappings
      expand = { "<CR>", "<2-LeftMouse>" },
      open = "o",
      remove = "d",
      edit = "e",
      repl = "r",
      toggle = "t",
    },
    sidebar = {
      -- You can change the order of elements in the sidebar
      elements = {
        -- Provide as ID strings or tables with "id" and "size" keys
        {
          id = "scopes",
          size = 0.25, -- Can be float or integer > 1
        },
        { id = "breakpoints", size = 0.25 },
        { id = "stacks", size = 0.25 },
        { id = "watches", size = 00.25 },
      },
      size = 40,
      position = "left", -- Can be "left", "right", "top", "bottom"
    },
    tray = {
      elements = { "repl" },
      size = 10,
      position = "bottom", -- Can be "left", "right", "top", "bottom"
    },
    floating = {
      max_height = nil, -- These can be integers or a float between 0 and 1.
      max_width = nil, -- Floats will be treated as percentage of your screen.
      border = "single", -- Border style. Can be "single", "double" or "rounded"
      mappings = {
        close = { "q", "<Esc>" },
      },
    },
    windows = { indent = 1 },
  })
  local dap, dapui = require("dap"), require("dapui")
  dap.listeners.after.event_initialized["dapui_config"] = function()
    dapui.open()
  end
  dap.listeners.before.event_terminated["dapui_config"] = function()
    dapui.close()
  end
  dap.listeners.before.event_exited["dapui_config"] = function()
    dapui.close()
  end
end)


require('dap-go').setup()

-- Autocommands (https://neovim.io/doc/user/autocmd.html)
-- lvim.autocommands.custom_groups = {
--   { "BufWinEnter", "*.lua", "setlocal ts=8 sw=8" },
-- }
