set nocompatible
filetype off
syntax on


" Plug {{{
" Install vim-plug if we don't already have it
if empty(glob("~/.vim/autoload/plug.vim"))
  " Ensure all needed directories exist  (Thanks @kapadiamush)
  execute 'mkdir -p ~/.vim/plugged'
  execute 'mkdir -p ~/.vim/autoload'
    " Download the actual plugin manager
  execute '!curl -fLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif
call plug#begin('~/.vim/plugged')

" Colorschemes
Plug 'crusoexia/vim-monokai'
Plug 'rcabralc/monokai-airline.vim'
Plug 'altercation/vim-colors-solarized'
" Plug 'Shougo/vimproc.vim'
" Plug 'Shougo/unite.vim'
" Plug 'SpaceVim/unite-ctags'
" Plug 'Shougo/denite.nvim'
" --- Regular plugins ---"
Plug 'ctrlpvim/ctrlp.vim'
Plug 'jlanzarotta/bufexplorer'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-commentary'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'gilsondev/searchtasks.vim'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
" Basic development features
Plug 'ludovicchabant/vim-gutentags'
Plug 'majutsushi/tagbar'
Plug 'mattn/emmet-vim', { 'for': ['html', 'css', 'htmldjango', 'scss','eruby','less'] }
Plug 'editorconfig/editorconfig-vim'
Plug 'rking/ag.vim'
Plug 'Chun-Yang/vim-action-ag'
Plug 'brooth/far.vim'
" Plug 'scrooloose/syntastic'
Plug 'w0rp/ale'
Plug 'crusoexia/vim-javascript-lib', { 'for': ['js', 'html', 'erb'] }
Plug 'tpope/vim-rails', { 'for': ['rb', 'erb'] }
Plug 'tpope/vim-rake', { 'for': 'rb' }
Plug 'tpope/vim-rbenv'
Plug 'tpope/vim-bundler'
Plug 'kana/vim-textobj-user'
Plug 'nelstrom/vim-textobj-rubyblock', { 'for': ['rb', 'eruby'] }
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'fatih/vim-go', { 'for': ['go'] }
Plug 'davidhalter/jedi-vim'
Plug 'sheerun/vim-polyglot'

" Deoplete installation
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'zchee/deoplete-go', { 'do': 'make'}
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
Plug 'zchee/deoplete-jedi'
" Other plugins require curl
"if executable("curl")
    " Webapi: Dependency of Gist-vim
"    Plug 'mattn/webapi-vim'
    " Gist: Post text to gist.github
"    Plug 'mattn/gist-vim'
"endif
filetype plugin indent on                   " required!
call plug#end()
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
if g:os == "Darwin"
    language mes en_US
endif
if $TERM == "xterm-256color"
    set t_Co=256
endif
if $TRUECOLOR_TERM == 1
    set termguicolors
endif
" COLORSCHEME: monokai
" let g:monokai_term_italic = 0
" let g:monokai_gui_italic = 0
" colorscheme monokai
" COLORSCHEME: solarized-light
" set background=light
" colorscheme solarized
" let g:airline_theme='solarized'

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
" Leader Shortcuts {{{
let mapleader=","
" toggle gundo
noremap <leader>u :GundoToggle<CR>
" Open ag.vim
nnoremap <leader>ag :Ag!
" Quit with :Q
" command -nargs=0 Quit :qa!
"}}}
" Movement {{{
noremap <C-J> <C-W><C-J>
noremap <C-K> <C-W><C-K>
noremap <C-L> <C-W><C-L>
noremap <C-H> <C-W><C-H>
" Tab between buffers
" noremap <tab> <c-w><c-w>
" Switch between last two buffers
noremap <leader><leader> <C-^>
" Resize buffers
if bufwinnr(1)
  nmap Ä <C-W><<C-W><
  nmap Ö <C-W>><C-W>>
  nmap ö <C-W>-<C-W>-
  nmap ä <C-W>+<C-W>+
endif

" }}}
" Browsing (CtrlP, Netrw, Ag) {{{
" CtrlP {{{
" noremap <silent> t :CtrlP<CR>
noremap <leader>p :CtrlP<CR>
noremap <leader>t :CtrlPTag<CR>
let g:ctrlp_match_window='bottom,order:ttb'
let g:ctrlp_switch_buffer=0
let g:ctrlp_working_path_mode = 'rw'
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn|sass-cache|pip_download_cache|wheel_cache)$',
    \ 'file': '\v\.(png|jpg|jpeg|gif|DS_Store|pyc)$',
    \ 'link': '',
    \ }
let g:ctrlp_show_hidden = 1
let g:ctrlp_clear_cache_on_exit = 0
" Wait to update results (This should fix the fact that backspace is so slow)
let g:ctrlp_lazy_update = 1

" If we have The Silver Searcher
if executable('ag')
    " Use ag over grep
    set grepprg=ag\ --nogroup\ --nocolor

    " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
    let g:ctrlp_user_command = 'ag %s --files-with-matches -g "" --hidden --ignore "\.git$\|\.hg$\|\.svn|\.pyc$"'

    " ag is fast enough that CtrlP doesn't need to cache
    let g:ctrlp_use_caching = 0
endif
" }}}
" Netrw {{{
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_localrmdir='rm -fr'
"let g:netrw_browse_split = 4
"let g:netrw_altv = 1
"let g:netrw_winsize = 25
" }}}
" NERDTree {{{
nmap <leader>nt :NERDTreeToggle<CR>
let NERDTreeHighlightCursorline=1
let NERDTreeIgnore=['tmp', '.yardoc', 'pkg']
let g:NERDTreeWinSize=40
" autocmd VimEnter * NERDTreeClose
" }}}
" TagBar {{{
let g:tagbar_ctags_bin='/usr/local/bin/ctags'
nmap <F8> :TagbarToggle<CR>
" }}}
" " Unite {{{
" let g:unite_enable_start_insert = 0
" " Отображаем Unite в нижней части экрана
" " let g:unite_split_rule = "botright"
" " Отключаем замену статус строки
" let g:unite_force_overwrite_statusline = 0
" " Размер окна Unite
" let g:unite_winheight = 10
" " Красивые стрелочки
" let g:unite_candidate_icon="▷"
" let g:unite_source_grep_command="ag"
" let g:unite_source_grep_default_opts="-i --nocolor --nogroup"
" nnoremap <leader>f :<C-u>Unite -buffer-name=files -start-insert buffer file_rec/async:!<cr>
" " nnoremap <leader>b :<C-u>Unite -quick-match buffer<cr>
" nnoremap <leader>b :<C-u>Unite buffer<cr>
" nnoremap <leader>s :<C-u>Unite grep:.<cr>
" " }}}
" }}}
" Autogroups {{{
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
" Development tools {{{
" ALE {{{
let g:ale_completion_enabled = 0
let g:airline#extensions#ale#enabled = 1
let g:ale_set_highlights = 0
let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_save = 1
let g:ale_lint_on_insert_leave = 0
" }}}
" Syntastic {{{
" let g:syntastic_check_on_open=1
" let g:syntastic_check_on_wq=1
" let g:syntastic_enable_signs=1
" let g:syntastic_auto_jump=0
" let g:syntastic_ruby_checkers=['rubocop', 'mri']
" let g:syntastic_python_checkers=['pep8', 'pylint', 'python']
" let g:syntastic_scala_checkers=['scalac', 'scalastyle']
" }}}
" Polyglot {{{
let g:polyglot_disabled=['go']
" }}
" Emmet {{{
let g:user_emmet_install_global=0
autocmd FileType html,css,eruby EmmetInstall
" }}}
" Javascript programming {{{
let g:javascript_enable_domhtmlcss=1
" }}}
" List occurrences for search {{{
let g:searchtasks_list=["TODO", "FIXME", "XXX"]
" }}}
" EditorConfig {{{
let g:EditorConfig_core_mode='external_command'
" }}}
" Jedi configuration {{{
let g:jedi#completions_enabled = 0
" }}}
" Auto complete settings {{{
set omnifunc=syntaxcomplete#Complete
set completeopt=longest,menuone
" }}}
" {{{ Gutentags
set statusline+=%{gutentags#statusline()}
let g:gutentags_project_root=['Makefile', '.git']
" }}}
" GO programming {{{
" set rtp+=/usr/local/Cellar/go/1.0.3/misc/vim
let g:go_test_timeout='10s'
" if exists('g:loaded_polyglot')
"     let g:polyglot_disabled = ['go']
" endif
" }}}
" Deoplete {{{
let g:deoplete#enable_at_startup = 1
let g:deoplete#auto_complete_start_length = 5
" TernJS
let g:deoplete#sources#ternjs#types = 1
let g:deoplete#sources#ternjs#depths = 1
let g:deoplete#sources#ternjs#docs = 1
let g:deoplete#sources#ternjs#filter = 0
let g:deoplete#sources#ternjs#case_insensitive = 1
let g:deoplete#sources#ternjs#guess = 0
let g:deoplete#sources#ternjs#filetypes = [
                \ 'jsx',
                \ 'javascript.jsx',
                \ 'vue',
                \ '...'
                \ ]
" }}}
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
"
" formats JSON to human readable format
com! FormatJSON %!python -m json.tool
function! SetOSForVim()
    if !exists("g:os")
        if has("win64") || has("win32") || has("win16")
            let g:os = "Windows"
        else
            let g:os = substitute(system('uname'), '\n', '', '')
        endif
    endif
endfunction
" }}}
" vim:foldmethod=marker:foldlevel=0
