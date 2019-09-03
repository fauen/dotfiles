filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Load vimwiki (https://github.com/vimwiki/)
Plugin 'vimwiki/vimwiki'

" Load gruvbox colorscheme (https://github.com/morhetz/gruvbox/)
Plugin 'morhetz/gruvbox'

" Load calendar application (https://github.com/itchyny/calendar.vim)
Plugin 'itchyny/calendar.vim'

" Make sure you have all plugins before this line or it will not work
call vundle#end()		" required
filetype plugin indent on	" required

" If you are using vim on Windows (gvim) uncomment the two options below
" :set langmenu=en_US
" :let $LANG = 'en_US'

" Set default color in the vim editor
:colorscheme gruvbox
:set background=dark

" This is needed for the vimwiki package
:set nocompatible
:filetype plugin on

" Set line numbers visible by default
:set number

" This will make it visual when you hit keys like <leader> (\) like in emacs
:set showcmd

" Set default
:set splitright

" Set syntax highlighting on
:syntax on

" Set search highlighting on
" :set hlsearch

" Set incremental search highlight on
:set incsearch

" This is commands that will open up templates
" Just press for example ,html and it will read the template.html file
" and input the information within to your currect cursor position
nnoremap ,html :-1read $HOME/.vim/.vim-template.html<CR>2j7la
nnoremap ,bash :-1read $HOME/.vim/.vim-template.bash<CR>3ji
nnoremap ,date :pu=strftime('%Y-%m-%d')<CR>
nnoremap ,wiki \ww
nnoremap ,gen :VimwikiDiaryGenerateLinks<CR>
nnoremap ,git :!git add . && git commit -m "update through vim" && git push<CR>

" Do it right
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Down> :echoe "Use j"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Right> :echoe "Use l"<CR>

" Rebind keys for window movement
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
