let mapleader=","

set number

syntax enable                       " enable syntax processing
set tabstop=4                       " number of visual spaces per tab
set shiftwidth=4                    " when indenting with '>', use 4 spaces width
set expandtab                       " tabs are spaces
set directory=$HOME/.vim/backups/   " default directory for backups

set mouse=a                         " enable mouse in all modes

set hlsearch
imap jj <Esc>

set nocompatible                    " make Vim more useful

" ensure backup directory exists
silent execute '!mkdir -p $HOME/.vim/backups'

" install Plug plugin manager
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

filetype off
call plug#begin('~/.vim/plugged')

Plug 'sheerun/vim-polyglot'
Plug 'Lokaltog/vim-easymotion'
Plug 'tpope/vim-fugitive'
Plug 'joshdick/onedark.vim'

Plug 'scrooloose/nerdtree'
    nnoremap <Leader>n :NERDTreeToggle<CR>
    let NERDTreeChDirMode=1

Plug 'tpope/vim-surround'
Plug 'bling/vim-airline'

Plug 'Raimondi/delimitMate'
    let delimitMate_expand_cr = 1
    let g:delimitMate_expand_space = 1

Plug 'vim-airline/vim-airline-themes'
    set laststatus=2
    let g:airline_powerline_fonts = 0
    let g:airline_theme = 'onedark'

Plug 'airblade/vim-gitgutter'
    let g:gitgutter_sign_modified = '┄'

Plug 'airblade/vim-gitgutter'
    let g:gitgutter_sign_modified = '┄'

Plug 'Xuyuanp/nerdtree-git-plugin'
    let g:NERDTreeGitStatusIndicatorMapCustom = {
        \ "Modified"  : "✹",
        \ "Staged"    : "✚",
        \ "Untracked" : "✭",
        \ "Renamed"   : "➜",
        \ "Unmerged"  : "═",
        \ "Deleted"   : "✖",
        \ "Dirty"     : "✗",
        \ "Clean"     : "✔︎",
        \ "Unknown"   : "?"
        \ }
    let g:NERDTreeMinimalUI = 1

call plug#end()
filetype plugin indent on

colorscheme onedark
