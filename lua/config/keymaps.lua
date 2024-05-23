-- convenience function to set a keymap
local function map(mode,keys,actions,desc)
  vim.keymap.set(mode,keys,actions,{ desc = desc })
end

-- Insert mode mappings
map("i", "<C-b>", "<Esc>^i", "move beginning of line")
map("i", "<C-e>", "<End>", "move end of line")
map("i", "<C-h>", "<Left>", "move left")
map("i", "<C-l>", "<Right>", "move right")
map("i", "<C-j>", "<Down>", "move down")
map("i", "<C-k>", "<Up>", "move up")

-- clear search highlighting
map("n", "<Esc>", "<cmd>noh<cr>", "general clear highlights")

-- file bindings
map("n", "<C-s>", "<cmd>w<cr>", "file save")
map("n", "<C-c>", "<cmd>%y+<cr>", "file copy whole")

-- Window bindings
map("n", "<C-h>", "<C-w>h", "switch window left")
map("n", "<C-l>", "<C-w>l", "switch window right")
map("n", "<C-j>", "<C-w>j", "switch window down")
map("n", "<C-k>", "<C-w>k", "switch window up")

-- Line number toggles
map("n", "<leader>n", "<cmd>set nu!<cr>", "toggle line numbers")
map("n", "<leader>rn", "<cmd>set rnu!<cr>", "toggle relative numbers")

-- Neotree bindings
map("n", "<leader>e","<cmd>Neotree toggle<cr>", "toggle Neotree")

-- terminal
map("t","<C-x>", "<C-\\><C-N>", "terminal escape terminal mode")

-- which-key
map("n", "<leader>wK", "<cmd>WhichKey <cr>", "whichkey all keymaps")
map("n", "<leader>wk", function()
  vim.cmd("WhichKey " .. vim.fn.input "WhichKey: ")
end, "whichkey query lookup")

