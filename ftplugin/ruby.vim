" setlocal ts=2 sts=2 sw=2 expandtab
setlocal tabstop=2
setlocal shiftwidth=2
setlocal softtabstop=2
setlocal commentstring=#\ %s
setlocal iskeyword+=?
setlocal iskeyword+=!
let g:syntastic_ruby_checkers=['rubocop', 'mri']
