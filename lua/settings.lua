-- lua/settings.lua

-- Configuración básica de Neovim
vim.opt.number = true           -- Mostrar números de línea
vim.opt.relativenumber = true   -- Números de línea relativos
vim.opt.hlsearch = true         -- Resaltar resultados de búsqueda
vim.opt.ignorecase = true       -- Ignorar mayúsculas/minúsculas en búsquedas
vim.opt.smartcase = true        -- Buscar mayúsculas si la búsqueda incluye mayúsculas
vim.opt.tabstop = 4             -- Número de espacios por tabulación
vim.opt.shiftwidth = 4          -- Número de espacios para el indentado
vim.opt.expandtab = true        -- Usar espacios en lugar de tabs

-- Cargar autocomandos personalizados
vim.cmd([[
augroup MyAutoCmd
  autocmd!
  autocmd BufWritePre * :%s/\s\+$//e
augroup END
]])

-- Configuración de teclas
vim.api.nvim_set_keymap('n', '<leader>ff', ':Telescope find_files<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fg', ':Telescope live_grep<CR>', { noremap = true, silent = true })
