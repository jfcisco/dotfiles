" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
if has('filetype')
  filetype indent plugin on
endif

" Remap leader key to comma
let mapleader = ","

" Save shortcut
nmap <leader>w :w!<cr>

" Buffer operations
map <leader>l :bnext<cr>
map <leader>h :bprevious<cr>

" Enable Hidden Mode
set hidden

" Line numbers (hybrid)
" set number relativenumber
set number

" Smart relative: use absolute in insert mode
augroup numbertoggle
	autocmd!
	autocmd BufEnter,FocusGained,InsertLeave,WinEnter *
		\ if &nu && mode() != "i" | set rnu | endif
	autocmd BufLeave,FocusLost,InsertEnter,WinLeave *
		\ if &nu | set nornu | endif
augroup END

" Highlight searches
set hlsearch

map <silent> <leader><cr> :noh<cr>

" Smart case behavior: ignorecase until capital in query
set ignorecase
set smartcase

" Preserve indentation
set autoindent
set smartindent

" Enable wrap
set wrap

" Use hard tabs, four spaces wide
set shiftwidth=4
set tabstop=4

" Map Y to yank until EOL
map Y y$

" Enable syntax highlighting
if has('syntax')
	syntax on
endif

" Enable mouse usage
if has('mouse')
	set mouse=a
endif

