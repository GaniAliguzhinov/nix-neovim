local cmd = vim.cmd
local g = vim.g

-- Configure key mappings
g.mapleader = ' '
g.maplocalleader = ' '

-- Configure options (like tab/syntax/etc.)
require('user.options')

-- Configure diagnostic messages
require('user.diagnostics')

-- Configure theme
cmd.colorscheme("tokyonight")
g.editorconfig = true
vim.opt.colorcolumn = '100'

-- Native plugins
--[[
    command				            detection	plugin		indent  
    :filetype plugin indent on	    on		    on		    on
]]
cmd.filetype('plugin', 'indent', 'on')
cmd.packadd('cfilter') -- Allows filtering the quickfix list with :cfdo

-- let sqlite.lua (which some plugins depend on) know where to find sqlite
g.sqlite_clib_path = require('luv').os_getenv('LIBSQLITE')

-- this should be at the end, because
-- it causes neovim to source ftplugins
-- on the packpath when passing a file to the nvim command
cmd.syntax('on')
cmd.syntax('enable')
