local g = vim.g
local opt = vim.opt

g.loaded_node_provider = 0
g.loaded_perl_provider = 0
g.loaded_ruby_provider = 0

g.mapleader = " "
g.maplocalleader = " "

opt.mouse = ""

opt.number = true
opt.relativenumber = true

opt.splitbelow = true
opt.splitright = true

opt.wrap = false

opt.expandtab = true
opt.tabstop = 2
opt.shiftwidth = 2

opt.clipboard = "unnamedplus"

opt.scrolloff = 999

opt.virtualedit = "block"

opt.inccommand = "split"

opt.ignorecase = true

opt.termguicolors = true

opt.hlsearch = true

opt.cursorline = true

opt.signcolumn = "yes"
