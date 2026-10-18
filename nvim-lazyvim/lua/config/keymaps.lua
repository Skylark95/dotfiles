-- Ported from my_configs.vim. LazyVim's <leader> is <space>.
-- Note: <leader>a and <leader>c are LazyVim groups (AI / code), so the old
-- `:Ack!` and number-toggle maps are dropped; use <leader>sg (grep) and <leader>un (line numbers).

-- Run the current file
vim.keymap.set("n", "<leader>r", ":!%:p", { desc = "Run current file" })
