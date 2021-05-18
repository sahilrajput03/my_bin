" Location of this file: ~/.vimrc
"A original copy of .vimrc file is also preset at location /etc/vim/vimrc
" If you want to know about more option in .vimrc file, just go to ^^. 

"Enabling syntax highlighting::
"Note: I was getting error like ``Sorry this command is not available in this 
"version of vim`` on using command >> ``:syntax on`` in vim, so i installed 
"following packages as below:
"sudo apt-get install vim-gui-common
"sudo apt-get install vim-runtime
"src(direct answer link): https://askubuntu.com/a/284960/702911
if has("syntax")
  syntax on
endif
"colorscheme elflord
colorscheme codedark
" Note I have installed https://vimcolors.com/628/codedark/dark theme, just by copying the file codedark.vim file from the repo to the taget location(and have installed no plugin at all).
" You can find themes from https://vimcolors.com/ and put them in ~/.vim/colors/ directory, yikes. src of all this knowledge: https://phoenixnap.com/kb/vim-color-schemes

"Tip: to disable cursor blinking just, just disable your terminal cursor blinking to disable(simple to do in gnome-terminal though).
set nocompatible
set backspace=2

set ts=2

"Remapping u to ctrl+z for undo;;; and ctr+r to ctrl+y for redo.
nnoremap <C-Z> u
nnoremap <C-Y> <C-R>

"Mapping m to o,escape ;;; and M to O,escape.
map m o<ESC>
map M O<ESC>

"Wanna do case insensitive search(by default vim does case sensitive search only)? 
"Ans: Just use something like cAsE\c after pressing / to do that.

"MY OTHER NOTES OF VIM SHIT LOGICS...
"What is map and noremap ?? Learn it awesome: https://stackoverflow.com/a/3776182/10012446
"Note there's no way to map uppercase letter say C-O won't mean C with uppercase o. :( Saddy.
"DOESN"T WORK : map <M-o> O<ESC> ::<< That keybinding doesnt work as suggested in vim docs it should work for alt key, but it isn't working idk what shit..
"map <S-i> O<ESC>
"Below two keybindings shows working of Shift+i and Ctrl+i, yo!!!
"map <S-i> O<ESC>
"map <C-i> O<ESC>
">> that keybinding will >>> map <C-I> O<ESC> >> will behave same as above one, i.e., <C-i> , that is shit, isn't it..!!
