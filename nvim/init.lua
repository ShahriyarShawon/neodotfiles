vim.o.number = true
vim.o.relativenumber = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.g.mapleader = ','

vim.keymap.set('n', '<leader>d', ':bnext<cr>', {})
vim.keymap.set('n', '<leader>a', ':bprev<cr>', {})
vim.keymap.set('n', '<leader>ss', ':source ~/.config/nvim/init.lua<cr>', {})

require("plugins")

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})

--vim.opt.termguicolors = true
require("bufferline").setup{
    options = {
        indicator = {
            style = 'underline'
        }
    }
}

vim.opt.signcolumn = 'yes'

local lsp = require('lsp-zero').preset({
  name = 'minimal',
  set_lsp_keymaps = true,
  manage_nvim_cmp = true,
  suggest_lsp_servers = false,
})

lsp.setup()
require("mason").setup()
