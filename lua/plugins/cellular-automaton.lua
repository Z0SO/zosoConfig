-- Este archivo configura el plugin `cellular-automaton.nvim`, que proporciona funcionalidades para autómatas celulares en Neovim.

return {
	"eandrju/cellular-automaton.nvim", -- Plugin para autómatas celulares en Neovim

	config = function()
		require("cellular-automaton") -- Cargar la configuración del plugin
	end,
}

