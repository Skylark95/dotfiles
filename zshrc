# load zgenom
source "${HOME}/.zgenom/zgenom.zsh"

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
if ! zgenom saved; then
  if [[ -f "$HOME/.zgen_before" ]]; then
    source "$HOME/.zgen_before"
  fi
  zgenom ohmyzsh

  # Oh-My-Zsh plugins
  zgenom ohmyzsh plugins/ag
  zgenom ohmyzsh plugins/aliases
  zgenom ohmyzsh plugins/aws
  zgenom ohmyzsh plugins/colored-man-pages
  zgenom ohmyzsh plugins/copypath
  zgenom ohmyzsh plugins/git
  zgenom ohmyzsh plugins/gitignore
  zgenom ohmyzsh plugins/fancy-ctrl-z
  zgenom ohmyzsh plugins/fzf
  zgenom ohmyzsh plugins/mvn
  zgenom ohmyzsh plugins/node
  zgenom ohmyzsh plugins/npm
  zgenom ohmyzsh plugins/pip
  zgenom ohmyzsh plugins/python
  zgenom ohmyzsh plugins/pyenv
  zgenom ohmyzsh plugins/ripgrep
  zgenom ohmyzsh plugins/terraform
  zgenom ohmyzsh plugins/tig
  zgenom ohmyzsh plugins/vi-mode
  zgenom ohmyzsh plugins/vscode
  zgenom ohmyzsh plugins/web-search

  # Other plugins
  zgenom load paulirish/git-open
  zgenom load zsh-users/zsh-syntax-highlighting
  zgenom load zsh-users/zsh-autosuggestions
  zgenom load so-fancy/diff-so-fancy

  # Spaceship Prompt
  zgenom load spaceship-prompt/spaceship-vi-mode spaceship-vi-mode.plugin.zsh main
  zgenom load spaceship-prompt/spaceship-prompt spaceship

  # generate the init script from plugins above
  zgenom save

  if [[ -f "$HOME/.zgen_after" ]]; then
    source "$HOME/.zgen_after"
  fi
fi

# spaceship-vi-mode
eval spaceship_vi_mode_enable

# load zhsrc_local
if [[ -f "$HOME/.zshrc_local" ]]; then
  source "$HOME/.zshrc_local"
fi
