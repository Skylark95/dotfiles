export EDITOR=vim

if [[ -f "$HOME/.zprofile_local" ]]; then
  source "$HOME/.zprofile_local"
fi

# node
if [[ -d "$HOME/.npm-global" ]]; then
  export PATH=~/.npm-global/bin:$PATH
fi
