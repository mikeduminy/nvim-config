local keymap = require 'mike.utils.keymaps'
local nmap = keymap.nmap
local strcmd = keymap.strcmd

-----------------------------------------------------------------------
-- Setup
-----------------------------------------------------------------------
require('trouble').setup {
  -- your configuration comes here
  -- or leave it empty to use the default settings
  -- refer to the configuration section below
}

-----------------------------------------------------------------------
-- Keymaps
-----------------------------------------------------------------------
nmap('<leader>xx', strcmd 'TroubleToggle')
nmap('<leader>xq', strcmd 'TroubleClose')
nmap('<leader>xw', strcmd 'Trouble workspace_diagnostics')
nmap('<leader>xd', strcmd 'Trouble document_diagnostics')
nmap('<leader>xl', strcmd 'Trouble loclist')
nmap('<leader>xf', strcmd 'Trouble quickfix')
nmap('gR', strcmd 'Trouble lsp_references')
