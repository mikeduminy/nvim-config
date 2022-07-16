local table_utils = require 'mike.utils.table'
local keymap = vim.keymap
local mergeTables = table_utils.merge

local function map(mode, shortcut, command, options)
  if options and options.executeCommand then
    command = '<cmd>' .. command .. '<cr>'
    options.executeCommand = nil
  end
  keymap.set(mode, shortcut, command, mergeTables({ noremap = true, silent = true }, options or {}))
end

-- Normal mode key mapping
local nmap = function(shortcut, command, options)
  map('n', shortcut, command, options)
end

-- Visual mode key mapping
local vmap = function(shortcut, command, options)
  map('v', shortcut, command, options)
end

-- Helper to generate command syntax
local strcmd = function(command, options)
  if options and options.lua then
    return '<cmd>lua ' .. command .. '<cr>'
  end
  return '<cmd>' .. command .. '<cr>'
end

local luacmd = function(command)
  return strcmd(command, { lua = true })
end

local M = {
  map = map,
  nmap = nmap,
  vmap = vmap,
  strcmd = strcmd,
  luacmd = luacmd,
}

return M
