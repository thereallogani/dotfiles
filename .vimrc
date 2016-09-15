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
set shiftwidth=4   " number of spaces to use for autoindenting
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
set noswapfile
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
      \ 'colorscheme': 'wombat',
      \ }

filetype indent on
autocmd FileType js set shiftwidth=2
autocmd FileType html set shiftwidth=2

nnoremap <silent> <C-l> :nohl<CR><C-l>

colorscheme molokai
