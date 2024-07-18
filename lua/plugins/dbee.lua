-- Este archivo configura el plugin `nvim-dbee` para Neovim.
-- `nvim-dbee` es un plugin que facilita la interacción con bases de datos desde Neovim.
-- Incluye la dependencia `nui.nvim` y un script de instalación que intenta detectar automáticamente el método de instalación adecuado.
-- La configuración básica se puede ajustar según sea necesario.

return {
	"kndndrj/nvim-dbee", -- Plugin para facilitar la interacción con bases de datos desde Neovim
	dependencies = {
		"MunifTanjim/nui.nvim", -- Dependencia requerida por nvim-dbee
	},
	build = function()
		-- Instalar el plugin utilizando un método de instalación detectado automáticamente.
		-- Si falla, intentar llamarlo con uno de estos parámetros:
		-- "curl", "wget", "bitsadmin", "go"
		require("dbee").install()
	end,
	config = function()
		-- Importar y configurar el plugin nvim-dbee
		local dbee = require("dbee")

		-- Configurar nvim-dbee con opciones opcionales
		dbee.setup(--[[opciones opcionales de configuración]])
	end,
}
