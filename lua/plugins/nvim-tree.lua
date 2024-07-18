-- Este archivo configura el plugin `nvim-tree.lua` para Neovim.
-- `nvim-tree.lua` es un plugin que proporciona un explorador de archivos para Neovim.
-- Incluye dependencias para `nvim-web-devicons` para agregar iconos al explorador.

return {
	"nvim-tree/nvim-tree.lua", -- Plugin de explorador de archivos para Neovim
	dependencies = "nvim-tree/nvim-web-devicons", -- Dependencia para iconos en el explorador
	config = function()
		local nvimtree = require("nvim-tree")

		-- Configuración recomendada por la documentación de nvim-tree
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1

		nvimtree.setup({
			view = {
				width = 35, -- Ancho del explorador de archivos
				relativenumber = true, -- Número de línea relativo
			},
			-- Cambiar los iconos de las flechas de las carpetas
			renderer = {
				indent_markers = {
					enable = true, -- Habilitar marcadores de indentación
				},
				icons = {
					glyphs = {
						folder = {
							arrow_closed = "", -- Flecha cuando la carpeta está cerrada
							arrow_open = "", -- Flecha cuando la carpeta está abierta
						},
					},
				},
			},
			-- Deshabilitar window_picker para que el explorador funcione bien con divisiones de ventana
			actions = {
				open_file = {
					window_picker = {
						enable = false,
					},
				},
			},
			filters = {
				custom = { ".DS_Store" }, -- Filtros personalizados
			},
			git = {
				ignore = false, -- No ignorar archivos de git
			},
		})

		-- Configurar mapeos de teclas
		local keymap = vim.keymap -- Para simplificar

		keymap.set("n", "<leader>ew", "<cmd>NvimTreeToggle<CR>", { desc = "🌳Toggle file explorer🌳" }) -- Alternar el explorador de archivos
		keymap.set(
			"n",
			"<leader>ef",
			"<cmd>NvimTreeFindFileToggle<CR>",
			{ desc = "🌳Toggle file explorer on current file🌳" }
		) -- Alternar el explorador de archivos en el archivo actual
		keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "🌳Collapse file explorer🌳" }) -- Colapsar el explorador de archivos
		keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "🌳Refresh file explorer🌳" }) -- Refrescar el explorador de archivos
		keymap.set("n", "<leader>ee", "<cmd>NvimTreeFocus<CR>", { desc = "🌳Refocus tree?🌳" }) -- Enfocar el árbol o abrir si no está abierto
	end,
}
