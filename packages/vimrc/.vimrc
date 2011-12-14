"""""""""""""""""""""""""""""""""""""""""""""
" VIM configure file
"
" author: Flynn
"""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""
" General setting
"""""""""""""""""""""""""""""""""""""""""""""

" If vimrc chagned, then reload it automaticly.
if has("autocmd")
	autocmd! bufwritepost vimrc source /etc/vimrc
endif

" No-compatible mode
set nocompatible


" History
set history=32


" set leader char
let mapleader=","
let g:mapleader=","

" No bell
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Status bar
set laststatus=2
set statusline=[%F]%y%r%m%*%=[Line:%l,Column:%c][%p%%]

" mapping delay & key code delay
set timeout
set timeoutlen=3000
"set notimeout
set ttimeout
"set ttimeoutlen=-1


""""""""""""""""""""""""""""""""""""""""""
" Edit setting
""""""""""""""""""""""""""""""""""""""""""
" Syntax
syntax on

" fieltype
filetype plugin on

" smart command line tips
set wildmenu

" Set magic on, for regular expressions
set magic

" match bracets when text indicator is over them
set showmatch
set matchtime=2

" backspace
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

"line number
set number
set numberwidth=5

"high light search result
set hlsearch
set incsearch
set ignorecase
set smartcase

set tags=./tags,./../tags,./**/tags

" Indent
filetype indent on
set autoindent
set smartindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
if has("autocmd")
	autocmd filetype make set noexpandtab
endif

" Backup
set nobackup
set noswapfile


" mouse, select support
if has("mouse")
    set mouse=a
    set mousemodel=popup
endif
set keymodel=startsel,stopsel
set selection=exclusive
set selectmode=mouse,key


" Key shortcuts
nmap <leader>w :w<cr>
nmap <leader>x :x<cr>
nmap <leader>q :q<cr>

"""""""""""""""""""""""""""""""
" OS setting
"""""""""""""""""""""""""""""""
if has("win32")
    " Nothing here now!
endif


""""""""""""""""""""""""""""""""
" Plugin setting
""""""""""""""""""""""""""""""""
" Tlist
let Tlist_Auto_Open = 1
let Tlist_Use_Right_Window = 1
let Tlist_Exit_OnlyWindow = 1

" Supertab
let g:SuperTabDefaultCompletionType = "<c-x><c-i>"
let g:SuperTabContextDefaultCompletionType = "<c-x><c-i>"

" DoxygenToolkit
"let g:DoxygenToolkit_compactOneLineDoc="yes"
let g:DoxygenToolkit_startCommentTag="/*********************************************************************"
let g:DoxygenToolkit_endCommentTag = "********************************************************************/"
let g:DoxygenToolkit_startCommentBlock = "/* "
let g:DoxygenToolkit_endCommentBlock = "*/"

let g:DoxygenToolkit_fileTag      = "@file     "
let g:DoxygenToolkit_authorTag    = "@author   "
let g:DoxygenToolkit_versionTag   = "@version  "
let g:DoxygenToolkit_dateTag      = "@date     "
let g:DoxygenToolkit_blockTag     = "@name     "
let g:DoxygenToolkit_classTag     = "@class    "
let g:DoxygenToolkit_briefTag_pre = "@brief    "
let g:DoxygenToolkit_paramTag_pre = "@param    "
let g:DoxygenToolkit_returnTag    = "@returns  "

let g:DoxygenToolkit_versionString= "0.1"
let g:DoxygenToolkit_authorName   = "Flynn Jiang"
"let g:DoxygenToolkit_licenseTag   = "My own license"


"""""""""""""""""""""""""""""""
" Cscope
"""""""""""""""""""""""""""""""
if has("cscope")
    "set csprg=/usr/bin/cscope

    " use both cscope and ctag for 'ctrl-]', ':ta', and 'vim -t'
    set cscopetag

    " cscope database(s) are searched first, 1 for reverse order
    set cscopetagorder=0

    " show msg when any other cscope db added
    set cscopeverbose
endif
