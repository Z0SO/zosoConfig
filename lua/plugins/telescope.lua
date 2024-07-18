-- Este archivo configura el plugin `telescope.nvim` para Neovim.
-- `telescope.nvim` es un plugin de búsqueda altamente extensible para Neovim.
-- Incluye dependencias para `plenary.nvim`, `telescope-fzf-native.nvim`, `nvim-web-devicons` y `todo-comments.nvim`.

return {
	"nvim-telescope/telescope.nvim", -- Plugin de búsqueda extensible para Neovim
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim", -- Dependencia requerida por telescope
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" }, -- Extensión para mejorar la búsqueda
		"nvim-tree/nvim-web-devicons", -- Iconos para una mejor visualización
		"folke/todo-comments.nvim", -- Extensión para encontrar comentarios TODO
	},
	config = function()
		-- Importar y configurar telescope y sus acciones
		local telescope = require("telescope")
		local actions = require("telescope.actions")

		-- Configuración de telescope
		telescope.setup({
			defaults = {
				path_display = { "smart" }, -- Mostrar rutas de forma inteligente
				mappings = {
					i = {
						["<C-k>"] = actions.move_selection_previous, -- Mover a la selección anterior
						["<C-j>"] = actions.move_selection_next, -- Mover a la siguiente selección
						["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist, -- Enviar a quickfix list y abrirla
					},
				},
			},
		})

		-- Cargar extensión fzf para mejorar la búsqueda
		telescope.load_extension("fzf")

		-- Configurar keymaps para telescope
		local keymap = vim.keymap -- Simplificación de keymap

		-- Mapeos de teclas para las diferentes funcionalidades de telescope
		keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Búsqueda difusa de archivos en el directorio actual" })
		keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Búsqueda difusa de archivos recientes" })
		keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Buscar cadena en el directorio actual" })
		keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Buscar cadena bajo el cursor en el directorio actual" })
		keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "Buscar TODOs" })
	end,
}
