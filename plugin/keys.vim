" Set up global key dictionary
let g:lmap = {}

" Add dictionary for NERDCommenter
let g:lmap.c = { 'name' : 'Comments' }
" Define some descriptions
let g:lmap.c.c = ['call feedkeys("\<Plug>NERDCommenterComment")','Comment']
let g:lmap.c[' '] = ['call feedkeys("\<Plug>NERDCommenterToggle")','Toggle']

" Add menu header for GitGutter
let g:lmap.h = { 'name' : 'GitGutter' }

" File commands
let g:lmap.f = { 'name' : 'File' }

" Some shortcuts for quickly getting to config files
nnoremap <Leader>fd :e ~/.vimrc<CR>
nnoremap <Leader>fk :e ~/.vim/plugin/keys.vim<CR>
nnoremap <Leader>fD :e ~/.vim<CR>

nnoremap <Plug>(files-in-tree) :Files<CR>
nmap <Leader>ff <Plug>(files-in-tree)  

nnoremap <Plug>(files-in-git) :GFiles<CR>
nmap <Leader>fg <Plug>(files-in-git)  

nnoremap <Plug>(file-save) :w<CR>
nmap <Leader>fs <Plug>(file-save)  

nnoremap <Plug>(file-save-all) :wa<CR>
nmap <Leader>fS <Plug>(file-save-all)

nnoremap <Plug>(open-nerd-tree) :NERDTree<CR>
nmap <Leader>ft <Plug>(open-nerd-tree)

" Window commands
let g:lmap.w = { 'name' : 'Window' }

nnoremap <Plug>(window-horiz-split) :sp<CR>
nmap <Leader>ws <Plug>(window-horiz-split)

nnoremap <Plug>(window-vert-split) :vsp<CR>
nmap <Leader>wv <Plug>(window-vert-split)

nnoremap <Plug>(window-equalize) <c-w>=
nmap <Leader>w= <Plug>(window-equalize)

nnoremap <Plug>(window-two-columns) 2<c-w>|
nmap <Leader>w2 <Plug>(window-two-columns)

nnoremap <Plug>(window-three-columns) 3<c-w>|
nmap <Leader>w3 <Plug>(window-three-columns)

" Finalize vim-leader-guide
call leaderGuide#register_prefix_descriptions("<Space>", "g:lmap")
nnoremap <silent> <leader> :<c-u>LeaderGuide '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>LeaderGuideVisual '<Space>'<CR>



" Now set up vim-leader-guide for localleader
nnoremap <localleader> :<c-u>LeaderGuide  ','<CR>
vnoremap <localleader> :<c-u>LeaderGuideVisual  ','<CR>
