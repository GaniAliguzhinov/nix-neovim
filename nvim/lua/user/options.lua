local fn = vim.fn
local opt = vim.o

-- See :h <option> to see what the options do

opt.compatible = false

-- Enable true colour support
if fn.has('termguicolors') then
    opt.termguicolors = true
end

-- Search down into subfolders
opt.path = vim.o.path .. '**'

opt.smarttab = true
opt.clipboard = "unnamedplus"
opt.number = true
opt.relativenumber = false
opt.cursorline = true
opt.lazyredraw = true
opt.showmatch = true -- Highlight matching parentheses, etc
opt.incsearch = true
opt.hlsearch = true

opt.spell = true
opt.spelllang = 'en'

opt.expandtab = true
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.foldenable = true
opt.history = 2000
opt.nrformats = 'bin,hex' -- 'octal'
opt.undofile = true
opt.splitright = true
opt.splitbelow = true
opt.cmdheight = 0

opt.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]
