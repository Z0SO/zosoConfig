-- return {
--   'whatyouhide/vim-gotham',
--   config = function()
--     -- Configurar el tema
--     vim.cmd([[
--       syntax enable
--       set background=dark
--       colorscheme gotham
--     ]])
--   end
-- }


return {
	"gruvbox-community/gruvbox",
	config = function()
		vim.cmd("colorscheme gruvbox")
	end,
}
