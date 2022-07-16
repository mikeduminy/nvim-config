local plugin = require 'nvim-tree'
local pluginEvents = require 'nvim-tree.events'
local keymaps = require 'mike.utils.keymaps'
local map = keymaps.map
local strcmd = keymaps.strcmd

-- Keybindings
map({ 'n', 'v' }, '<leader>t', strcmd 'NvimTreeToggle')

-- Events
pluginEvents.on_file_created(function(data)
  vim.cmd('edit ' .. data.fname)
end)

-- Setup
plugin.setup {
  hijack_netrw = true,
  hijack_cursor = true,
  disable_netrw = true,
  open_on_setup = true,
  open_on_setup_file = false,
  auto_reload_on_write = true,
  reload_on_bufenter = true,
  open_on_tab = true,
  prefer_startup_root = true,
  update_focused_file = {
    enable = true,
    update_cwd = false,
    ignore_list = {},
  },
  ignore_ft_on_setup = {
    'alpha',
  },
  diagnostics = {
    enable = true,
    show_on_dirs = true,
  },
  git = {
    enable = true,
    timeout = 1000,
  },
  sort_by = 'case_sensitive',
  view = {
    width = 30,
    height = 30,
    hide_root_folder = false,
    adaptive_size = false,
    centralize_selection = true,
    signcolumn = 'yes',
    side = 'left',
    mappings = {
      custom_only = false,
      list = {
        { key = 'u', action = 'dir_up' },
      },
    },
    number = false,
    relativenumber = false,
  },
  filesystem_watchers = {
    enable = true,
    interval = 200,
    debounce_delay = 50,
  },
  actions = {
    open_file = {
      quit_on_open = false,
      resize_window = true,
    },
    change_dir = {
      enable = true,
      global = false,
      restrict_above_cwd = true,
    }
  },
  renderer = {
    add_trailing = true,
    group_empty = true,
    full_name = true,
    highlight_git = true,
    highlight_opened_files = 'all',
    indent_markers = {
      enable = true,
    },
    special_files = {
      'package.json',
      'readme.md',
      'README.md',
    },
  },
  filters = {
    dotfiles = true,
  },
}

-- quit vim when nvim tree is the last window open
-- https://github.com/kyazdani42/nvim-tree.lua/issues/1368#issuecomment-1166461948
-- vim.api.nvim_create_autocmd("BufEnter", {
--     nested = true,
--     callback = function()
--         if #vim.api.nvim_list_wins() == 1 and vim.api.nvim_buf_get_name(0):match("NvimTree_") ~= nil then
--             -- vim.cmd "NvimTreeClose"
--             vim.cmd "quit"
--         end
--   end
-- })
