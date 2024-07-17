-- Este archivo configura el plugin `conform.nvim` para Neovim. `conform.nvim` es
-- un plugin que permite formatear el código utilizando diversos formateadores según
-- el tipo de archivo. Esta configuración especifica los formateadores para distintos
-- lenguajes y habilita el formato automático al guardar.

return {
	"stevearc/conform.nvim", -- Plugin para formatear código en Neovim
	event = { "BufReadPre", "BufNewFile" }, -- Cargar el plugin en eventos específicos
	config = function()
		-- Importar el plugin conform
		local conform = require("conform")

		-- Configurar conform con opciones específicas
		conform.setup({
			-- Especificar los formateadores por tipo de archivo
			formatters_by_ft = {
				javascript = { "prettier" },
				typescript = { "prettier" },
				javascriptreact = { "prettier" },
				typescriptreact = { "prettier" },
				["svelte"] = { "prettier" },
				css = { "prettier" },
				html = { "prettier" },
				json = { "prettier" },
				yaml = { "prettier" },
				markdown = { "prettier" },
				liquid = { "prettier" },
				lua = { "stylua" },
				python = { "isort", "black" },
				["*"] = { "prettier" }, -- Formateador por defecto para otros archivos
			},
			-- Configurar formato automático al guardar
			format_on_save = {
				lsp_fallback = true, -- Usar LSP como respaldo si no hay formateador específico
				timeout_ms = 500, -- Tiempo de espera para el formateo
			},
		})

		-- Asignar combinación de teclas para formatear manualmente
		vim.keymap.set({ "n", "v" }, "<leader>mp", function()
			conform.format({
				lsp_fallback = true, -- Usar LSP como respaldo si no hay formateador específico
				async = false, -- Realizar formateo sincrónico
				timeout_ms = 1000, -- Tiempo de espera para el formateo manual
			})
		end, { desc = "Format file or range (in visual mode)" }) -- Descripción de la combinación de teclas
	end,
}

