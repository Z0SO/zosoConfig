-- Este archivo configura el plugin `gitsigns.nvim` para Neovim. `gitsigns.nvim` es
-- un plugin que muestra indicadores de cambios en el código directamente en la
-- línea de números, permitiendo una mejor integración con Git. Además, proporciona
-- varias funcionalidades como navegar entre cambios, hacer staging, resetear y
-- mostrar diferencias de los cambios.

return {
	"lewis6991/gitsigns.nvim", -- Plugin para mostrar indicadores de cambios en Neovim
	event = { "BufReadPre", "BufNewFile" }, -- Cargar el plugin en eventos específicos
	opts = {
		on_attach = function(bufnr)
			-- Importar gitsigns plugin
			local gs = package.loaded.gitsigns

			-- Función para mapear teclas
			local function map(mode, l, r, desc)
				vim.keymap.set(mode, l, r, { buffer = bufnr, desc = desc })
			end

			-- Navegación entre cambios
			map("n", "]h", gs.next_hunk, "Next Hunk") -- Siguiente cambio
			map("n", "[h", gs.prev_hunk, "Prev Hunk") -- Cambio anterior

			-- Acciones
			map("n", "<leader>hs", gs.stage_hunk, "Stage hunk") -- Hacer staging de un cambio
			map("n", "<leader>hr", gs.reset_hunk, "Reset hunk") -- Resetear un cambio
			map("v", "<leader>hs", function()
				gs.stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
			end, "Stage hunk") -- Hacer staging de un cambio en modo visual
			map("v", "<leader>hr", function()
				gs.reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
			end, "Reset hunk") -- Resetear un cambio en modo visual

			map("n", "<leader>hS", gs.stage_buffer, "Stage buffer") -- Hacer staging de todo el buffer
			map("n", "<leader>hR", gs.reset_buffer, "Reset buffer") -- Resetear todo el buffer

			map("n", "<leader>hu", gs.undo_stage_hunk, "Undo stage hunk") -- Deshacer staging de un cambio

			map("n", "<leader>hp", gs.preview_hunk, "Preview hunk") -- Previsualizar un cambio

			map("n", "<leader>hb", function()
				gs.blame_line({ full = true })
			end, "Blame line") -- Mostrar línea de blame
			map("n", "<leader>hB", gs.toggle_current_line_blame, "Toggle line blame") -- Alternar blame en la línea actual

			map("n", "<leader>hd", gs.diffthis, "Diff this") -- Mostrar diferencias del cambio actual
			map("n", "<leader>hD", function()
				gs.diffthis("~")
			end, "Diff this ~") -- Mostrar diferencias del cambio actual comparado con la versión anterior

			-- Objeto de texto
			map({ "o", "x" }, "ih", ":<C-U>Gitsigns select_hunk<CR>", "Gitsigns select hunk") -- Seleccionar cambio como objeto de texto
		end,
	},
}

