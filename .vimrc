"-------------Auto-Commands--------------"
"
""Automatically source the Vimrc file on save.
"augroup autosourcing
"    autocmd!
"    autocmd BufWritePost .vimrc source %
"augroup END

" adding sources

so ~/.vim_rc/plugins.vim
so ~/.vim_rc/main.vim
so ~/.vim_rc/mappings.vim
so ~/.vim_rc/plugin-config.vim
so ~/.vim_rc/language/all.vim
