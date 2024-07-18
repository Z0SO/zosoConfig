-- Configuración para el plugin `which-key.nvim`, que proporciona una interfaz de ayuda interactiva para atajos de teclado en Neovim.

return {
  "folke/which-key.nvim", -- Plugin para interfaz de ayuda interactiva de atajos de teclado
  event = "VeryLazy", -- Carga el plugin en eventos de "muy poca carga"
  init = function()
    vim.o.timeout = true -- Habilita el tiempo de espera para los mapas de teclado
    vim.o.timeoutlen = 500 -- Establece el tiempo de espera en 500 milisegundos
  end,
  opts = {
    -- Configuración personalizada opcional puede ir aquí
    -- Dejar vacío para usar la configuración predeterminada
  },
}
