syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set smartindent
set expandtab
set nu
set nowrap
set incsearch
set mouse=a
set encoding=UTF-8
set clipboard=unnamedplus
set laststatus=2
set cursorline
set noshowmode
set guifont=*
hi CursorLine cterm=NONE ctermbg=52 ctermfg=NONE

let mapleader=" "

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'EdenEast/nightfox.nvim'
Plug 'itchyny/lightline.vim'
Plug 'webdevel/tabulous'
Plug 'davidhalter/jedi-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'xavierd/clang_complete'

call plug#end()

let g:jedi#use_tabs_not_buffers = 1
" provide path directly to the library file
let g:clang_library_path='/usr/lib/llvm-15/lib/libclang-15.so.1'
colorscheme nightfox

" NerdTree 
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-b> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" open the existing NERDTree on each new tab.
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif
" Start NERDTree. If a file is specified, move the cursor to its window.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif


" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" switching between vim-windows
nnoremap <S-H> <C-W>h
nnoremap <S-J> <C-W>j
nnoremap <S-K> <C-W>k
nnoremap <S-L> <C-W>l

inoremap qq  <Esc>

" copy and paste
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa

let g:lightline = {
  \ 'colorscheme': 'wombat',
  \ }

nnoremap <CR> :noh<CR><CR>
