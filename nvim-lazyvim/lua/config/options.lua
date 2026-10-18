-- Ported from my_configs.vim
local opt = vim.opt

opt.shiftwidth = 2
opt.tabstop = 2

-- Open folds by default
opt.foldlevelstart = 99
require("config.filetypes")

-- Silence :checkhealth warnings for unused remote-plugin providers
vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_python3_provider = 0
vim.g.loaded_ruby_provider = 0
