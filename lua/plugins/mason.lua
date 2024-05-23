return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")
		local mason_tool_installer = require("mason-tool-installer")

		mason.setup({})

		mason_lspconfig.setup({
			ensure_installed = {
				"bashls",
				"clangd",
				"cmake",
				"gopls",
				"html",
				"htmx",
				"jsonls",
				"lua_ls",
				"marksman",
				"powershell_es",
				"pyright",
				"vimls",
			},
		})

		mason_tool_installer.setup({
			ensure_installed = {
				"black",
				"clang-format",
				"cmakelint",
				"cpplint",
				"eslint_d",
				"isort",
				"jsonlint",
				"markdownlint",
				"prettier",
				"pylint",
				"stylua",
			},
		})
	end,
}
