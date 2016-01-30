set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'pangloss/vim-javascript'
"Plugin 'nathanaelkane/vim-indent-guides'"
":autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3"
":autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4"
Plugin 'Yggdroot/indentLine'

Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/syntastic'
" This does what it says on the tin. It will check your file on open too, not just on save.
" You might not want this, so just leave it out if you don't.
let g:syntastic_check_on_open=1
execute pathogen#infect()

"Plugin 'Valloric/YouCompleteMe'"
" These are the tweaks I apply to YCM's config, you don't need them but they might help."
" YCM gives you popups and splits by default that some people might not like, so these should tidy it up a bit for you."
"let g:ycm_add_preview_to_completeopt=0"
"let g:ycm_confirm_extra_conf=0"
"set completeopt-=preview"
"Plugin 'marijnh/tern_for_vim'"

Plugin 'scrooloose/nerdTree'
autocmd VimEnter * NERDTree

Plugin 'lornix/vim-scrollbar'
Bundle 'yonchu/accelerated-smooth-scroll'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"set t_Co=256
"syntax on
syntax enable
colorscheme monokai

" Set the tab behaviour "
:set expandtab
:set tabstop=2
:set shiftwidth=2

" Let the delete work "
set backspace=indent,eol,start

" Set line number "
:set number
:set numberwidth=4

:let g:syntastic_javascript_checkers=['jshint', 'jscs']
