local cmd = vim.cmd
local fn = vim.fn
local opt = vim.opt


opt.fileencoding = "utf-8" -- The encoding written to file
opt.swapfile = false -- No swap file
opt.helplang = "en" -- Help language
opt.hidden = true -- Enable background buffers
opt.ambiwidth = 'double' -- Use double width characters
opt.mouse = 'a'
opt.title = true


opt.cursorline = true -- Enable highlighting of the current line
opt.number = true -- Show line numbers

-- clipboard
opt.clipboard:append({"unnamedplus"})

opt.wildmenu = true -- Enable menu for command completion
opt.cmdheight = 1 -- More space for displaying messages
opt.laststatus = 1 -- Always display the status line
opt.showcmd = true -- Show (partial) command in status line

-- search
opt.hlsearch = true -- Highlight found searches
opt.incsearch = true -- Incremental search
opt.matchtime = 1 -- Highlight matching brackets for 1 seconds

opt.termguicolors = true -- True color support
opt.background = "dark" -- tell vim what the background color looks like

-- indents
opt.shiftwidth = 4 -- Size of an indent
opt.tabstop = 4 -- Number of spaces tabs count for
opt.expandtab = true -- Use spaces instead of tabs
opt.smartindent = true -- Insert indents automatically
opt.autoindent = true -- Auto indent

opt.number = true -- Show line numbers
opt.relativenumber = true -- Show relative line numbers
opt.wrap = false -- Disable line wrap
opt.showtabline = 1 -- 1: always, 2: only when multiple windows are open

opt.visualbell = true -- Disable sound on errors
opt.showmatch = true -- Show matching brackets when text indicator is over them

-- interface
opt.winblend = 20 -- Enable transparency
opt.pumblend = 20 -- Enable transparency for popup menu
opt.showtabline = 2 -- Always show tabs
opt.signcolumn = "yes" -- Always show the sign column, otherwise it would shift the text each time


