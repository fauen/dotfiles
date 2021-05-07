set path+=**
set wildmenu
filetype plugin on                  " required
let mapleader = " " " map leader to Space instead of \ 

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'	" let Vundle manage Vundle, required
Plugin 'vimwiki/vimwiki'	" Load vimwiki (https://github.com/vimwiki/)
Plugin 'morhetz/gruvbox'	" Load gruvbox colorscheme (https://github.com/morhetz/gruvbox/)
Plugin 'itchyny/calendar.vim'	" Load calendar application (https://github.com/itchyny/calendar.vim)
Plugin 'scrooloose/nerdtree'	" Load nerdtree (https://github.com/scrooloose/nerdtree)
Plugin 'itchyny/lightline.vim'	" Load lightline (https://github.com/itchyny/lightline.vim)
Plugin 'edkolev/tmuxline.vim'	" Load tmuxline (https://github.com/edkolev/tmuxline.vim)
Plugin 'vifm/vifm.vim'		" Load vifm (https://github.com/vifm/vifm.vim)
Plugin 'ap/vim-css-color'	" Load vim-css-color (https://github.com/ap/vim-css-color)
Plugin 'tpope/vim-surround'	" Load vim-surround (https://github.com/tpope/vim-surround)
Plugin 'mhinz/vim-startify'	" Loag vim-startify (https://github.com/mhinz/vim-startify)

" Make sure you have all plugins before this line or it will not work
call vundle#end()		" required
filetype plugin indent on	" required

" This section only applies if the file being edited is a yaml file
au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" If you are using vim on Windows (gvim) uncomment the two options below
" :set langmenu=en_US
" :let $LANG = 'en_US'

" Set default color in the vim editor
colorscheme gruvbox
set background=dark

set nocompatible	" This is needed for the vimwiki package
set number		" Set line numbers visible by default
set relativenumber	" Set relative line numbers
set showcmd		" This will make it visual when you hit keys like <leader> (\) like in emacs
set splitright		" Set default
syntax enable		" Set syntax highlighting on
set hlsearch		" Set search highlighting on
set incsearch		" Set incremental search highlight on
set noswapfile		" Set no swap file

" Disable Background Color Erase (BCE) so that color schemes
" work properly when Vim is used inside tmux and GNU screen.
if &term =~ '256color'
	set t_ut=
endif

" This is commands that will open up templates
" Just press for example ,html and it will read the template.html file
" and input the information within to your currect cursor position
nnoremap ,html :-1read $HOME/.vim/.vim-template.html<CR>2j7la
nnoremap ,bash :-1read $HOME/.vim/.vim-template.bash<CR>4ji
nnoremap ,date :pu=strftime('%Y-%m-%d')<CR>
nnoremap ,gen :VimwikiDiaryGenerateLinks<CR>
nnoremap ,vhtml :VimwikiAll2HTML<CR>
nnoremap ,git :!git add . && git commit -m "update through vim" && git push<CR>
nnoremap ,cal :Calendar<CR>
nnoremap ,term :terminal ++curwin<CR>

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

nnoremap <C-w><C-l> :tabnext<CR>
nnoremap <C-w><C-h> :tabprevious<CR>
nnoremap <C-w>c :tabnew<CR>
nnoremap <C-w>- :split<CR>
nnoremap <C-w>_ :vertical split<CR>

" Rebind key for NERDTree
nnoremap <C-n> :NERDTreeToggle<CR>

" Making sure lightline is working and removing the built-it notice of Inser
" for example
set laststatus=2
set noshowmode

" This is specific to vimwiki and could be off if you prefer their own syntax
let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]

" This will add a line at at column 81.
" let &colorcolumn="81"
