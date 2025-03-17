" Minimal Vim Configuration

" => General settings
set nocompatible                " Use Vim settings, not Vi
syntax enable                   " Enable syntax highlighting

" => Basic improvements
set number                      " Show line numbers
highlight LineNr ctermfg=grey   " Set line numbers to grey color
set ruler                       " Show cursor position
set showmatch                   " Show matching brackets
set incsearch                   " Incremental search
set hlsearch                    " Highlight search results
set ignorecase                  " Ignore case when searching
set smartcase                   " Be smart about cases when searching

" => Indentation
set autoindent                  " Auto indent
set smartindent                 " Smart indent
set expandtab                   " Use spaces instead of tabs
set tabstop=4                   " 1 tab = 4 spaces
set shiftwidth=4                " 1 indentation level = 4 spaces

" => File handling
set autoread                    " Reload files changed outside vim
set encoding=utf8               " UTF-8 encoding
set fileformats=unix,dos,mac    " Use Unix as standard file type

" => Interface enhancements
set laststatus=2                " Always show status line
set wildmenu                    " Better command-line completion
set scrolloff=3                 " Keep 3 lines visible above/below cursor
map <leader>h :help index<cr>   " Show all commands with ,h

" => Key mappings
let mapleader = ","             " Set comma as leader key
map <leader>w :w!<cr>           " Fast save with ,w
map <space> /                   " Space to search forward

" => Backup management
set nobackup                    " No backup files
set noswapfile                  " No swap files

" => Return to last edit position when opening files
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
