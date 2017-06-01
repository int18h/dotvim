" Syntastic {{{
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=1
let g:syntastic_enable_signs=1
let g:syntastic_auto_jump=0
let g:syntastic_ruby_checkers=['rubocop', 'mri']
let g:syntastic_python_checkers=['pep8', 'pylint', 'python']
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
" List occurrences for search {{{
let g:searchtasks_list=["TODO", "FIXME", "XXX"]
" }}}
