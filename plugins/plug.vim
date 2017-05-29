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

" Fuzzy file opener
Plug 'ctrlpvim/ctrlp.vim'
"Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Powerline
"Plug 'powerline/powerline'
" Make commenting easier
Plug 'tpope/vim-commentary'

" Show git status in the gutter
Plug 'airblade/vim-gitgutter'

" Fugitive: Git from within Vim
Plug 'tpope/vim-fugitive'

" Completion
Plug 'mattn/emmet-vim', { 'for': ['html', 'css', 'htmldjango', 'scss','eruby','less'] }

" Tagbar
Plug 'majutsushi/tagbar'

" Respect .editorconfig files. (http://editorconfig.org/)
Plug 'editorconfig/editorconfig-vim'

" Search files using Silver Searcher
Plug 'rking/ag.vim'

" Make Ag searches of selected text
Plug 'Chun-Yang/vim-action-ag'

" Make % match xml tags
" Plug 'edsono/vim-matchit', { 'for': ['html', 'xml'] }

" Syntastic: Code linting errors
Plug 'scrooloose/syntastic'

" Polyglot: A solid language pack for Vim.
Plug 'sheerun/vim-polyglot'

Plug 'tpope/vim-rails', { 'for': ['rb', 'erb'] }
Plug 'tpope/vim-rake', { 'for': 'rb' }
Plug 'kana/vim-textobj-user'
Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'

" Other plugins require curl
if executable("curl")
    " Webapi: Dependency of Gist-vim
    Plug 'mattn/webapi-vim'
    " Gist: Post text to gist.github
    Plug 'mattn/gist-vim'
endif

filetype plugin indent on                   " required!
call plug#end()
