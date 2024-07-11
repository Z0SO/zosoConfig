-- Este archivo configura el plugin `diffview.nvim`, que proporciona visualización y navegación de diferencias en Neovim.

return {
  "sindrets/diffview.nvim", -- Plugin para visualización y navegación de diferencias en Neovim

  config = function()
    -- Importar y configurar diffview
    require("diffview").setup({})
  end,
}

