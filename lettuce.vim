if exists("current_compiler")
  finish
endif
let current_compiler = "lettuce"

if exists(":CompilerSet") != 2 " older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif

" Modified from pyunit, remove other lines from quickfix window
CompilerSet efm=%-C\ \ \ \ \ %.%#,%A\ \ \ \ \ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z\ \ \ \ %[%^\ ]%\\@=%m,%-G%.%#
