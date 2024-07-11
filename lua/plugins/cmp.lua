-- Configuración de nvim-cmp para autocompletación en Neovim, junto con varias fuentes de autocompletación y snippets.

return {
  "hrsh7th/nvim-cmp",
  event = "InsertEnter", -- Carga el plugin cuando se entra en modo de inserción.
  dependencies = {
    "hrsh7th/cmp-buffer", -- Fuente para texto en el buffer actual.
    "hrsh7th/cmp-path", -- Fuente para rutas del sistema de archivos.
    {
      "L3MON4D3/LuaSnip",
      -- Seguir la última versión estable.
      version = "v2.*", -- Reemplaza <CurrentMajor> por el número mayor más reciente (primer número de la última versión)
      -- Instalar jsregexp (¡opcional!).
      build = "make install_jsregexp",
    },
    "saadparwaiz1/cmp_luasnip", -- Para la autocompletación con snippets
    "rafamadriz/friendly-snippets", -- Snippets útiles
    "onsails/lspkind.nvim", -- Pictogramas estilo VSCode
  },
  config = function()
    local cmp = require("cmp")

    local luasnip = require("luasnip")

    local lspkind = require("lspkind")

    -- Carga snippets estilo VSCode desde plugins instalados (e.g., friendly-snippets)
    require("luasnip.loaders.from_vscode").lazy_load()

    cmp.setup({
      completion = {
        completeopt = "menu,menuone,preview,noselect",
      },
      snippet = { -- Configura cómo nvim-cmp interactúa con el motor de snippets
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
      },
      mapping = cmp.mapping.preset.insert({
        ["<C-k>"] = cmp.mapping.select_prev_item(), -- Selecciona la sugerencia anterior
        ["<C-j>"] = cmp.mapping.select_next_item(), -- Selecciona la siguiente sugerencia
        ["<C-b>"] = cmp.mapping.scroll_docs(-4), -- Desplaza la documentación hacia arriba
        ["<C-f>"] = cmp.mapping.scroll_docs(4), -- Desplaza la documentación hacia abajo
        ["<C-Space>"] = cmp.mapping.complete(), -- Muestra las sugerencias de autocompletación
        ["<C-e>"] = cmp.mapping.abort(), -- Cierra la ventana de autocompletación
        ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Confirma la selección actual
      }),
      -- Fuentes para la autocompletación
      sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "luasnip" }, -- Snippets
        { name = "buffer" }, -- Texto dentro del buffer actual
        { name = "path" }, -- Rutas del sistema de archivos
      }),

      -- Configura lspkind para pictogramas estilo VSCode en el menú de autocompletación
      formatting = {
        format = lspkind.cmp_format({
          maxwidth = 50,
          ellipsis_char = "...",
        }),
      },
    })
  end,
}

