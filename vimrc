set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
set rtp+=~/.vim/bundle/ctrlp.vim
call vundle#rc()
" Vundle {{{
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-sensible'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-rake'
Bundle 'vim-ruby/vim-ruby'
Bundle 'nanotech/jellybeans.vim'
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
Bundle 'rking/ag.vim'
Bundle 'kana/vim-textobj-user'
Bundle 'nelstrom/vim-textobj-rubyblock'
Bundle 'slim-template/vim-slim'
Bundle 'chankaward/vim-railscasts-theme'
"Bundle 'mileszs/ack.vim'
Bundle 'airblade/vim-gitgutter'
Bundle 'majutsushi/tagbar'
Plugin 'ryanoasis/vim-devicons'
Plugin 'mattn/emmet-vim'
Plugin 'pangloss/vim-javascript'
" }}}
" Fonts & Colors {{{
colorscheme onedark
set guifont=Meslo\ LG\ S\ Regular\ for\ Powerline\ Nerd\ Font\ Complete:h12
" }}}
" Tabs & Spaces {{{
set tabstop=4               " number of visual spaces per TAB
set shiftwidth=4            " number of spaces while shifting
set softtabstop=4           " number of spaces in tab when editing
set expandtab               " tabs are spaces
" }}}
" UI Config {{{
syntax on
set number                  " show line numbers
set showcmd                 " show command in bottom bar
set cursorline              " highlight current line
filetype plugin indent on   " load filetype-specific indent files
set wildmenu                " visual autocomplete for command menu
set lazyredraw              " redraw only when we need to.
set clipboard=unnamed
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
nnoremap <leader>a :Ag!
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
" CtrlP {{{
noremap <silent> t :CtrlP<CR>
let g:ctrlp_match_window='bottom,order:ttb'
let g:ctrlp_switch_buffer=0
let g:ctrlp_working_path_mode=0
let g:ctrlp_user_command='ag %s -l --nocolor --hidden -g ""'
" }}}
" PowerLine {{{
let g:airline_powerline_fonts=1
" }}}
" Tagbar {{{
nmap <F8> :TagbarToggle<CR>
" }}}
" NERDTree {{{
nmap <leader>n :NERDTreeToggle<CR>
let NERDTreeHighlightCursorline=1
let NERDTreeIgnore=['tmp', '.yardoc', 'pkg']
" }}}
" Autogroups {{{
augroup configgroup
    autocmd!
    autocmd FileType ruby setlocal tabstop=2
    autocmd FileType ruby setlocal shiftwidth=2
    autocmd FileType ruby setlocal softtabstop=2
    autocmd FileType ruby setlocal commentstring=#\ %s
    autocmd FileType yaml setlocal tabstop=2
    autocmd FileType yaml setlocal shiftwidth=2
    autocmd FileType yaml setlocal softtabstop=2
augroup END
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
" }}}
" Syntastic {{{
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=1
let g:syntastic_enable_signs=1
let g:syntastic_auto_jump=0
let g:syntastic_ruby_checkers=['rubocop', 'mri']
let g:syntastic_python_checkers=['pep8', 'pylint', 'python']
let g:syntastic_javascript_checkers=['jshint']
let g:syntastic_scala_checkers=['scalac', 'scalastyle']
" }}}
" Emmet {{{
let g:user_emmet_install_global=0
autocmd FileType html,css,eruby EmmetInstall
" }}}
" Go programming {{{
set rtp+=/usr/local/Cellar/go/1.0.3/misc/vim
" }}}
" Javascript programming {{{
let g:javascript_enable_domhtmlcss=1
" }}}
" Custom Functions {{{
" toggle between number and relativenumber
function! ToggleNumber()
    if(&relativenumber == 1)
        set norelativenumber
        set number
    else
        set relativenumber
    endif
endfunc

" strips trailing whitespace at the end of files. this
" is called on buffer write in the autogroup above.
function! <SID>StripTrailingWhitespaces()
    " save last search & cursor position
    let _s=@/
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    let @/=_s
    call cursor(l, c)
endfunction
" }}}
" vim:foldmethod=marker:foldlevel=0
