"-------------Plugins--------------"
"/
"/ CtrlP
"/
"
" Ignore folders
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'
" make open in new tab (ctrl + t) default behaviour
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<c-t>'],
    \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
    \ }


"/
"/ NERDTree
"/
let NERDTreeHijackNetrw = 0
""Make NERDTree easier to toggle.

let NERDSpaceDelims=1

"/
"/ ALE Linter
"/
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0
let g:ale_sign_column_always = 1
let g:airline#extensions#ale#enabled = 1 " might not be required


"/
"/ Lightline (status bar)
"/
let g:lightline = {}
let g:lightline.colorscheme = 'jellybeans'

let g:lightline.active = { 'right': [
      \  [ 'linter_errors', 'linter_warnings', 'linter_ok' ],
      \  [ 'lineinfo' ],
      \  [ 'percent' ],
      \  [ 'fileformat', 'fileencoding', 'filetype', 'charvaluehex' ]
      \  ]}

let g:lightline.active.left = [
      \ [ 'mode', 'paste' ],
      \ [ 'gitbranch', 'readonly', 'filename', 'modified' ] 
      \ ]

" plugin for showing branch
let g:lightline.component_function = {
      \   'gitbranch': 'gitbranch#name'
      \ }


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

