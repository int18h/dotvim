set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
set rtp+=~/.vim/bundle/ctrlp.vim
call vundle#rc()

" Let Vundle manage Vundle
Bundle 'gmarik/vundle'

" My Bundles
Bundle 'tpope/vim-sensible'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-rake'
Bundle 'nanotech/jellybeans.vim'
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
"Bundle 'kien/ctrlp.vim'
Bundle 'rking/ag.vim'
Bundle 'kana/vim-textobj-user'
Bundle 'nelstrom/vim-textobj-rubyblock'
Bundle 'slim-template/vim-slim'
Bundle 'chankaward/vim-railscasts-theme'
Bundle 'mileszs/ack.vim'
Bundle 'airblade/vim-gitgutter'
Bundle 'majutsushi/tagbar'
Plugin 'ryanoasis/vim-devicons'
Plugin 'mattn/emmet-vim'
"Bundle 'vim-airline/vim-airline'
"Bundle 'vim-airline/vim-airline-themes'
filetype plugin indent on

let mapleader=","

"color jellybeans
"colorscheme dracula
"colorscheme hybrid_material
colorscheme onedark
"set guifont=Knack\ Regular\ Nerd\ Font\ Complete:h12
set guifont=Meslo\ LG\ S\ Regular\ for\ Powerline\ Nerd\ Font\ Complete:h12
set cursorline
set expandtab
set modelines=0
set shiftwidth=2
set clipboard=unnamed
"set synmaxcol=128
set ttyscroll=10
set encoding=utf-8
set tabstop=4
set nowrap
set number
set expandtab
set nowritebackup
set noswapfile
set nobackup
set hlsearch
set ignorecase
set smartcase

set encoding=utf8
" Automatic formatting
autocmd BufWritePre *.rb :%s/\s\+$//e
autocmd BufWritePre *.go :%s/\s\+$//e
autocmd BufWritePre *.haml :%s/\s\+$//e
autocmd BufWritePre *.html :%s/\s\+$//e
autocmd BufWritePre *.scss :%s/\s\+$//e
autocmd BufWritePre *.slim :%s/\s\+$//e

au BufNewFile * set noeol
au BufRead,BufNewFile *.go set filetype=go

" No show command
autocmd VimEnter * set nosc

" Quick ESC
imap jj <ESC>

" Jump to the next row on long lines
map <Down> gj
map <Up>   gk
nnoremap j gj
nnoremap k gk

" format the entire file
nmap <leader>fef ggVG=

" Open new buffers
nmap <leader>s<left>   :leftabove  vnew<cr>
nmap <leader>s<right>  :rightbelow vnew<cr>
nmap <leader>s<up>     :leftabove  new<cr>
nmap <leader>s<down>   :rightbelow new<cr>

" Tab between buffers
noremap <tab> <c-w><c-w>

" Switch between last two buffers
nnoremap <leader><leader> <C-^>

" Resize buffers
if bufwinnr(1)
  nmap Ä <C-W><<C-W><
  nmap Ö <C-W>><C-W>>
  nmap ö <C-W>-<C-W>-
  nmap ä <C-W>+<C-W>+
endif

" NERDTree
nmap <leader>n :NERDTreeToggle<CR>
let NERDTreeHighlightCursorline=1
let NERDTreeIgnore = ['tmp', '.yardoc', 'pkg']

" Syntastic
let g:syntastic_mode_map = { 'mode': 'passive' }
let g:syntastic_ruby_exec = '~/.rvm/rubies/default/bin/ruby'

" Tagbar
nmap <F8> :TagbarToggle<CR>


" CtrlP
nnoremap <silent> t :CtrlP<cr>
let g:ctrlp_working_path_mode = 2
let g:ctrlp_by_filename = 1
let g:ctrlp_max_files = 600
let g:ctrlp_max_depth = 5

" Go programming
set rtp+=/usr/local/Cellar/go/1.0.3/misc/vim

"Powerline
let g:airline_powerline_fonts = 1
" Airline
"let g:airline_theme='onedark'


" Quit with :Q
"command -nargs=0 Quit :qa!

" Emmet
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

"MacVim GUI mode
if has("gui_macvim")
""    set guifont=Menlo:h12
  set guioptions=aAce
  set fuoptions=maxvert,maxhorz
  set noballooneval
  set linespace=3
" colorscheme dracula
  colorscheme onedark
"  resize current buffer by +/- 5
  nnoremap <M-Right> :vertical resize +5<CR>
  nnoremap <M-Left>  :vertical resize -5<CR>
  nnoremap <M-Up>    :resize -5<CR>
  nnoremap <M-Down>  :resize +5<CR>
" Command+Option+Right for next
  map <D-M-Right> :tabn<CR>
" Command+Option+Left for previous
  map <D-M-Left> :tabp<CR>
" Automatically resize splits when resizing MacVim window
  autocmd VimResized * wincmd =
endif
