" Install vim-plug automatically
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'tomasiser/vim-code-dark'
Plug 'vim-airline/vim-airline'
Plug 'mileszs/ack.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat' " Use the repeat command (.) with supported plugins
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'tpope/vim-fugitive' " Git wrapper
call plug#end()

colorscheme codedark

""" Config
syntax enable
filetype plugin indent on " load filetype-specific indnet files and plugin
set shiftwidth=2
set tabstop=2 " number of visual spaces per TAB
set expandtab " tabs are spaces
set number " show line numbers
" set cursorline " highlight current line
set wildmenu " visual autocomplete for command menu
set showmatch " highlight matching [{()}]
set hlsearch
set incsearch
set smartcase " case insensitive, only sensitive when first char is capital
set autoread
set ttyfast
set path+=** " :find search down into subfolders

""" Key Mapping
"space as leader
let mapleader = " " 

" turn off search highlight
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

" Switch between the last two files
nnoremap <Leader><Leader> <C-^>

""" Aditional Settings
" set ag with Ack
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" For netrw
" let g:netrw_banner = 0 " turn off banner
