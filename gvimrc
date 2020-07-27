set guioptions-=e
set guioptions-=m
set guioptions-=r
set guioptions-=L
set guioptions-=T

set guifont=Go_Mono:h12,Consolas:h12
set renderoptions=type:directx

" Allow opening the system menu for the Vim window
noremap <silent> <M-Space> :simalt ~<CR>
inoremap <silent> <M-Space> <C-O>:simalt ~<CR>
cnoremap <silent> <M-Space> <C-C>:simalt ~<CR>
