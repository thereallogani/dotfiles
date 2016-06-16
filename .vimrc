set nocompatible

filetype off

execute pathogen#infect()

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

set laststatus=2
set expandtab
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

filetype indent on

colorscheme molokai
