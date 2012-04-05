" Test settings
"
" Set compiler to .vim/compiler/lettuce.vim at load for all python files
autocmd BufNewFile,BufRead *.py compiler lettuce
map <leader>l :set makeprg=echo\ $*\ >/dev/null;\ lettuce_tests\|:call MakeGreen()<cr>
nnoremap <leader>co :copen<cr>
nnoremap <leader>cc :ccl<cr>
