-- Este archivo configura el plugin `Comment.nvim`, que proporciona capacidades avanzadas de comentarios en Neovim.

return {
  "numToStr/Comment.nvim", -- Plugin para comentarios avanzados en Neovim
  event = { "BufReadPre", "BufNewFile" }, -- Eventos en los que se activa el plugin

  dependencies = {
    "JoosepAlviste/nvim-ts-context-commentstring", -- Dependencia para comentarios con contexto en TS
  },

  config = function()
    -- Importar el plugin de comentarios
    local comment = require("Comment")

    -- Importar la integración con contextos de comentario en TS
    local ts_context_commentstring = require("ts_context_commentstring.integrations.comment_nvim")

    -- Configurar el plugin de comentarios
    comment.setup({
      -- Configuración específica para archivos TSX, JSX, Svelte y HTML
      pre_hook = ts_context_commentstring.create_pre_hook(),
    })
  end,
}


