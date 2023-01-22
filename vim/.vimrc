set hidden

set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" breaking bad habits
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

set expandtab
set tabstop=2
set shiftwidth=2
set hlsearch
set tw=80

set nocompatible
set backspace=indent,eol,start

" Helpful information: cursor position in bottom right, line numbers on left
set ruler
set number

" Enable filetype detection and syntax hilighting
syntax on
filetype on
filetype indent on
filetype plugin on

" Indent as intelligently as vim knows how
set smartindent

" Show multicharacter commands as they are being typed
set showcmd
