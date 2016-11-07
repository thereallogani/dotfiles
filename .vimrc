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
Plug 'nvie/vim-flake8'
Plug 'scwood/vim-hybrid'
Plug 'chriskempson/tomorrow-theme'
call plug#end()

au BufReadPost * if line("'\'") > 1 && line("'\'") <= line("$") | exe "normal! g'\"" | endif

map <C-n> :NERDTreeToggle<CR>
map <C-i> :CtrlPBuffer<CR>

set hidden
set nocompatible
set nowrap
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
set nobackup
set visualbell
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
      \ 'colorscheme': 'seoul256',
      \ }

filetype indent on
autocmd FileType javascript setlocal ts=2 sts=2 sw=2
autocmd FileType html setlocal shiftwidth=2
autocmd FileType python setlocal shiftwidth=4
autocmd FileType go setlocal shiftwidth=4
autocmd BufWritePost *.py call Flake8()

" flake8
let g:flake8_show_quickfix=1
let g:flake8_show_in_gutter=1

nnoremap <silent> <C-l> :nohl<CR><C-l>

set background=dark
colorscheme hybrid
hi LineNr ctermfg=grey
