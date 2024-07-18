-- Este archivo configura el plugin `trouble.nvim` para Neovim.
-- `trouble.nvim` muestra una lista de problemas para facilitar la navegación y corrección de errores en el código.

return {
  "folke/trouble.nvim", -- Plugin para mostrar una lista de problemas
  dependencies = { "nvim-tree/nvim-web-devicons", "folke/todo-comments.nvim" }, -- Dependencias necesarias
  keys = { -- Configuración de atajos de teclado
    { "<leader>xx", "<cmd>TroubleToggle<CR>", desc = "Open/close trouble list" }, -- Abrir/cerrar la lista de problemas
    { "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<CR>", desc = "Open trouble workspace diagnostics" }, -- Abrir diagnósticos del espacio de trabajo
    { "<leader>xd", "<cmd>TroubleToggle document_diagnostics<CR>", desc = "Open trouble document diagnostics" }, -- Abrir diagnósticos del documento actual
    { "<leader>xq", "<cmd>TroubleToggle quickfix<CR>", desc = "Open trouble quickfix list" }, -- Abrir lista de correcciones rápidas
    { "<leader>xl", "<cmd>TroubleToggle loclist<CR>", desc = "Open trouble location list" }, -- Abrir lista de ubicaciones
    { "<leader>xt", "<cmd>TodoTrouble<CR>", desc = "Open todos in trouble" }, -- Abrir lista de TODOs en trouble
  },
}
