"-------------Mappings--------------"

"Make it easy to edit the Vimrc file.
" Both Q and q will be able to quit
command! Q q
" Both Q and q will be able to quit
nmap <Leader>e :tabedit 
" Get relative path of folder
nmap <Leader>ef :tabedit %:h
" Source .vimrc
nmap <Leader>sc :so ~/.vimrc<cr>
" Refactor selected lines to new function
vmap mre "tdGofunction name() {<cr>}<esc>k"tp<esc>kw
" Convert php object value to string value
nmap mw df>i['<esc>ea']<esc>  
nmap me d2li-><esc>eld2l

" Edit .vimrc
nmap mev :tabedit $MYVIMRC<cr>
nmap <Leader>ev :tabedit ~/.vim_rc/
nmap <Leader>es :tabedit ~/.vim/snippets/php.snippets<cr>
" Open todo file from root directory
nmap mt :tabedit ~/todo<cr>

" find function
nmap <Leader>ff /function 

nmap zj :CtrlP<cr>.ts<Left><Left><Left>
nmap zh :CtrlP<cr>.html<Left><Left><Left><Left><Left><Left>

"-------------CSS--------------"
" Adds important
nmap zi f;i !important<esc>

nmap <Leader>a 0w

nmap <Leader>s :w<cr>
nmap <Leader>b :buffers<cr>
" nmap <Leader><Leader>d :bd<cr>
" imap <C-a> <Esc>A
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


"We'll set simpler mappings to switch between splits.
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

nmap <Leader>t :!phpunit %<cr>
nmap <Leader>f :set fu<cr>
nmap <Leader>g :set nofu<cr>
nmap <C-p> :CtrlP<cr>
nmap <C-t> :CtrlPBufTag<cr>
nmap zn :NERDTreeToggle<cr>

nmap <Leader><space> :nohlsearch<cr>

"----Laravel Specific----"
nmap <Leader><Leader>l :tabedit storage/logs/laravel.log<cr>
nmap <Leader><Leader>e :tabedit .env<cr>

nmap <Leader>l1 :tabedit routes/api.php<cr>
map <Leader>c :.w !pbcopy<CR><CR>
map <Leader>v :r !pbpaste<CR>
