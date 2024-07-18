-- Este archivo configura el plugin `todo-comments.nvim` para Neovim.
-- `todo-comments.nvim` resalta y gestiona comentarios de tipo TODO, FIX, HACK, etc., en el código.

return {
	"folke/todo-comments.nvim", -- Plugin para resaltar y gestionar comentarios de tipo TODO, FIX, HACK, etc.
	event = { "BufReadPre", "BufNewFile" }, -- Carga el plugin en estos eventos
	dependencies = { "nvim-lua/plenary.nvim" }, -- Dependencia requerida
	config = function()
		local todo_comments = require("todo-comments")

		-- Configura los atajos de teclado
		local keymap = vim.keymap -- Para concisión

		-- Saltar al siguiente comentario TODO
		keymap.set("n", "]t", function()
			todo_comments.jump_next()
		end, { desc = "Next todo comment" })

		-- Saltar al comentario TODO anterior
		keymap.set("n", "[t", function()
			todo_comments.jump_prev()
		end, { desc = "Previous todo comment" })

		todo_comments.setup() -- Configuración del plugin
	end,
}

-- TODO: Añadir funcionalidad adicional
-- BUG: Solucionar errores pendientes
-- HACK: Implementar mejoras rápidas
-- PERF: Optimizar el rendimiento
-- NOTE: Nota personal
-- WARNING: Precaución al modificar
-- FIX: Corrección urgente
