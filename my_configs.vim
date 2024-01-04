" Tabs
set shiftwidth=2
set tabstop=2

" Toggle line numbers
map <leader>u :set number!

" Disable folds
set nofoldenable

" Color Scheme
colorscheme dracula

" Lightline
let g:lightline = {
      \ 'colorscheme': 'dracula',
      \ 'active': {
      \   'left': [ ['mode', 'paste'],
      \             ['fugitive', 'readonly', 'filename', 'modified'] ],
      \   'right': [ [ 'lineinfo' ], ['percent'], ['cwd' , 'fileformat', 'fileencoding', 'filetype' ] ]
      \ },
      \ 'component': {
      \   'cwd': '%{fnamemodify(getcwd(), ":t")}',
      \   'readonly': '%{&filetype=="help"?"":&readonly?"🔒":""}',
      \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
      \   'fugitive': '%{exists("*FugitiveHead")?FugitiveHead():""}'
      \ },
      \ 'component_visible_condition': {
      \   'readonly': '(&filetype!="help"&& &readonly)',
      \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
      \   'fugitive': '(exists("*FugitiveHead") && ""!=FugitiveHead())'
      \ },
      \ 'separator': { 'left': ' ', 'right': ' ' },
      \ 'subseparator': { 'left': ' ', 'right': ' ' }
      \ }

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
au BufReadPost zprofile set syntax=zsh
au BufReadPost .zprofile set syntax=zsh

" Fix background color
let &t_ut=''

cnoreabbrev Ack Ack!

" Remap
nnoremap <leader>a :Ack!<Space>
nnoremap <leader>r :!%:p





