set number tabstop=2 shiftwidth=2 expandtab

let mapleader = ","

" required for vimwiki
set nocompatible
filetype plugin on
syntax on

set autowrite " used with vim-go to run :Go* without saving

set undofile " Maintain undo history between sessions
set backup
set backupdir=/tmp// " https://medium.com/@Aenon/vim-swap-backup-undo-git-2bf353caa02f
set directory=/tmp//
set undodir=/tmp//

call plug#begin('~/.vim/plugged')

Plug 'vimwiki/vimwiki'
Plug 'fatih/vim-go'

call plug#end()

" vimiki
let g:vimwiki_list = [{'path': '~/Dropbox/Notes/', 'syntax': 'markdown', 'ext': '.md'}]

" vim-go
" Suggested shortcuts
" Jumpt between errors in quicklist
map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>

autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>r  <Plug>(go-run)

let g:go_fmt_command = "goimports"
