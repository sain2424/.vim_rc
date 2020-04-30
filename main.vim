let mapleader = ","
let g:mapleader = ","
set autoindent
set cindent
set nocompatible   " Disable vi-compatibility
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
set t_Co=256 " Explicitly tell Vim that the terminal supports 256 colors

set showtabline=2               " setting tabline display 'always'
set showmode                    " always show what mode we're currently editing in
set nowrap                      " don't wrap lines
set tabstop=2                   " a tab is two spaces
set smarttab
set tags=tags
set softtabstop=2               " when hitting <BS>, pretend like a tab is removed, even if spaces
set expandtab                   " expand tabs by default (overloadable per file type later)
set shiftwidth=2                " number of spaces to use for autoindenting
set shiftround                  " use multiple of shiftwidth when indenting with '<' and '>'
set backspace=indent,eol,start  " allow backspacing over everything in insert mode
set copyindent                  " copy the previous indentation on autoindenting
set number                      " always show line numbers
set relativenumber              " set relative number
set ignorecase                  " ignore case when searching
set smartcase                   " ignore case if search pattern is all lowercase,
set timeout timeoutlen=200 ttimeoutlen=100
set visualbell           " don't beep
set noerrorbells         " don't beep
set guifont=Fira\ Code:h12
set guioptions-=e 
syntax enable
highlight clear SignColumn

set nosmd   " short for 'showmode'
"set noru    " short for 'ruler'

" Enable filetype
filetype on
filetype plugin on
filetype indent on


"-------------Theme--------------"
colorscheme jellybeans
" colorscheme atom-dark-256
let g:jellybeans_overrides = {
            \    'Todo': { 'guifg': '303030', 'guibg': 'f0f000',
            \              'ctermfg': 'Black', 'ctermbg': 'Yellow',
            \              'attr': 'bold' },
            \}
let g:jellybeans_use_lowcolor_black = 0
let g:prettier#config#trailing_comma = 'none'

" set tags=~/.ctags

"Add simple highlight removal.
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_quit_key='<Esc>'

"-------------Linter--------------"
let g:ale_sign_column_always = 1
let g:airline#extensions#ale#enabled = 1

"-------------Split Management--------------"
set splitbelow                              "Make splits default to below...
set splitright                              "And to the right. This feels more natural.

"-------------Search--------------"
set hlsearch
set incsearch
