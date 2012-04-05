Basic integration for vim-makegreen and lettuce

The most basic installation requires:

*     vim-makegreen installed in ~/.vim/plugin/makegreen.vim
*     lettuce.vim installed in ~/.vim/compiler/lettuce.vim
*     lettuce installed (pip install lettuce)
*     lettuce tests written and living in ./features and its subdirectories
*     the lettuce_tests script is accessible via your current system PATH
*     the lines from the attached .vimrc in your .vimrc

Then, if vim is currently editing a file matching *.py, you can hit \<leader\>l to run lettuce automatically. This will report either a green bar (success) or red bar (one or more failures) at the bottom of vim. You can then open the quickfix window which will be populated with the relevant errors.

Caveats:

*     Lettuce currently assumes that you are standing in your code's base directory and all lettuce feature/step files lie in ./feature and its subdirectories. This is obnoxious.
*     The contents of lettuce_tests are hacky and could almost certainly be improved. The goal was simply to avoid returning a line inside lettuce's core files for every error.
