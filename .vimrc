if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.vim/bundles')
Plug 'tpope/vim-sensible'
Plug 'itchyny/lightline.vim'
Plug 'neomake/neomake'
Plug 'scrooloose/nerdtree'
Plug 'fatih/vim-go'
Plug 'kien/ctrlp.vim'
Plug 'airblade/vim-rooter'
Plug 'scwood/vim-hybrid'
call plug#end()


set nocompatible

filetype off

map <C-n> :NERDTreeToggle<CR>
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
set hidden
set nowrap         " don't wrap lines
set tabstop=4      " a tab is four spaces
set backspace=indent,eol,start
			" allow backspace over everything in insert
set autoindent     " always set autoindenting on
set copyindent     " copy previous indentation on autoindent
set number         " always show line numbers
set shiftround     " use multiple of shiftwidth when autoindenting w </>
set showmatch " set show matching parenthesis
set ignorecase     " ignore case when searching
set smartcase      " ignore case if search pattern is all lowercase
set smarttab       " insert tabs by shiftwidth
set hlsearch       " highlight search terms
set incsearch      " show search matches as you type
set visualbell     " don't beep
set noerrorbells   " don't beep
set nobackup
set mouse=a
set t_Co=256
set timeoutlen=1000
set ttimeoutlen=0
set splitright
set colorcolumn=80

set laststatus=2
set expandtab
set scrolloff=5
let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ }

filetype indent on
autocmd FileType js setlocal sw=2 sts=2 tw=2
autocmd FileType html setlocal sw=2 sts=2 tw=2
autocmd FileType python setlocal sw=4 sts=4 tw=4
autocmd FileType go setlocal sw=4 sts=4 tw=4

nnoremap <silent> <C-l> :nohl<CR><C-l>
set background=dark
colorscheme hybrid
