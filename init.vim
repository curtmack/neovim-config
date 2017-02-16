"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/cmackie/Sources/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/cmackie/Sources/dein')
  call dein#begin('/home/cmackie/Sources/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/home/cmackie/Sources/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('airblade/vim-gitgutter')

  call dein#add('chriskempson/base16-vim')

  call dein#add('easymotion/vim-easymotion')

  call dein#add('godlygeek/tabular')

  call dein#add('haya14busa/vim-easyoperator-line')

  call dein#add('hecal3/vim-leader-guide')

  call dein#add('jceb/vim-orgmode')

  call dein#add('jiangmiao/auto-pairs')

  call dein#add('junegunn/fzf.vim')

  call dein#add('mattn/emmet-vim')

  call dein#add('scrooloose/nerdcommenter')
  call dein#add('scrooloose/nerdtree')

  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')

  call dein#add('tpope/vim-eunuch')
  call dein#add('tpope/vim-abolish')
  call dein#add('tpope/vim-eunuch')
  call dein#add('tpope/vim-fugitive')
  call dein#add('tpope/vim-repeat')
  call dein#add('tpope/vim-sensible')
  call dein#add('tpope/vim-speeddating')
  call dein#add('tpope/vim-surround')
  call dein#add('tpope/vim-unimpaired')

  call dein#add('unblevable/quick-scope')

  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')

  call dein#add('vim-scripts/groovyindent-unix')

  " You can specify revision/branch/tag.
  "call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

" base16
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  colorscheme base16-flat
endif

" Airline
let g:airline_theme='base16'

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" Quick-scope
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

" NERDCommenter
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1

" General vim options
set nu
set rnu

set noexpandtab
set copyindent
set preserveindent
set softtabstop=0
set shiftwidth=4
set tabstop=4

set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<,space:␣
set nolist " require a sequence to turn it on - it's cumbersome

let mapleader="\<SPACE>"
nnoremap <SPACE> <Nop>

let maplocalleader=","
nnoremap , <Nop>

" Set selection colors so it's more readable
hi Visual ctermbg=19 ctermfg=white

" Fix the issue with matched paren
hi MatchParen cterm=none ctermbg=cyan ctermfg=white

" Make whitespace characters a reasonable color
hi NonText ctermfg=19
hi SpecialKey ctermfg=19

let $NVIM_TUI_ENABLE_CURSOR_SHAPE=0
