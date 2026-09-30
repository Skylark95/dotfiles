-- Ported from my_configs.vim
local opt = vim.opt

opt.shiftwidth = 2
opt.tabstop = 2

-- Open folds by default
opt.foldlevelstart = 99
require("config.filetypes")
