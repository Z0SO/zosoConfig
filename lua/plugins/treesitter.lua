-- Este archivo configura el plugin `nvim-treesitter` para proporcionar resaltado de sintaxis avanzado,
-- autoetiquetado y otras características de análisis de código en Neovim. `nvim-treesitter` utiliza la
-- biblioteca Tree-sitter para proporcionar análisis sintáctico avanzado y preciso de varios lenguajes de programación.
-- Este plugin también incluye soporte para `nvim-ts-autotag` para autoetiquetado en archivos HTML y similares.

return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" }, -- Carga el plugin al abrir o crear un archivo.
  build = ":TSUpdate", -- Comando para actualizar los parsers de Tree-sitter.
  dependencies = {
    "windwp/nvim-ts-autotag", -- Plugin para autoetiquetado en archivos HTML y similares.
  },
  config = function()
    -- Importa el plugin nvim-treesitter
    local treesitter = require("nvim-treesitter.configs")

    -- Configura treesitter
    treesitter.setup({
      -- Habilita el resaltado de sintaxis
      highlight = {
        enable = true,
      },
      -- Habilita la indentación basada en la estructura del código
      indent = {
        enable = true,
      },
      -- Habilita el autoetiquetado con el plugin nvim-ts-autotag
      autotag = {
        enable = true,
      },
      -- Asegura que estos parsers de lenguaje estén instalados
      ensure_installed = {
        "json",
        "javascript",
        "typescript",
        "tsx",
        "yaml",
        "html",
        "css",
        "prisma",
        "markdown",
        "markdown_inline",
        "svelte",
        "graphql",
        "bash",
        "lua",
        "vim",
        "dockerfile",
        "gitignore",
        "query",
        "vimdoc",
        "c",
        "lua",
        "python",
      },
      -- Configura la selección incremental
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>", -- Inicia la selección incremental
          node_incremental = "<C-space>", -- Incrementa al siguiente nodo
          scope_incremental = false, -- Deshabilita la selección incremental de alcance
          node_decremental = "<bs>", -- Decrementa al nodo anterior
        },
      },
    })
  end,
}

