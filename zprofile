export EDITOR=vim

if [[ -f "$HOME/.zprofile_local" ]]; then
  source "$HOME/.zprofile_local"
fi

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
