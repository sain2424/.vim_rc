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


"-------------Mappings--------------"

"Make it easy to edit the Vimrc file.
nmap <Leader>e :e 
vmap <Leader>re "tdGofunction name() {<cr>}<esc>k"tp<esc>kw
nmap <Leader>ev :tabedit $MYVIMRC<cr>
nmap <Leader>eb :tabedit ~/.bash_profile<cr>
nmap <Leader>ep :tabedit ~/.vim/plugins.vim<cr>
nmap <Leader>es :tabedit ~/.vim/snippets/php.snippets<cr>
nmap <Leader><Leader>t :tabedit ~/todo<cr>
nmap <Leader>wt :tabedit ~/woxtasks<cr>
nmap <Leader>f1 :Prettier<cr>

nnoremap <silent><leader>pcd :call PhpCsFixerFixDirectory()<CR>
nnoremap <silent><leader>f2 :call PhpCsFixerFixFile()<CR>

nmap <Leader>a 0w

"nmap <Leader>c ciw


"Add simple highlight removal.
nmap <Leader><space> :nohlsearch<cr>
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_quit_key='<Esc>'

nmap <Leader>s :w<cr>
nmap <Leader>b :buffers<cr>
nmap <Leader><Leader>d :bd<cr>
imap <C-a> <Esc>A
nmap <Leader>1 :tabn 1<cr>
nmap <Leader>2 :tabn 2<cr>
nmap <Leader>3 :tabn 3<cr>
nmap <Leader>4 :tabn 4<cr>
nmap <Leader>5 :tabn 5<cr>
nmap <Leader>6 :tabn 6<cr>
nmap <Leader>7 :tabn 7<cr>
nmap <Leader>8 :tabn 8<cr>
nmap <Leader>9 :tabn 9<cr>
nmap <Leader>0 :tablast<cr>
nmap <Leader>w :bd<cr>
nmap <Leader>= :tabnew<cr>

nmap <Leader>qq :q<cr>
" set line break above in normal mode
nmap <Leader>x O<Esc>
" set line break below in normal mode
nmap <Leader>z o<Esc>

"----Laravel Specific----"
nmap <Leader><Leader>l :tabedit storage/logs/laravel.log<cr>
nmap <Leader><Leader>e :tabedit .env<cr>

nmap <Leader>l1 :tabedit routes/web.php<cr>
nmap <Leader>l2 :tabedit routes/api.php<cr>
nmap <Leader>l3 :tabedit app/Http/Controllers/Company/ApiController.php<cr>
nmap <Leader>l4 :tabedit assets/js/widget.js<cr>
nmap <Leader>l5 :tabedit assets/js/realtime.js<cr>


nmap <Leader>n1 :tabedit node/index.js<cr>
nmap <Leader>n2 :tabedit node/views/frame-secure.html<cr>

nmap <Leader>m1 :tabedit node/api.js<cr>
nmap <Leader>m2 :tabedit node/views/frame.html<cr>

nmap <Leader>c1 :tabedit app/Http/Controllers/Company/SitesController.php<cr>:242<cr>


"----- Laravel OTP project specific ----"
nmap <Leader>o1 :tabedit app/Http/Controllers/OrdersController.php<cr>
nmap <Leader>o2 :tabedit app/Http/Controllers/ApiController.php<cr>



nmap <Leader>m :CtrlP <cr>company/mailbox/
nmap <Leader>c :CtrlP <cr>customer/mailbox/
nmap <Leader>x :CtrlP <cr>controllers/company/


nmap <Leader>d1 :tabedit app/Http/Controllers/Company/SitesController.php<cr>

nmap <Leader>j1 :tabedit assets/js/company.js<cr>
nmap <Leader>j2 :tabedit assets/js/site-settings.js<cr>

" Views
nmap <Leader>v1 :tabedit resources/views/company/sites/settings.blade.php<cr>

" Tests
nmap <Leader>t1 :tabedit tests/Company/ProjectTest.php<cr>
nmap <Leader>t2 :tabedit tests/Agent/ProjectTest.php<cr>

" Refactoring
nmap <Leader>r1 :tabedit app/Http/Controllers/Company/SitesController.php<cr>
nmap <Leader>r2 :tabedit app/Http/Controllers/Company/AgentsController.php<cr>


"-------------Split Management--------------"
set splitbelow                              "Make splits default to below...
set splitright                              "And to the right. This feels more natural.

"We'll set simpler mappings to switch between splits.
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

"-------------Search--------------"
set hlsearch
set incsearch

"/
""/ NERDTree
"/
let NERDTreeHijackNetrw = 0
"
""Make NERDTree easier to toggle.
nmap <Leader>n :NERDTreeToggle<cr>

map <Leader>t :!phpunit %<cr>
map <Leader>f :set fu<cr>
map <Leader>g :set nofu<cr>

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
nmap <C-p> :CtrlP<cr>
"nmap <C-r> :CtrlPBufTag<cr>

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

filetype on
filetype plugin on
filetype indent on

