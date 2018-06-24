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
Plug 'rcabralc/monokai-airline.vim'
Plug 'crusoexia/vim-monokai'
Plug 'rakr/vim-one'
Plug 'chriskempson/base16-vim'
Plug 'morhetz/gruvbox'
" Plug 'ryanoasis/vim-devicons'
" Plug 'chriskempson/vim-tomorrow-theme'
" Plug 'arty88/sexy-railscasts-256-theme'

" Plug 'Shougo/vimproc.vim'
" Plug 'Shougo/unite.vim'
" " Plug 'Shougo/denite.nvim'
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
Plug 'majutsushi/tagbar'
Plug 'mattn/emmet-vim', { 'for': ['html', 'css', 'htmldjango', 'scss','eruby','less'] }
Plug 'editorconfig/editorconfig-vim'
Plug 'rking/ag.vim'
Plug 'Chun-Yang/vim-action-ag'
Plug 'scrooloose/syntastic'
Plug 'sheerun/vim-polyglot'
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
if executable("curl")
    " Webapi: Dependency of Gist-vim
    Plug 'mattn/webapi-vim'
    " Gist: Post text to gist.github
    Plug 'mattn/gist-vim'
endif
filetype plugin indent on                   " required!
call plug#end()
