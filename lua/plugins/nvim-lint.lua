-- Este archivo configura el plugin `nvim-lint` para Neovim.
-- Este plugin proporciona funcionalidad de linting para varios lenguajes de programación en Neovim.

return {
	"mfussenegger/nvim-lint", -- Plugin para linting en Neovim
	event = { "BufReadPre", "BufNewFile" }, -- Ejecutar plugin en estos eventos
	config = function()
		local lint = require("lint")

		-- Configura los linters por tipo de archivo
		lint.linters_by_ft = {
			javascript = { "eslint_d" }, -- Linter para archivos JavaScript
			typescript = { "eslint_d" }, -- Linter para archivos TypeScript
			javascriptreact = { "eslint_d" }, -- Linter para archivos JavaScript React
			typescriptreact = { "eslint_d" }, -- Linter para archivos TypeScript React
			svelte = { "eslint_d" }, -- Linter para archivos Svelte
			python = { "pylint" }, -- Linter para archivos Python
		}

		-- Crear un grupo de autocmd para linting
		local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

		-- Crear autocmd para ejecutar linting en ciertos eventos
		vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
			group = lint_augroup,
			callback = function()
				lint.try_lint() -- Ejecutar linting
			end,
		})

		-- Asignar combinación de teclas para ejecutar linting manualmente
		vim.keymap.set("n", "<leader>l", function()
			lint.try_lint()
		end, { desc = "Trigger linting for current file" }) -- Descripción de la combinación de teclas
	end,
}

