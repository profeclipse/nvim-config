return {
	--  "rmagatti/auto-session",
	--  config = function()
	--    local auto_session = require("auto-session")
	--
	--    auto_session.setup({
	--      auto_restore_enabled = false,
	--      auto_session_suppress_dirs = {
	--        "~/",
	--        "~/Documents",
	--        "~/Downloads",
	--        "~/Contacts",
	--        "~/Favorites",
	--        "~/Links",
	--        "~/Music",
	--        "~/OneDrive",
	--        "~/Searches",
	--        "~/Videos"
	--      },
	--    })
	--
	--    local keymap = vim.keymap
	--
	--    keymap.set("n", "<leader>sr", "<cmd>SessionRestore<cr>", { desc = "Restore session for cwd" })
	--    keymap.set("n", "<leader>ss", "<cmd>SessionSave<cr>", { desc = "Save session for cwd" })
	--  end,
}
