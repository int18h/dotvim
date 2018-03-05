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

if has("gui_running")
    if g:os == "Darwin"
        set guifont=Fira\ Mono\ For\ Powerline:h12
    elseif g:os == "Linux"
        set guifont=Fira\ Mono\ For\ Powerline\ 9
    elseif g:os == "Windows"
        set guifont=Fira_Mono_For_Powerline:h12:cANSI
    endif
    set linespace=7
endif
set clipboard=unnamedplus
colorscheme Tomorrow-Night
