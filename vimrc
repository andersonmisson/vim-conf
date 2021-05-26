call plug#begin('~/.vim/plugged')

" Aqui vai os plugins
"
" Plugin inicial De Teste
Plug 'terroo/vim-simple-emoji'
Plug 'matsuuu/pinkmare'
Plug 'ycm-core/YouCompleteMe'
Plug 'jiangmiao/auto-pairs'

call plug#end()


colorscheme pinkmare
hi! MatchParen cterm=NONE,bold gui=NONE,bold guibg=#87c095 guifg=NONE

set nu!
set mouse=a
set title
set cursorline
set encoding=utf-8

" YouCompleteMe
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
set completeopt-=preview
let g:ycm_show_diagnostics_ui = 0

let g:ycm_language_server =
  \ [{
  \   'name': 'ccls',
  \   'cmdline': [ 'ccls' ],
  \   'filetypes': [ 'c', 'cpp', 'cc', 'h', 'hpp' ],
  \   'project_root_files': [ '.ccls-root', 'compile_commands.json' ]
  \ }]
let g:ycm_clangd_args=['--header-insertion=never']
