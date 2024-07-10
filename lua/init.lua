-- ~/.config/nvim/lua/init.lua

-- Configuración de plugins
require("lazy").setup({
  { import = "plugins.copilot" },
  { import = "plugins.gotham" },
  -- Agrega más plugins aquí
})
