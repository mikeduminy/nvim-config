local keymaps = require 'mike.utils.keymaps'
local strcmd = keymaps.strcmd
local nmap = keymaps.nmap

nmap('[b', strcmd 'BufferLineCycleNext')
nmap(']b', strcmd 'BufferLineCyclePrev')

require('bufferline').setup {
  options = {
    mode = 'buffers',
    always_show_bufferline = true,
    diagnostics = true,
    left_mouse_command = 'buffer %d',
    offsets = {
      {
        filetype = 'NvimTree',
        text = function()
          return vim.fn.getcwd()
        end,
        highlight = 'Directory',
        text_align = 'left',
      },
    },
    groups = {
      items = {
        require('bufferline.groups').builtin.pinned:with { icon = '' },
      },
    },
  },
}
