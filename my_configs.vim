" Tabs
set shiftwidth=2
set tabstop=2

" Toggle line numbers
map <leader>u :set number!

" Disable folds
set nofoldenable

" Color Scheme
colorscheme dracula

" Syntax Highlighting
au BufReadPost alias set syntax=zsh
au BufReadPost .alias set syntax=zsh
au BufReadPost alias_local set syntax=zsh
au BufReadPost .alias_local set syntax=zsh
au BufReadPost env set syntax=zsh
au BufReadPost .env set syntax=zsh
au BufReadPost env_local set syntax=zsh
au BufReadPost .env_local set syntax=zsh
au BufReadPost functions set syntax=zsh
au BufReadPost .functions set syntax=zsh
au BufReadPost functions_local set syntax=zsh
au BufReadPost .functions_local set syntax=zsh
au BufReadPost gitconfig set syntax=gitconfig
au BufReadPost gitconfig_local set syntax=gitconfig
au BufReadPost .gitconfig_local set syntax=gitconfig

" Fix background color
let &t_ut=''

cnoreabbrev Ack Ack!

" Remap
nnoremap <leader>a :Ack!<Space>
nnoremap <leader>r :!%:p





