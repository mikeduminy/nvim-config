local keymaps = require 'mike.utils.keymaps'
local luacmd = keymaps.luacmd
local nmap = keymaps.nmap

-----------------------------------------------------------------------
-- Keymaps
-----------------------------------------------------------------------
nmap('<Leader>aa', luacmd 'require("harpoon.mark").add_file()')
nmap('<Leader>af', luacmd 'require("harpoon.ui").toggle_quick_menu()')
nmap('<Leader>an', luacmd 'require("harpoon.ui").nav_next()')
nmap('<Leader>aN', luacmd 'require("harpoon.ui").nav_prev()')
