set nocompatible
filetype off
syntax on


" Plug {{{
runtime! plugins/plug.vim
" }}}

" OS detection {{{
if !exists("g:os")
    if has("win64") || has("win32") || has("win16")
        let g:os = "Windows"
    else
        let g:os = substitute(system('uname'), '\n', '', '')
    endif
endif
" }}}
" Fonts & Colors {{{
language mes en_US
if $TERM == "xterm-256color"
    set t_Co=256
endif
if $TRUECOLOR_TERM == 1 
    set termguicolors
endif
" COLORSCHEME: Tomorrow-Night
" colorscheme Tomorrow-Night
" COLORSCHEME: monokai
let g:monokai_term_italic = 0
let g:monokai_gui_italic = 0
colorscheme monokai
" COLORSCHEME: solarized-light
" set background=light
" colorscheme solarized
" let g:airline_theme='solarized'
" COLORSCHEME: gruvbox-dark
" set background=dark
" let g:gruvbox_bold=0
" let g:gruvbox_italic=0
" let g:airline_theme='gruvbox'
" colorscheme gruvbox
" COLORSCHEME: darcula
" colorscheme darcula

let g:airline#extensions#tabline#enabled = 1
" }}}
" Tabs & Spaces {{{
set tabstop=4               " number of visual spaces per TAB
set shiftwidth=4            " number of spaces while shifting
set softtabstop=4           " number of spaces in tab when editing
set expandtab               " tabs are spaces
" }}}
" UI Config {{{
" syntax on
" set number                  " show line numbers
set number relativenumber   " show relative numbers with number of current line
" set showcmd                 " show command in bottom bar
set noshowcmd
set cursorline              " highlight current line
filetype plugin indent on   " load filetype-specific indent files
set wildmenu                " visual autocomplete for command menu
set nocursorline 
set ttyfast
set lazyredraw              " redraw only when we need to.
set clipboard=unnamedplus
set encoding=utf-8
set nowrap
set autoindent
set smartindent
" set showmatch               " highlight matching [{()}]
" }}}
" Backup & Swap{{{
set noswapfile
set nobackup
set nowritebackup
" }}}
" Searching {{{
set hlsearch		        " highlight matches
set ignorecase
set smartcase
" }}}
" Folding {{{
set foldenable
set foldlevelstart=10
set foldnestmax=10          " 10 nested fold max
" space open/closes folds
noremap <space> za
set foldmethod=indent       " fold based on indent level
" }}}
" Movement {{{
" }}}
" Leader Shortcuts {{{
let mapleader=","
inoremap jk <esc>
" toggle gundo
noremap <leader>u :GundoToggle<CR>
" Open ag.vim
nnoremap <leader>ag :Ag!
" Tab between buffers
noremap <tab> <c-w><c-w>
" Switch between last two buffers
noremap <leader><leader> <C-^>
" Tab between buffers
noremap <tab> <c-w><c-w>
" Switch between last two buffers
noremap <leader><leader> <C-^>
" Quit with :Q
" command -nargs=0 Quit :qa!
" Resize buffers
if bufwinnr(1)
  nmap Ä <C-W><<C-W><
  nmap Ö <C-W>><C-W>>
  nmap ö <C-W>-<C-W>-
  nmap ä <C-W>+<C-W>+
endif

"}}}
" Browsing (CtrlP, Netrw, Ag) {{{
runtime! plugins/browsers.vim
" }}}
" Autogroups {{{
runtime! plugins/autogroups.vim
" No show command
autocmd VimEnter * set nosc
" }}}
" Development tools {{{
runtime! plugins/development.vim
" }}}
" Custom Functions {{{
runtime! plugins/functions.vim
" }}}
" vim:foldmethod=marker:foldlevel=0
