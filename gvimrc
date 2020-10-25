set guioptions-=e
set guioptions-=m
set guioptions-=r
set guioptions-=L
set guioptions-=T

set guifont=Consolas:h10:b
set renderoptions=type:directx

set columns=120
set lines=30

" Allow opening the system menu for the Vim window
noremap <silent> <M-Space> :simalt ~<CR>
inoremap <silent> <M-Space> <C-O>:simalt ~<CR>
cnoremap <silent> <M-Space> <C-C>:simalt ~<CR>
