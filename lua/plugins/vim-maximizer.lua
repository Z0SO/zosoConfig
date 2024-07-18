-- Configuración para el plugin `vim-maximizer`, que permite maximizar y minimizar divisiones en Neovim.

return {
  "szw/vim-maximizer", -- Plugin para maximizar y minimizar divisiones en Neovim
  keys = {
    { "<leader>sm", "<cmd>MaximizerToggle<CR>", desc = "Maximizar/minimizar una división" },
  },
}
