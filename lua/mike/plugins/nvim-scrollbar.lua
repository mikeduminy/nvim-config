local b16 = require('mike.plugins.base16')

require('scrollbar').setup({
  handle = {
    color = b16.colors.base03,
    hide_if_all_visible = false,
  }
})
