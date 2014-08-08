" ; => : {{{
nmap ; :
" }}}
" quick change filetype {{{
map <leader>ft  :set filetype=
map <leader>ffp :set filetype=python<CR>
" }}}
" fold/unfold {{{
nmap <space> za
vmap <space> za
" }}}
" sudo write {{{
cmap W!! w !sudo tee % >/dev/null
" }}}
" toggle line number {{{
noremap <leader>   <1>      :set number!<CR>
noremap <leader> <C-1>      :set relativenumber!<CR>
inoremap <silent>   <F1> <ESC>:set number!<CR>a
inoremap <silent> <C-F1> <ESC>:set relativenumber!<CR>a
inoremap <silent> <C-F1> <ESC>:set relativenumber!<CR>a
inoremap <silent> ;; <ESC>A;<ESC>
" }}}
