-- Este archivo configura el plugin `nvim-surround` para Neovim.
-- `nvim-surround` facilita la manipulación de pares de caracteres envolventes (como paréntesis, comillas, etc.).

return {
  "kylechui/nvim-surround", -- Plugin para manipulación de pares de caracteres envolventes
  event = { "BufReadPre", "BufNewFile" }, -- Carga el plugin en estos eventos
  version = "*", -- Utiliza la versión más estable; omite para usar la rama `main` con las últimas características
  config = true, -- Configuración predeterminada del plugin
}
