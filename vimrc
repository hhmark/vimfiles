""
"" Thanks:
""   Mislav Marohnić <github.com/mislav>
""   Gary Bernhardt <github.com/garybernhardt> 
""

set nocompatible

call pathogen#infect()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" BASIC EDITING CONFIGURATION
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set encoding=utf-8
set hidden

"" Syntax and colour
filetype plugin indent on
syntax enable
colorscheme molokai

"" Editor UI
set number
set cursorline
set ruler
set showcmd
set scrolloff=3
set showmatch
set splitright
set splitbelow

"" Whitespace
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab
set backspace=indent,eol,start
set autoindent
set list
set listchars=tab:\ \ ,trail:⋅

"" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

"" Temporary files
set backupdir=~/.vim/.tmp,~/.tmp,/var/tmp,/tmp
set directory=~/.vim/.tmp,~/.tmp,/var/tmp,/tmp

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CUSTOM AUTOCMDS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("autocmd")
  " Use real tabs in Makefiles
  au FileType make set noexpandtab

  " Remember cursor location in file, except for git commit message
  au BufReadPost *
    \ if &filetype != 'gitcommit' && line("'\"") > 1 && line("'\"") <= line("$") |
    \ exe "normal! g'\"" |
    \ endif
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MISC KEY MAPS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader=","

" Clear search buffer with return key
:nnoremap <CR> :nohlsearch<cr>

" Open files in directory of current file
cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>e :e  %%
map <leader>sp :sp %%
map <leader>vs :vs %%

" Move around splits with <c-hjkl>
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
