vim.cmd [[colorscheme zaibatsu]]
local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.vim/plugged')

Plug('sbdchd/neoformat')
Plug('nvim-treesitter/nvim-treesitter', { ['do'] = ':TSUpdate' })

vim.call('plug#end')

require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "lua", "vim", "vimdoc", "query" }, 

  auto_install = true,

  highlight = {
    enable = true,              -- Включаем подсветку синтаксиса
    additional_vim_regex_highlighting = false,  -- Отключаем стандартную подсветку
  },
  indent = {
    enable = true,              -- Включаем автоматическое выравнивание
  },
}
