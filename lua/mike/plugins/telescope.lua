local telescope = require 'telescope'
local keymaps = require 'mike.utils.keymaps'
local trouble = require 'trouble.providers.telescope'
local nmap = keymaps.nmap
local luacmd = keymaps.luacmd

-----------------------------------------------------------------------
-- Setup
-----------------------------------------------------------------------
telescope.setup {
  defaults = {
    mappings = {
      i = { ['<c-t>'] = trouble.open_with_trouble },
      n = { ['<c-t>'] = trouble.open_with_trouble },
    },
    file_ignore_patterns = { '.git/' },
    cache_picker = {
      num_pickers = 5,
    },
  },
  pickers = {
    find_files = {
      hidden = true,
      theme = 'dropdown',
    },
    git_files = {
      theme = 'dropdown',
    },
    live_grep = {},
    buffers = {
      theme = 'dropdown',
    },
    help_tags = {
      theme = 'dropdown',
    },
  },
}
telescope.load_extension 'fzf'

-----------------------------------------------------------------------
-- Keymaps
-----------------------------------------------------------------------
nmap('<leader>k', luacmd 'require("telescope.builtin").find_files()')
nmap('<leader>ff', luacmd 'require("telescope.builtin").git_files()')
nmap('<leader>fg', luacmd 'require("telescope.builtin").live_grep()')
nmap('<leader>fb', luacmd 'require("telescope.builtin").buffers()')
nmap('<leader>fh', luacmd 'require("telescope.builtin").help_tags()')
