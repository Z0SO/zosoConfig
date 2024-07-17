-- Este archivo configura el plugin `indent-blankline.nvim` para Neovim.
-- Este plugin añade líneas de indentación en blanco para mejorar la legibilidad del código.

return {
  "lukas-reineke/indent-blankline.nvim", -- Plugin para mostrar líneas de indentación en blanco
  event = { "BufReadPre", "BufNewFile" }, -- Cargar el plugin en estos eventos
  main = "ibl", -- Punto de entrada principal del plugin
  opts = {
    indent = { char = "┊" }, -- Caracter utilizado para las líneas de indentación
  },
}

