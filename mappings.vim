"-------------Mappings--------------"

"Make it easy to edit the Vimrc file.
command Q q
nmap <Leader>e :tabedit 
nmap <Leader>ee :tabedit %:h
nmap <Leader>sc :so ~/.vimrc<cr>
nmap <Leader>lc :tabedit app/Http/Controllers/
vmap mre "tdGofunction name() {<cr>}<esc>k"tp<esc>kw
nmap mw df>i['<esc>ea']<esc>
nmap me d2li-><esc>eld2l
"nmap <Leader>ev :tabedit $MYVIMRC<cr>
nmap <Leader>ev :tabedit ~/.vim_rc/
nmap <Leader>eb :tabedit ~/.bash_profile<cr>
nmap <Leader>ep :tabedit ~/.vim/plugins.vim<cr>
nmap <Leader>es :tabedit ~/.vim/snippets/php.snippets<cr>
nmap <Leader><Leader>t :tabedit ~/todo<cr>
nmap <Leader>f1 :Prettier<cr>
nmap <Leader>c ciw

nmap <Leader>ej :tabedit public/assets/js/
nmap <Leader>ec :tabedit app/Http/Controllers/
nmap <Leader>eb :tabedit resources/views/
nmap <Leader>ff /function 

nnoremap <silent><leader>pcd :call PhpCsFixerFixDirectory()<CR>
nnoremap <silent><leader>f2 :call PhpCsFixerFixFile()<CR>

nmap <Leader>a 0w

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



"----- Laravel OTP project specific ----"
nmap <Leader>o1 :tabedit app/Http/Controllers/OrdersController.php<cr>
nmap <Leader>o2 :tabedit app/Http/Controllers/ApiController.php<cr>



nmap <Leader>m :CtrlP <cr>company/mailbox/
nmap <Leader>x :CtrlP <cr>controllers/company/


nmap <Leader>d1 :tabedit app/Http/Controllers/Company/SitesController.php<cr>

nmap <Leader>j1 :tabedit assets/js/company.js<cr>
nmap <Leader>j2 :tabedit assets/js/site-settings.js<cr>

" Views
nmap <Leader>v1 :tabedit resources/views/company/sites/settings.blade.php<cr>

" Tests
nmap <Leader>t1 :tabedit tests/Company/ProjectTest.php<cr>
nmap <Leader>t2 :tabedit tests/Agent/ProjectTest.php<cr>

" Routes
nmap <Leader>r1 :tabedit routes/company.php<cr>
nmap <Leader>r2 :tabedit routes/agent.php<cr>


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
