-- Este archivo configura el plugin `lazygit.nvim` para Neovim.
-- Este plugin permite la integración de LazyGit en Neovim, proporcionando una interfaz de usuario para Git.

return {
  "kdheepak/lazygit.nvim", -- Plugin para la integración de LazyGit en Neovim
  cmd = {
    "LazyGit", -- Comando para abrir LazyGit
    "LazyGitConfig", -- Comando para abrir la configuración de LazyGit
    "LazyGitCurrentFile", -- Comando para abrir LazyGit en el archivo actual
    "LazyGitFilter", -- Comando para filtrar LazyGit
    "LazyGitFilterCurrentFile", -- Comando para filtrar LazyGit en el archivo actual
  },
  dependencies = {
    "nvim-lua/plenary.nvim", -- Dependencia opcional para la decoración del borde de la ventana flotante
  },
  keys = {
    { "<leader>lg", "<cmd>LazyGit<cr>", desc = "Open lazy git" }, -- Asigna la combinación de teclas <leader>lg para abrir LazyGit
  },
}

