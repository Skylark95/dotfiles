export EDITOR=vim

if [[ -f "$HOME/.zprofile_local" ]]; then
  source "$HOME/.zprofile_local"
fi

# node
if [[ -d "$HOME/.npm-global" ]]; then
  export PATH=~/.npm-global/bin:$PATH
fi

# pyenv
if [[ -d "$HOME/.pyenv" ]]; then
  export PYENV_ROOT="$HOME/.pyenv"
  export PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(pyenv init --path)"
fi
