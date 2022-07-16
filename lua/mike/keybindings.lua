local keymaps = require 'mike.utils.keymaps'
local table_utils = require 'mike.utils.table'
local file_utils = require 'mike.utils.file'
local s = table_utils.to_string
local cmd = vim.cmd
local map = keymaps.map
local nmap = keymaps.nmap
local vmap = keymaps.vmap

vim.g.mapleader = ' '

local globalBuffer = '"+'
local nullBuffer = '"_'

map({ 'n', 'v' }, '<Leader>y', s { globalBuffer, 'y' }, { silent = false })
nmap('<Leader>Y', s { 'gg', globalBuffer, 'yG' }, { silent = false })
vmap('<Leader>p', s { nullBuffer, 'dP' })

-- increment using CMD SHIFT +
map({ 'n', 'v' }, '<D-+>', '<C-a>')

-- decrement using CMD SHIFT -
map({ 'n', 'v' }, '<D-_>', '<C-x>')

-- Primagen hax to move lines up and down
-- vmap('J', ':m \">+1<Enter>gv=gv')
-- vmap('K', ':m \"<-2<Enter>gv=gv')

-- Close tmp windows (Like GitFugitive) with <Leader>q
nmap('<Leader>q', function()
  local path = file_utils.get_current_file()

  if string.find(path, '.tmp.') ~= nil then
    cmd 'q'
  end
end)
