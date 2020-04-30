set nocompatible              " be iMproved, required;

filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'                  " Plugin manager
Plugin 'ctrlpvim/ctrlp.vim'                    " Fuzzy finder
Plugin 'tpope/vim-vinegar'                     " Project Folder drawer
Plugin 'scrooloose/nerdtree'                   " Project Folder viewer
Plugin 'scrooloose/nerdcommenter'              " For commenting
Plugin 'terryma/vim-multiple-cursors'          " Multiple cursors like sublime
Plugin 'msanders/snipmate.vim'                 " Snippets
Plugin 'tpope/vim-surround'
Plugin 'jwalton512/vim-blade'
Plugin 'takac/vim-hardtime'                    " Enable vim hard mode
Plugin 'christoomey/vim-system-copy'           " System copy
Plugin 'itchyny/lightline.vim'
Plugin 'prettier/vim-prettier'                 " Prettier plugin for vim | not frequently used
Plugin 'w0rp/ale'                              " Asynchronous Lint Engine 
Plugin 'stephpy/vim-php-cs-fixer'              " PHP CS Fixer plugin | not frequently used

Plugin 'maximbaz/lightline-ale'                " Status bar at bottom 
Plugin 'miyakogi/seiya.vim'                    " For transparent backkground
Plugin 'joshdick/onedark.vim'                  " One Dark theme

Plugin 'c9s/phpunit.vim'                       " PHPUnit pluigin | not frequently used
Plugin 'leafgarland/typescript-vim'            " Typescript specific
Plugin 'burnettk/vim-angular'                  " Angular specific 

Plugin 'itchyny/vim-gitbranch'                 " Show git branch in ligtline (status bar)

" " The following are examples of different formats supported.
" " Keep Plugin commands between vundle#begin/end.

" All of your Plugins must be added before the following line
call vundle#end()            " required
" filetype plugin indent on    " required

