"-------------Mappings--------------"

"Make it easy to edit the Vimrc file.
command Q q
nmap <Leader>e :tabedit 
nmap <Leader>ee :tabedit %:h
nmap <Leader>sc :so ~/.vimrc<cr>
" Refactor selected lines to new function
vmap mre "tdGofunction name() {<cr>}<esc>k"tp<esc>kw
" Convert php object value to string value
nmap mw df>i['<esc>ea']<esc>  
nmap me d2li-><esc>eld2l
"nmap <Leader>ev :tabedit $MYVIMRC<cr>
nmap <Leader>ev :tabedit ~/.vim_rc/
nmap <Leader>es :tabedit ~/.vim/snippets/php.snippets<cr>
nmap <Leader><Leader>t :tabedit ~/todo<cr>
nmap <Leader>f1 :Prettier<cr>

nmap <Leader>ff /function 

nnoremap <silent><leader>pcd :call PhpCsFixerFixDirectory()<CR>
nnoremap <silent><leader>f2 :call PhpCsFixerFixFile()<CR>

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

"----Laravel Specific----"
nmap <Leader><Leader>l :tabedit storage/logs/laravel.log<cr>
nmap <Leader><Leader>e :tabedit .env<cr>

nmap <Leader><space> :nohlsearch<cr>


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
