-- lua/plugins/gotham.lua

return {
  'whatyouhide/vim-gotham',
  config = function()
    -- Configurar el tema
    vim.cmd([[
      syntax enable
      colorscheme gotham
    ]])
  end
}
