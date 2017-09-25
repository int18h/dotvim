set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar
if has("nvim")
    " Guifont Meslo LG L DZ:h9
    Guifont Fira Mono For Powerline:h9
else
    " set guifont=Meslo\ LG\ L\ DZ:h12
    set guifont=Fira\ Mono\ For\ Powerline:h12
    set linespace=4
end
set clipboard=unnamedplus
colorscheme monokai
" colorscheme onedark
