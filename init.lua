-- ~/.config/nvim/init.lua

-- Variables globales
vim.g.mapleader = " "

-- Bootstrap de lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  local repo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system({"git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath})
end
vim.opt.rtp:prepend(lazypath)

-- Cargar configuraciones modulares
require('settings')  -- Opciones básicas de Neovim

require('init')   -- Cargar configuración de plugins desde lua/plugins.lua

vim.opt.clipboard = "unnamedplus"  -- Copiar al portapapeles

-- Configuración para Neovide
if vim.g.neovide then
  -- Atajos para aumentar y disminuir el zoom
  vim.api.nvim_set_keymap('n', '<C-+>', ':lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + 0.1<CR>', { noremap = true, silent = true })
  vim.api.nvim_set_keymap('n', '<C-->', ':lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor - 0.1<CR>', { noremap = true, silent = true })

  -- Valor inicial del factor de escala
  vim.g.neovide_scale_factor = 1.0
end



-- Copiar al portapapeles
vim.api.nvim_set_keymap('v', '<leader>y', '"+y', { noremap = true, silent = true })

-- Pegar desde el portapapeles
vim.api.nvim_set_keymap('n', '<leader>p', '"+p', { noremap = true, silent = true })



