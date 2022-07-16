local resolve_module = require 'mike.utils.resolve_module'
local opt = vim.opt

-----------------------------------------------------------------------
-- General
-----------------------------------------------------------------------
opt.modifiable = true
opt.shell = '/bin/zsh' -- https://superuser.com/questions/287994/how-to-specify-shell-for-vim
opt.fileencoding = 'utf-8'
opt.linebreak = true -- Break lines at word (requires Wrap lines)
opt.showbreak = '+++' -- Wrap-broken line prefix
opt.textwidth = 80 -- Line wrap (number of cols)
opt.showmatch = true -- Highlight matching brace
opt.visualbell = true -- Use visual bell (no beeping)
opt.cursorline = true -- Highlight current line
opt.hlsearch = false -- Highlight all search results
opt.smartcase = true -- Enable smart-case search
opt.ignorecase = true -- Always case-insensitive
opt.backupcopy = 'yes'
opt.swapfile = true
opt.smartcase = true
opt.laststatus = 2
opt.incsearch = true
opt.ignorecase = true
opt.scrolloff = 12
opt.number = true -- line numbers and distances
opt.relativenumber = true -- Show relative line numbers
opt.undolevels = 1000 -- Number of undo levels
opt.undofile = true
opt.errorbells = false
-- vim.g.netrw_liststyle = 3 -- tree-style explorer

-- goto file (gf) settings
_G.resolve_module = resolve_module --
opt.path = '.,src' -- goto file (gf) should search these paths
opt.suffixesadd = '.js,.jsx,.ts,.tsx'
opt.includeexpr = 'v:lua.resolve_module(v:fname)' -- goto file (gf) on a package reference runs this command
opt.isfname = '@,48-57,/,.,-,_,+,,,#,$,%,~,=,@-@' -- default file name pattern with added @-@ to match scoped packages
