return {
	"goolord/alpha-nvim",
	event = "VimEnter",
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		dashboard.section.header.val = {
			"                                                     ",
			"  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
			"  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
			"  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
			"  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
			"  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
			"  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
			"                                                     ",
		}

		dashboard.section.buttons.val = {
			dashboard.button("n", "  > New File", "<cmd>ene<cr>"),
			dashboard.button(
				"c",
				"  > NVIM config",
				"<cmd>Neotree toggle " .. vim.call("stdpath", "config") .. "<cr>"
			),
			dashboard.button("e", "  > Toggle file explorer", "<cmd>Neotree toggle<cr>"),
			dashboard.button("f", "  > Fuzzy find file", "<cmd>Telescope find_files<cr>"),
			dashboard.button("s", "  > Search word", "<cmd>Telescope live_grep<cr>"),
			dashboard.button("r", "  > Restore Session for cwd", "<cmd>SessionRestore<cr>"),
			dashboard.button("q", "  > Quit NVIM", "<cmd>qa<cr>"),
		}

		alpha.setup(dashboard.opts)

		vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
	end,
}
