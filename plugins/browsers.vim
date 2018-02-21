" CtrlP {{{
noremap <silent> t :CtrlP<CR>
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
nmap <leader>n :NERDTreeToggle<CR>
let NERDTreeHighlightCursorline=1
let NERDTreeIgnore=['tmp', '.yardoc', 'pkg']
let g:NERDTreeWinSize=40
" autocmd VimEnter * NERDTreeClose
" }}}
" TagBar {{{
nmap <F8> :TagbarToggle<CR>
" }}}
" Unite {{{
let g:unite_enable_start_insert = 0
" Отображаем Unite в нижней части экрана
" let g:unite_split_rule = "botright"
" Отключаем замену статус строки
let g:unite_force_overwrite_statusline = 0
" Размер окна Unite
let g:unite_winheight = 10
" Красивые стрелочки
let g:unite_candidate_icon="▷"
let g:unite_source_grep_command="ag"
let g:unite_source_grep_default_opts="-i --nocolor --nogroup"
nnoremap <leader>f :<C-u>Unite -buffer-name=files -start-insert buffer file_rec/async:!<cr>
" nnoremap <leader>b :<C-u>Unite -quick-match buffer<cr>
nnoremap <leader>b :<C-u>Unite buffer<cr>
nnoremap <leader>s :<C-u>Unite grep:.<cr>
" }}}
