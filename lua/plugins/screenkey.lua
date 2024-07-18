-- Este archivo configura el plugin `screenkey.nvim` para Neovim.
-- `screenkey.nvim` es un plugin que muestra las pulsaciones de teclas en la pantalla, útil para presentaciones y grabaciones de video.

return {
	"NStefan002/screenkey.nvim", -- Plugin para mostrar pulsaciones de teclas
	config = function()
		local screenkey = require("screenkey")
		screenkey.setup({}) -- Configuración básica del plugin
	end,
}
