-- Este archivo configura el plugin `harpoon` para Neovim. `harpoon` es un plugin que permite
-- gestionar y navegar entre varios archivos de forma rápida, mejorando la eficiencia en el
-- manejo de múltiples buffers.

return {
	"ThePrimeagen/harpoon", -- Plugin para gestionar y navegar entre varios archivos de forma rápida
	branch = "harpoon2", -- Especificar la rama del plugin
	dependencies = { "nvim-lua/plenary.nvim" }, -- Dependencia necesaria para el plugin
	config = function()
		-- Importar el plugin harpoon
		local harpoon = require("harpoon")

		-- Configuración requerida para harpoon
		harpoon:setup()

		-- Mapeo de teclas para agregar archivos a la lista de harpoon
		vim.keymap.set("n", "<leader>a", function()
			harpoon:list():add()
		end, { desc = "Añadir archivo a Harpoon" })

		-- Mapeo de teclas para mostrar el menú rápido de harpoon
		vim.keymap.set("n", "<C-e>", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end, { desc = "Mostrar menú rápido de Harpoon" })

		-- Mapeo de teclas para seleccionar archivos específicos en la lista de harpoon
		vim.keymap.set("n", "<F2>", function()
			harpoon:list():select(1)
		end, { desc = "Seleccionar archivo 1 en Harpoon" })
		vim.keymap.set("n", "<F3>", function()
			harpoon:list():select(2)
		end, { desc = "Seleccionar archivo 2 en Harpoon" })
		vim.keymap.set("n", "<F4>", function()
			harpoon:list():select(3)
		end, { desc = "Seleccionar archivo 3 en Harpoon" })
		vim.keymap.set("n", "<F5>", function()
			harpoon:list():select(4)
		end, { desc = "Seleccionar archivo 4 en Harpoon" })

		-- Descomentar para activar mapeo de teclas para navegar entre buffers en la lista de harpoon
		-- vim.keymap.set("n", "<C-S-P>", function()
		-- 	harpoon:list():prev()
		-- end, { desc = "Ir al buffer anterior en Harpoon" })
		-- vim.keymap.set("n", "<C-S-N>", function()
		-- 	harpoon:list():next()
		-- end, { desc = "Ir al siguiente buffer en Harpoon" })
	end,
}

