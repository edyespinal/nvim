vim.g.mapleader = " "                           -- change the leader to a space
vim.g.maplocalleader = " "                      -- change the localleader to a spaceauto

vim.g.have_nerd_font = true

vim.opt.clipboard = "unnamedplus"               -- use the clipboard as the unnamed register
vim.opt.expandtab = true                        -- use spaces when <Tab> is inserted
vim.opt.incsearch = true                        -- highlight match while typing search pattern
vim.opt.number = true                           -- print the line number in front of each line
vim.opt.numberwidth = 2                         -- number of columns used for the line number
vim.opt.relativenumber = true                   -- show relative line number in front of each line
vim.opt.ruler = true                            -- show cursor line and column in the status line
vim.opt.shiftwidth = 2                          -- number of spaces to use for (auto)indent step
vim.opt.smarttab = true                         -- <Tab> in leading whitespace indents by 'shiftwidth'
vim.opt.softtabstop = 2                         -- number of columns between two soft tab stops
vim.opt.spell = true                            -- enable spell checking
vim.opt.spelllang = en_us,es_es                 -- language(s) to do spell checking for
vim.opt.tabstop = 2                             -- number of columns between two tab stops
vim.opt.title = true                            -- let Vim set the title of the window
