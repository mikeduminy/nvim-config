local keymaps = require 'mike.utils.keymaps'
local nmap = keymaps.nmap
local strcmd = keymaps.strcmd
local g = vim.g

-----------------------------------------------------------------------
-- Options
-----------------------------------------------------------------------
g.tmux_navigator_no_mappings = 1
g.tmux_navigator_save_on_switch = 2

-----------------------------------------------------------------------
-- Keybindings
-----------------------------------------------------------------------
nmap('<c-h>', strcmd 'TmuxNavigateLeft')
nmap('<c-j>', strcmd 'TmuxNavigateDown')

nmap('<c-k>', strcmd 'TmuxNavigateUp')
nmap('<c-l>', strcmd 'TmuxNavigateRight')
