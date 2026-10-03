-- Dotfile syntax overrides (from my_configs.vim)
local zsh = "zsh"
vim.filetype.add({
  filename = {
    alias = zsh, [".alias"] = zsh, alias_local = zsh, [".alias_local"] = zsh,
    env = zsh, [".env"] = zsh, env_local = zsh, [".env_local"] = zsh,
    functions = zsh, [".functions"] = zsh, functions_local = zsh, [".functions_local"] = zsh,
    zprofile = zsh, [".zprofile"] = zsh,
    gitconfig = "gitconfig", gitconfig_local = "gitconfig", [".gitconfig_local"] = "gitconfig",
  },
})
