let mapleader = ","
let g:mapleader = ","
set autoindent
set cindent
set nocompatible   " Disable vi-compatibility
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
let g:Powerline_theme = 'solarized256'
    let g:Powerline_colorscheme = 'solarized256'
set t_Co=256 " Explicitly tell Vim that the terminal supports 256 colors
set guioptions-=l                                                       "Disable Gui scrollbars.
set guioptions-=L
set guioptions-=r
set guioptions-=R
set guioptions-=T " Removes top toolbar
set guioptions-=r " Removes right hand scroll bar
" set go-=L " Removes left hand scroll bar
set linespace=15
if has('gui_running')
    colorscheme jellybeans
    set macligatures                " Mac specific symbols for macvim
else
    colorscheme jellybeans
    " colorscheme atom-dark-256
endif

" Jellybeans
let g:jellybeans_overrides = {
            \    'Todo': { 'guifg': '303030', 'guibg': 'f0f000',
            \              'ctermfg': 'Black', 'ctermbg': 'Yellow',
            \              'attr': 'bold' },
            \}
let g:jellybeans_use_lowcolor_black = 0

set showtabline=2

set showmode                    " always show what mode we're currently editing in
set nowrap                      " don't wrap lines
set tabstop=2                   " a tab is four spaces
set smarttab
set tags=tags
set softtabstop=2               " when hitting <BS>, pretend like a tab is removed, even if spaces
set expandtab                   " expand tabs by default (overloadable per file type later)
set shiftwidth=2                " number of spaces to use for autoindenting
set shiftround                  " use multiple of shiftwidth when indenting with '<' and '>'
set backspace=indent,eol,start  " allow backspacing over everything in insert mode
set copyindent                  " copy the previous indentation on autoindenting
set number                      " always show line numbers
set relativenumber
set ignorecase                  " ignore case when searching
set smartcase                   " ignore case if search pattern is all lowercase,
set timeout timeoutlen=200 ttimeoutlen=100
set visualbell           " don't beep
set noerrorbells         " don't beep
set autowrite  "Save on buffer switch
set guifont=Fira\ Code:h12
set mouse=a
" set macligatures                " Mac specific symbols for macvim
set guioptions-=e 
syntax enable
let g:ale_sign_column_always = 1
let g:airline#extensions#ale#enabled = 1
let g:ale_linters = {
\   'javascript': ['eslint'],
\}
let g:php_cs_fixer_level = "psr2"
highlight clear SignColumn
set tags=~/.ctags

"Add simple highlight removal.
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_quit_key='<Esc>'


"-------------Split Management--------------"
set splitbelow                              "Make splits default to below...
set splitright                              "And to the right. This feels more natural.


"-------------Search--------------"
set hlsearch
set incsearch

"/
""/ NERDTree
"/
let NERDTreeHijackNetrw = 0
"
""Make NERDTree easier to toggle.


"-------------Plugins--------------"
"/
"/ CtrlP
"/
" Ignore folders
let g:ctrlp_custom_ignore = 'node_modules\DS_Store\|git'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'
" make open in new tab (ctrl + t) default behaviour
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<c-t>'],
    \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
    \ }

" Press Ctrl-Tab to switch between open tabs (like browser tabs) to 
" the right side. Ctrl-Shift-Tab goes the other way.
noremap <C-Tab> :tabnext<CR>
noremap <C-S-Tab> :tabprev<CR>
" Switch to specific tab numbers with Command-number
noremap <D-1> :tabn 1<CR>
noremap <D-2> :tabn 2<CR>
noremap <D-3> :tabn 3<CR>
noremap <D-4> :tabn 4<CR>
noremap <D-5> :tabn 5<CR>
noremap <D-6> :tabn 6<CR>
noremap <D-7> :tabn 7<CR>
" Command-0 goes to the last tab
noremap <D-0> :tablast<CR>

noremap! <C-h> <Left>
noremap! <C-j> <Down>
noremap! <C-k> <Up>
noremap! <C-l> <Right>

set nosmd   " short for 'showmode'
"set noru    " short for 'ruler'

let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ }

let NERDSpaceDelims=1
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0

filetype on
filetype plugin on
filetype indent on

let g:lightline.active = { 'right': [
      \  [ 'linter_errors', 'linter_warnings', 'linter_ok' ],
      \  [ 'lineinfo' ],
      \  [ 'percent' ],
      \  [ 'fileformat', 'fileencoding', 'filetype', 'charvaluehex' ]
      \  ]}
let g:lightline.component_expand = {
      \  'linter_warnings': 'lightline#ale#warnings',
      \  'linter_errors': 'lightline#ale#errors',
      \  'linter_ok': 'lightline#ale#ok',
      \ }

let g:lightline.component_type = {
      \     'linter_warnings': 'warning',
      \     'linter_errors': 'error',
      \     'linter_ok': 'success',
      \ }
