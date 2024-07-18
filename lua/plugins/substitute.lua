-- Este archivo configura el plugin `substitute.nvim` para Neovim.
-- `substitute.nvim` es un plugin que facilita la sustitución de texto en diferentes contextos, incluyendo líneas completas y modos visuales.

return {
  "gbprod/substitute.nvim", -- Plugin para facilitar la sustitución de texto
  event = { "BufReadPre", "BufNewFile" }, -- Carga el plugin en estos eventos
  config = function()
    local substitute = require("substitute")

    substitute.setup() -- Configuración básica del plugin

    -- Configurar atajos de teclado
    local keymap = vim.keymap -- para concisión

    -- Sustitución con movimiento
    vim.keymap.set("n", "s", substitute.operator, { desc = "Substitute with motion" })
    -- Sustitución de línea completa
    vim.keymap.set("n", "ss", substitute.line, { desc = "Substitute line" })
    -- Sustitución hasta el final de la línea
    vim.keymap.set("n", "S", substitute.eol, { desc = "Substitute to end of line" })
    -- Sustitución en modo visual
    vim.keymap.set("x", "s", substitute.visual, { desc = "Substitute in visual mode" })
  end,
}
