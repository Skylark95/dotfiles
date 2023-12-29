# load zgen
source "${HOME}/.zgen/zgen.zsh"

# load env
source "$HOME/.env"
if [[ -f "$HOME/.env_local" ]]; then
  source "$HOME/.env_local"
fi

# load aliases
source "$HOME/.alias"
if [[ -f "$HOME/.alias_local" ]]; then
  source "$HOME/.alias_local"
fi

# load functions
source "$HOME/.functions"
if [[ -f "$HOME/.functions_local" ]]; then
  source "$HOME/.functions_local"
fi

# if the init script doesn't exist
if ! zgen saved; then
  zgen oh-my-zsh

  # Oh-My-Zsh plugins
  zgen oh-my-zsh plugins/aliases
  zgen oh-my-zsh plugins/aws
  zgen oh-my-zsh plugins/copypath
  zgen oh-my-zsh plugins/git
  zgen oh-my-zsh plugins/gitignore
  zgen oh-my-zsh plugins/fzf
  zgen oh-my-zsh plugins/mvn
  zgen oh-my-zsh plugins/node
  zgen oh-my-zsh plugins/npm
  zgen oh-my-zsh plugins/pip
  zgen oh-my-zsh plugins/python
  zgen oh-my-zsh plugins/terraform
  zgen oh-my-zsh plugins/vi-mode
  zgen oh-my-zsh plugins/vscode

  # Other plugins
  zgen load paulirish/git-open
  zgen load zsh-users/zsh-syntax-highlighting
  zgen load zsh-users/zsh-autosuggestions

  # Spaceship Prompt
  zgen load spaceship-prompt/spaceship-vi-mode spaceship-vi-mode.plugin.zsh main
  zgen load spaceship-prompt/spaceship-prompt spaceship

  # generate the init script from plugins above
  zgen save
fi

# spaceship-vi-mode
eval spaceship_vi_mode_enable

