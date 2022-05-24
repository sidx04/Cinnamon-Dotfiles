"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""               
"               
"               ██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
"               ██║   ██║██║████╗ ████║██╔══██╗██╔════╝
"               ██║   ██║██║██╔████╔██║██████╔╝██║     
"               ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║     
"                ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
"                 ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝
"               
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""    

set noswapfile
set nocompatible
filetype on
filetype plugin on
filetype indent on
syntax on
set cursorline
set number
set shiftwidth=4
set tabstop=4
set expandtab
set nowrap
set ignorecase
set smartcase
set showcmd
set showmode
set showmatch
set history=1000
set incsearch
set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

set termguicolors
colorscheme tokyonight 
set encoding=UTF-8


"PLUGINS ---------------------------------------------------------------- {{{

call plug#begin('~/.vim/plugged')
	Plug 'dense-analysis/ale'
	Plug 'preservim/nerdtree'
    Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
    Plug 'navarasu/onedark.nvim'
    Plug 'morhetz/gruvbox'
    Plug 'ryanoasis/vim-devicons'
    Plug 'el1t/statusline'
    Plug 'bluz71/vim-moonfly-statusline'
   " Plug 'andweeb/presence.nvim'
   " Plug 'aurieh/discord.nvim'
call plug#end()

" }}}






" VIMSCRIPT -------------------------------------------------------------- {{{

" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" Vimscript initialization file
"
" Branch master icons
let g:moonflyWithGitBranchCharacter = 1


"Discord Plugin
" More Vimscripts code goes here.

" }}}

" STATUS LINE ------------------------------------------------------------ {{{

" Clear status line when vimrc is reloaded.
set statusline=

" Status line left side.
set statusline+=\ %F\ %M\ %Y\ %R

" Use a divider to separate the left side from the right side.
set statusline+=%=

" Status line right side.
set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\ %p%%

" Show the status on the second to last line.
set laststatus=2

" }}}

