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
  zgen oh-my-zsh plugins/git

  # Other plugins
  zgen load zsh-users/zsh-syntax-highlighting
  zgen load zsh-users/zsh-autosuggestions

  # Spaceship Prompt
  zgen load spaceship-prompt/spaceship-prompt spaceship

  # generate the init script from plugins above
  zgen save
fi
