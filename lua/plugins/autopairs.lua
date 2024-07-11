-- Configuración de nvim-autopairs para agregar automáticamente pares de caracteres
-- como paréntesis, comillas, etc., y hacer que funcione con el plugin de autocompletación nvim-cmp.

return {
  "windwp/nvim-autopairs",
  event = { "InsertEnter" }, -- Carga el plugin cuando se entra en modo de inserción.
  dependencies = {
    "hrsh7th/nvim-cmp", -- Plugin de autocompletación necesario para integración.
  },
  config = function()
    -- Importa nvim-autopairs
    local autopairs = require("nvim-autopairs")
    -- Configura autopairs
    autopairs.setup({
      check_ts = true, -- Habilita la integración con treesitter
      ts_config = {
        lua = { "string" }, -- No agrega pares en nodos de string de treesitter en Lua
        javascript = { "template_string" }, -- No agrega pares en nodos de template_string de treesitter en JavaScript
        java = false, -- No verifica treesitter en Java
      },
    })

    -- Importa la funcionalidad de nvim-autopairs para la autocompletación
    local cmp_autopairs = require("nvim-autopairs.completion.cmp")

    -- Importa el plugin nvim-cmp (plugin de autocompletación)
    local cmp = require("cmp")

    -- Hace que autopairs y la autocompletación funcionen juntos
    cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
  end,
}

