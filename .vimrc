source ~/.vim/vimrc
" ------------------------------------
" wellee.lin@gmail.com
" welleelin.com
" ------------------------------------
" Very Comman shortcuts here
" 1) space = :
" 2) ;; (in insert mode) = save file

" To Add the help doc under the Bundles dir
" :call pathogen#helptags()

" Full screen Toggle
" shift + cmd + f

" basic editing
" 1) "u" undo
" 2) "ctr+r" redo

" Surround.vim usages :
"1) surround a selected string with a tag 
"   1. press "v" <-latte mode selection,
"     shift + v" <-line mode selection,
"     ctr + v" <- vertical selection in normal mode.
"   2. select what you wnat
"   3. press "s" <- means start the surround command
"   4. press "t"

"2) change a tag which currour locatied 
"   1. press "c" <- change , "s" <- surround , "t" <- tag
"   2. input a tag name, like "em" or "div"

" Buffer usage:
" 1) list the buffer
" ":ls"
" 2) Go to the specific file with file name
"  ":b filename" <- you can use space and tab to help autocomplete.
" 3) Close buffer
" ":bd"
" 4) Move to Next buffer
" ":bn"
" 5) Move to Pre buffer
" ":bp"
" 4) Open all buffer
" ":ball"
" 5) All buffer operate
" ":bufdo operate", operate can be "w" <- write all the buffer, "bd" <- delete the buffer

" Open file ways: 
" 1) Use ":pwd" look the current directory
" 2) Use ":n filename" or ":n *.html" or ":n *.*" open a list of file to buffer
" 3) Use ":vsp filename" open filename in vertical
" 4) Use ":sp filename" open file in horizontal
" 5) Use "Ctr-w s" for horizontal splitting
" 6) Use "Ctr-w v" for vertical splitting
" 7) Use "Ctr-w q" to close one
" 8) Use move the curror to the link script of file 
"    and press "Ctr + w + f" <- this can open a file in vps way 
"    or "gf" <- this can jump this buffer
" 9) Use command "vim -o3 file1.txt file2.txt file3.txt" to open files split horizontal.

" CommandT Short cuts: "\ t"
" 1) Use "Ctr+v" to open file vertically in command-t matching mode.
" 2) Use "Ctr+t" to open file new tab in command-t matching mode.
" 3) Use "Ctr+hl" to move cursor position in matching sting. "Ctr+a" to the end of matching string
" 4) Use "CommandTFlush" command to refresh the cache.
" 5) Use "let g:CommandTMaxHeight=5" and "CommandTFlush"

" Editing files usage:
" 1) Use "ct*" <- c meas change , t means until , * any character you want to change to.
"  example : here is a string " *hellow world!!! I'm wellee.lin email is wellee.lin@gmail.com"
"  I want to change string from "*" to "@" than move the curror to "*" input "ct@"
" 2) Move curror to a specific character : "f *" <- * means a character behind the cursor
"    move curror to a specific character : "F *" <- * means a character forward the cursor
" 3) Use "dst" <- delete surround tag
" 4) Use "ci*" <- change surround with "*" ,Example "cit" <- change the text within the tag.
"    "ci'" <- change the content within the "'".
" 5) Use "vaB" <- when curror is in a "{}", then select all text within "{}" include the "{}" 
" 6) Use "Ctr + v" <- verticle selection , then press "c" gointo the insert mode, after changed press "esc"
"    the other lines of text will also be edited.
" 7) Use "\cc" to commend a line , use "\cu" to uncommand a line.
" 8) “Ctr+\” toggle chinese input method. 
"
" Peep Open hotkey
nmap <silent> <Leader>q <Plug>PeepOpen

" bind control-l to hashrocket
imap <C-l> <Space>=><Space>

" convert word into ruby symbol
imap <C-k> <C-o>b:<Esc>Ea
nmap <C-k> lbi:<Esc>E

" set transparent background 
set transp=5

" Abbrevations, only in Mac Enviroment 
abbrev ff :! open -a firefox.app %:p<cr>

" Open the Destkop Explore
nmap ,d :cd ~/Desktop<cr>:e .<cr>

" Open the .vimrc file
nmap ,ev :tabedit $MYVIMRC<cr>

" Press "space" replace the ":"
nmap <space> :

" Toogle the NERDTree
nmap ,nt :NERDTreeToggle<cr>

" Insert a blank line below, and you can insert N lines with "N,o"
nmap ,o o<esc>

" Go to normal mode
imap ,e <esc>

" Use ";;" to auto save current file
imap ;; <esc>:w<cr>

" Use ",tab" to auto complete show
imap ,<tab> <C-x><C-o>

set omnifunc=csscomplete#CompleteCSS   

if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
  " For HTML
  autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
endif


" Turn on language specific omnifuncs
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_include_object = 1
autocmd FileType ruby,eruby let g:rubycomplete_include_objects
