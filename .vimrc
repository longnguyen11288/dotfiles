set nocompatible
filetype off
set rtp+=~/go/misc/vim
filetype plugin indent on
syntax on
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
retab
"github repos
Bundle 'altercation/vim-colors-solarized'
Bundle 'ervandew/supertab'
Bundle 'gmarik/vundle'
Bundle 'Lokaltog/vim-powerline'
Bundle 'mattn/gist-vim'
Bundle 'mattn/webapi-vim'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
"Bundle 'shawncplus/skittles_berry'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails'
Bundle 'wincent/Command-T.git'
"vim-script repos
Bundle 'twilight256.vim'

filetype plugin indent on

set number
set ruler

"tab stuff
set tabstop=2
set expandtab
set shiftwidth=2

"cut down on rage
:command WQ wq
:command Wq wq
:command W w
:command Q q

" NERDTree configuration
let NERDTreeIgnore=['\.pyc$', '\.rbc$', '\~$']
map <Leader>n :NERDTreeToggle<CR>

" Command-T configuration
let g:CommandTMaxHeight=20
" make command-t open in new tab
let g:CommandTAcceptSelectionMap = '<C-t>'
let g:CommandTAcceptSelectionTabMap = '<CR>'

" Thorfile, Rakefile, Vagrantfile and Gemfile are Ruby
au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru}    set ft=ruby

" gist-vim defaults
if has("mac")
  let g:gist_clip_command = 'pbcopy'
elseif has("unix")
  let g:gist_clip_command = 'xclip -selection clipboard'
endif
let g:gist_detect_filetype = 1
let g:gist_open_browser_after_post = 1

" Vim-powerline
set encoding=utf-8
set laststatus=2
set guifont=Droid\ Sans\ Mono\ Slashed\ for\ Powerline
let g:Powerline_symbols = 'fancy'

" colors
set t_Co=256
syntax enable
colorscheme ir_black

" dir for .swp files
set backupdir=~/.vim/swp
set directory=~/.vim/swp

" pasting
map <Leader>p :set paste!<CR>

map <Leader>nn :set number!<CR>

" alignment
map <Leader>= ggVG=<CR>

" Remember last location in file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif

map ff gT
map gg gt

" strip trailing white space on save
autocmd BufWritePre * :%s/\s\+$//
nmap <buffer> <F5> <Plug>(xmpfilter-run)
xmap <buffer> <F5> <Plug>(xmpfilter-run)
imap <buffer> <F5> <Plug>(xmpfilter-run)

nmap <buffer> <F4> <Plug>(xmpfilter-mark)
xmap <buffer> <F4> <Plug>(xmpfilter-mark)
imap <buffer> <F4> <Plug>(xmpfilter-mark)
