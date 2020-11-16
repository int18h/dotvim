set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar
" if has("nvim")
"     " Guifont Meslo LG L DZ:h9
"     Guifont Fira Mono For Powerline:h9
" else
"     " set guifont=Meslo\ LG\ L\ DZ:h12
"     set guifont=Fira\ Mono\ For\ Powerline:h12
"     set linespace=7
" end
set guicursor+=a:blinkon0
if has("gui_running")
    if g:os == "Darwin"
        set guifont=Menlo:h12
    elseif g:os == "Linux"
        set guifont=Consolas\ 9
    elseif g:os == "Windows"
        set guifont=Consolas:h12:cANSI
    endif
    set linespace=7
endif
set clipboard=unnamedplus
" set background=dark
colorscheme github
let g:airline_theme = 'github'
