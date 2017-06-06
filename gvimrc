set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar
if has("nvim")
    Guifont Meslo LG L DZ:h9
else
    set guifont=Meslo\ LG\ L\ DZ:h12
end
set clipboard=unnamedplus
colorscheme monokai
