set nocompatible              " be iMproved, required;

filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-vinegar'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'msanders/snipmate.vim'
Plugin 'tpope/vim-surround'
Plugin 'jwalton512/vim-blade'
Plugin 'takac/vim-hardtime'
Plugin 'christoomey/vim-system-copy'
Plugin 'itchyny/lightline.vim'
Plugin 'prettier/vim-prettier'
Plugin 'w0rp/ale'
Plugin 'stephpy/vim-php-cs-fixer'

Plugin 'maximbaz/lightline-ale'
Plugin 'miyakogi/seiya.vim'
Plugin 'joshdick/onedark.vim'

Plugin 'c9s/phpunit.vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'burnettk/vim-angular'


" " The following are examples of different formats supported.
" " Keep Plugin commands between vundle#begin/end.

" All of your Plugins must be added before the following line
call vundle#end()            " required
" filetype plugin indent on    " required

