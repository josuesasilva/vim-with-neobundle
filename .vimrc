" vim:fdm=marker:ts=4:sw=4:et:
"        _
" __ _  (_)_ __ ___ _ __ ___
" \ \ / / | '_ ` _ \| '__/ __|
"  \ V /| | | | | | | | | (__
"   \_/ |_|_| |_| |_|_|  \___|
"
"

" {{{ NeoBundle

if has('vim_starting')
    set nocompatible               " Be iMproved
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" Recommended to install
" After install, turn shell ~/.vim/bundle/vimproc, (n,g)make -f your_machines_makefile
NeoBundle 'Shougo/vimproc'

" My Bundles here:
"
" Note: You don't set neobundle setting in .gvimrc!

" Original repos on github
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'bling/vim-airline'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'Shougo/vimfiler.vim'
NeoBundle 'Yggdroot/indentLine'
NeoBundle 'matze/vim-move'
NeoBundle 'MarcWeber/vim-addon-mw-utils'
NeoBundle 'tomtom/tlib_vim'
NeoBundle 'garbas/vim-snipmate'
NeoBundle 'honza/vim-snippets'
NeoBundle 'tomasr/molokai'
NeoBundle 'tpope/vim-rails'
NeoBundle 'vim-scripts/bufkill.vim'
NeoBundle 'szw/vim-ctrlspace'
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-repeat'

" vim-scripts repos
NeoBundle 'TaskList.vim'

" Non github repos

" gist repos

filetype plugin indent on     " Required!

"
" Brief help
" :NeoBundleList          - list configured bundles
" :NeoBundleInstall(!)    - install(update) bundles
" :NeoBundleClean(!)      - confirm(or auto-approve) removal of unused bundles

" Installation check.
NeoBundleCheck

" }}}


" {{{ Basics

syntax on
set ai
set nowrap
set ts=4
set sw=4 et
set et
set ruler
set smartindent
set expandtab
set incsearch
set ignorecase
set encoding=utf-8
set fileencoding=utf-8
set backupdir=/tmp
set noswapfile
set shell=/bin/bash
set nohlsearch

" automatically reload vimrc when it's saved
"au BufWritePost .vimrc so ~/.vimrc

" remover menu and scrollbars
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

" spell
set spelllang=pt_br

" }}}


" {{{ Settings

" auto close preview buffer after auto-complete
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
" ---

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS ts=2
autocmd FileType html setlocal omnifunc=htmlcomplete#CompleteTags ts=2
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS ts=2
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete ts=2
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
" ---

" vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_detect_whitespace = 1
let g:airline_enable_branch = 1
" ---

" indentLine
map <silent> <Leader>l :IndentLinesToggle<CR>
let g:indentLine_enabled = 0
let g:indentLine_char = '┊'
let g:indentLine_color_term = 239
" ---

" vimfiler
let g:vimfiler_as_default_explorer = 1
" ---

" }}}


" {{{ Appearance

set guifont=Monaco\ for\ Powerline\ 10
set laststatus=2
set go-=T
set go-=m

if has("gui_running")
    set nu
    set background=dark
    colorscheme hybrid-light
    set cursorline
else
    set background=dark
    set t_Co=256
endif

" }}}


" {{{ Shortcuts

" New windows
nnoremap <Leader>v <C-w>v
nnoremap <Leader>h <C-w>s

" Buffer kill
nnoremap <leader>c :BD<cr>

" Next buffer
nnoremap <leader>n :bNext<cr>

" Tagbar
nnoremap <leader>tb :TagbarToggle<cr>

" Disable F1 key
map <F1> <Esc>
imap <F1> <Esc>

" Unite
nnoremap <Leader>bb :Unite buffer_tab<cr>

" TaskList
nnoremap <Leader>tl :TaskList<cr>

" vimfiler
nnoremap <Leader>e :VimFilerExplorer<cr>

" }}}
