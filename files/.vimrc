"A original copy of .vimrc file is also preset at location /etc/vim/vimrc
set nocompatible
set backspace=2

set ts=2

"Remapping u to ctrl+z for undo;;; and ctr+r to ctrl+y for redo.
nnoremap <C-Z> u
nnoremap <C-Y> <C-R>

"Mapping m to o,escape ;;; and M to O,escape.
map m o<ESC>
map M O<ESC>

"MY OTHER NOTES OF VIM SHIT LOGICS...
"What is map and noremap ?? Learn it awesome: https://stackoverflow.com/a/3776182/10012446
"Note there's no way to map uppercase letter say C-O won't mean C with uppercase o. :( Saddy.
"DOESN"T WORK : map <M-o> O<ESC> ::<< That keybinding doesnt work as suggested in vim docs it should work for alt key, but it isn't working idk what shit..
"map <S-i> O<ESC>
"Below two keybindings shows working of Shift+i and Ctrl+i, yo!!!
"map <S-i> O<ESC>
"map <C-i> O<ESC>
map <Alt_L-i> O<ESC>
">> that keybinding will >>> map <C-I> O<ESC> >> will behave same as above one, i.e., <C-i> , that is shit, isn't it..!!
