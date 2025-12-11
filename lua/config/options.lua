vim.g.mapleader = " " -- change the leader to a space
vim.g.maplocalleader = " " -- change the localleader to a spaceauto

vim.g.have_nerd_font = true

vim.opt.clipboard = "unnamedplus" -- use the clipboard as the unnamed register
vim.opt.expandtab = true -- use spaces when <Tab> is inserted
vim.opt.incsearch = true -- highlight match while typing search pattern
vim.opt.number = true -- print the line number in front of each line
vim.opt.numberwidth = 4 -- number of columns used for the line number
vim.opt.relativenumber = true -- show relative line number in front of each line
vim.opt.ruler = true -- show cursor line and column in the status line
vim.opt.shiftwidth = 2 -- number of spaces to use for (auto)indent step
vim.opt.smarttab = true -- <Tab> in leading whitespace indents by 'shiftwidth'
vim.opt.softtabstop = 2 -- number of columns between two soft tab stops
vim.opt.spell = true -- enable spell checking
vim.opt.spelllang = { "en_us", "es" } -- language(s) to do spell checking for
vim.opt.spellsuggest = "best" -- show suggestions for misspelled words
vim.opt.tabstop = 2 -- number of columns between two tab stops
vim.opt.title = true -- let Vim set the title of the window
vim.opt.wrap = false -- long lines wrap and continue on the next line

local M = {}

function M.setup()
	vim.cmd([[
    augroup IgnoreImportSpell
      autocmd!

      "Ignore import statements
      autocmd Syntax * syntax match NoSpellImport /^\s*import.*$/ contains=@NoSpell
      autocmd Syntax * highlight link NoSpellImport Normalaugroup IgnoreImportSpell

      "Ignore snake_case
      autocmd Syntax * syntax match NoSpellSnakeCase /\b[a-z0-9]+(_[a-z0-9]+)+\b/ contains=@NoSpell
      autocmd Syntax * highlight link NoSpellSnakeCase Normalaugroup

      "Ignore SCREAMING_CASE
      autocmd Syntax * syntax match NoSpellSCREAMING_CASE /\b[A-Z0-9]+(_[A-Z0-9]+)+\b/ contains=@NoSpell
      autocmd Syntax * highlight link NoSpellSCREAMING_CASE Normal

      "Ignore camelCase"
      autocmd Syntax * syntax match NoSpellCamelCase /\b[a-z]+[A-Z][a-zA-Z0-9]*\b/ contains=@NoSpell
      autocmd Syntax * highlight link NoSpellCamelCase Normal

      "Ignore PascalCase
      autocmd Syntax * syntax match NoSpellPascalCase /\b[A-Z][a-zA-Z0-9]*[A-Z][a-zA-Z0-9]*\b/ contains=@NoSpell
      autocmd Syntax * highlight link NoSpellPascalCase Normal

      "Ignore kebab-case
      autocmd Syntax * syntax match NoSpellKebabCase /\b[a-z0-9]+(-[a-z0-9]+)+\b/ contains=@NoSpell
      autocmd Syntax * highlight link NoSpellKebabCase Normal
    augroup END
  ]])
end

return M
