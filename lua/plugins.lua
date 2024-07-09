-- lua/plugins.lua

require("lazy").setup({
  {
    "github/copilot.vim",
    config = function()
      vim.g.copilot_no_tab_map = true
      vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
    end
  },
  {
    'whatyouhide/vim-gotham'
  }
})

-- Configurar el tema
vim.cmd([[
syntax enable
set background=dark
colorscheme gotham
]])
