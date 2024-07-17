-- Este archivo configura el plugin `lualine.nvim` para Neovim.
-- `lualine.nvim` es una barra de estado altamente personalizable para Neovim.
-- Esta configuración incluye un esquema de colores personalizado y una sección para mostrar el estado de actualizaciones pendientes.

return {
	"nvim-lualine/lualine.nvim", -- Plugin para la barra de estado en Neovim
	dependencies = { "nvim-tree/nvim-web-devicons" }, -- Dependencia para iconos de archivo
	config = function()
		local lualine = require("lualine")
		local lazy_status = require("lazy.status") -- Para configurar el contador de actualizaciones pendientes

		-- Definir colores personalizados
		local colors = {
			blue = "#00FFFF",
			green = "#00FF99",
			violet = "#FF00FF",
			yellow = "#FFFF00",
			red = "#FF0033",
			fg = "#E0E0E0",
			bg = "#112638",
			inactive_bg = "#2c3043",
		}

		-- Definir un tema personalizado para lualine
		local my_lualine_theme = {
			normal = {
				a = { bg = colors.blue, fg = colors.bg, gui = "bold" },
				b = { bg = colors.bg, fg = colors.fg },
				c = { bg = colors.bg, fg = colors.fg },
			},
			insert = {
				a = { bg = colors.green, fg = colors.bg, gui = "bold" },
				b = { bg = colors.bg, fg = colors.fg },
				c = { bg = colors.bg, fg = colors.fg },
			},
			visual = {
				a = { bg = colors.violet, fg = colors.bg, gui = "bold" },
				b = { bg = colors.bg, fg = colors.fg },
				c = { bg = colors.bg, fg = colors.fg },
			},
			command = {
				a = { bg = colors.yellow, fg = colors.bg, gui = "bold" },
				b = { bg = colors.bg, fg = colors.fg },
				c = { bg = colors.bg, fg = colors.fg },
			},
			replace = {
				a = { bg = colors.red, fg = colors.bg, gui = "bold" },
				b = { bg = colors.bg, fg = colors.fg },
				c = { bg = colors.bg, fg = colors.fg },
			},
			inactive = {
				a = { bg = colors.inactive_bg, fg = colors.semilightgray, gui = "bold" },
				b = { bg = colors.inactive_bg, fg = colors.semilightgray },
				c = { bg = colors.inactive_bg, fg = colors.semilightgray },
			},
		}

		-- Configurar lualine con el tema personalizado
		lualine.setup({
			options = {
				theme = my_lualine_theme, -- Usar el tema personalizado
			},
			sections = {
				lualine_x = {
					{
						lazy_status.updates, -- Mostrar actualizaciones pendientes
						cond = lazy_status.has_updates, -- Condición para mostrar actualizaciones
						color = { fg = "#ff9e64" }, -- Color para las actualizaciones
					},
					{ "encoding" }, -- Mostrar la codificación del archivo
					{ "fileformat" }, -- Mostrar el formato del archivo
					{ "filetype" }, -- Mostrar el tipo de archivo
				},
			},
		})
	end,
}

