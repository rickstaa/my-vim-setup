"" My Vim configuration file
" http://github.com/https://github.com/rickstaa/.vim
set encoding=utf-8  " The encoding displayed.
set fileencoding=utf-8  " The encoding written to file.

" Vundle CODE
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'itchyny/lightline.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'jiangmiao/auto-pairs'
Plugin 'rdnetto/YCM-Generator'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-utils/vim-husk'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-obsession'
Plugin 'tpope/vim-sensible'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"" Neccesairy plugin options
" Lightline
set noshowmode
set laststatus=2

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"" USER DEFINED CODE

"" Theme settings
" Colors
colorscheme molokai

" Fonts
set guifont=Menlo\ Regular:h18

"" GUI settings
set lines=35 columns=150
set colorcolumn=90
set number
set hidden
set history=100
set nohlsearch

"" Editor settings
filetype indent on
set nowrap
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set autoindent

" set cursorline
hi cursorline cterm=none term=none
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
highlight CursorLine guibg=#303000 ctermbg=234

"" Keybindings
let mapleader=","

" Remaped key commands
nnoremap <leader>w :w<cr>
nnoremap <leader>q :qa!<cr>
inoremap jj <ESC>

" NerdTree key commands
" NerdTree key commands
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
