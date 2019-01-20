" ALE {{{
let g:ale_completion_enabled = 0
let g:airline#extensions#ale#enabled = 1
let g:ale_set_highlights = 0
let g:ale_lint_on_text_changed = 1
let g:ale_lint_on_save = 0
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
