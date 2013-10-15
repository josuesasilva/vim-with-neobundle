" vim:fdm=marker:ts=4:sw=4:et:
"        _
" __ _  (_)_ __ ___ _ __ ___
" \ \ / / | '_ ` _ \| '__/ __|
"  \ V /| | | | | | | | | (__
"   \_/ |_|_| |_| |_|_|  \___|
"
"
" --------- Josué ---------
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
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'scrooloose/nerdcommenter'

" vim-scripts repos
NeoBundle 'django.vim'

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

" automatically reload vimrc when it's saved
au BufWritePost .vimrc so ~/.vimrc

" Spell
set spell spelllang=pt " show options 'z='
set nospell

" }}}


" {{{ Settings

" auto close preview buffer after auto-complete
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
" ---

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
" ---

" vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
" ---

" neosnippet
" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif
" ---

" }}}


" {{{ Appearance

set guifont=Droid\ Sans\ Mono\ for\ Powerline\ 10
set laststatus=2

if has("gui_running")
    set nu
    set background=light
    colorscheme solarized
else
    set background=dark
    set t_Co=256
endif

" }}}


" {{{ Shortcuts

" Tagbar
nnoremap <leader>tb :TagbarToggle<cr>

" Disable F1 key
map <F1> <Esc>
imap <F1> <Esc>

" Unite
nnoremap <Leader>bb :Unite buffer_tab<cr>

" }}}
