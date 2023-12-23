# load zgen
source "${HOME}/.zgen/zgen.zsh"

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
