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
