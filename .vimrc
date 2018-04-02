syntax on
set t_Co=256
set background=dark
let g:solarized_termcolors=256
colorscheme desert
set nocompatible
set number
set hlsearch
set incsearch
set cindent
set cursorline
set autoindent
set novisualbell
set ic
set ruler
set wildmenu
set showcmd
set novisualbell
"set mouse=a
"set listchars=tab:>-,trail:-
"set shiftwidth=4
"autocmd FileType c,cpp set shiftwidth=4 | set expandtab
"autocmd FileType c,cpp,java,php,h autocmd BufWinEnter * match ExtraWhitespace /\s\+$\| \+\ze\t\+\|\t\+\zs \+/
autocmd FileType c set colorcolumn=81
highlight ExtraWhitespace ctermbg=red guibg=red
"set listchars=tab:>-,trail:-
"" ..tab...
"set list
" ..tab.....
"set lcs=tab:\|\ ,nbsp:%,trail:-
" " ....tab...
"highlight LeaderTab guifg=#666666
" " ....tab
" match LeaderTab /^\t/
"set textwidth=72
"set ts=4
"highlight Normal ctermfg=grey ctermbg=black
" tags&taglist set start

set autochdir
set tags=tags;/
nnoremap <silent> <F8> :TlistToggle<CR>
let Tlist_Inc_Winwidth=0

"let Tlist_Use_Right_Window=1
let Tlist_File_Fold_Auto_Close=1
let Tlist_Exit_OnlyWindow=1
"let Tlist_Auto_Open = 1
let Tlist_Auto_Update = 1
let Tlist_Hightlight_Tag_On_BufEnter = 1
let Tlist_Enable_Fold_Column = 0
let Tlist_Process_File_Always = 1
let Tlist_Display_Prototype = 0
let Tlist_Compact_Format = 1
" end tags&taglist set
""""""""""""""""""""""""""""""

"""""""
set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required!
Plugin 'gmarik/vundle'

" .................
"a) ..Github.vim-scripts...........................-...
Plugin 'L9'

Plugin 'fatih/vim-go'
Plugin 'scrooloose/nerdtree'
"b) ..Github................/.........
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'bling/vim-airline'
call vundle#end()
set laststatus=2

"c) ...Github.Git..........git..
"Plugin 'git://git.wincent.com/command-t.git'

"d) ....Git......
"Plugin 'file:///Users/gmarik/path/to/plugin'

filetype plugin indent on     " required!
"""""""
"filetype on
filetype plugin on
filetype indent on
"set cscopequickfix=s-,c-,d-,i-,t-,e-
nmap <space> :
vmap <space> :
nmap <C-@>s :cs find s <C-R>=expand("<cword>" )<CR><CR>
nmap <C-@>g :cs find g <C-R>=expand("<cword>" )<CR><CR>
nmap <C-@>c :cs find c <C-R>=expand("<cword>" )<CR><CR>
nmap <C-@>t :cs find t <C-R>=expand("<cword>" )<CR><CR>
nmap <C-@>e :cs find e <C-R>=expand("<cword>" )<CR><CR>
nmap <C-@>f :cs find f <C-R>=expand("<cfile>" )<CR><CR>
nmap <C-@>i :cs find i ^<C-R>=expand("<cfile>" )<CR>$<CR>
nmap <C-@>d :cs find d <C-R>=expand("<cword>" )<CR><CR>
"
"NerdTree
nmap <F5> :NERDTreeToggle<CR>

