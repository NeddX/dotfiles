" Properties and stuff...
set paste
set number
set ts=4
set sw=4
set title
set mouse=a
set softtabstop=4
set smarttab
set shiftwidth=4
set encoding=UTF8
set completeopt=menuone,longest
set cursorline
set wildmenu
set clipboard=unnamedplus
set nospell
set cindent
set expandtab
set incsearch hlsearch
set autoindent
set laststatus=2
syntax on
set t_Co=256
filetype plugin indent on

" Fix the copying and pasting bullshit arsehole developer's of vim don't fix
vnoremap <C-S-c> "+y

" Path to init.vim
"let appdata = fnamemodify($MYVIMRC, ":h");

" =======================================
" Stuff I dont want to touch.
" Reset the cursor to block after leaving
autocmd BufWinLeave * set guicursor=i:blinkon5

" No idea what this is
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" Set Cursor to blink in INSERT mode
set guicursor=i:blinkon5
" Set Cursor to be UNDERLINE in INSERT mode
set guicursor+=n:ver20-Cursor/lCursor

" Line highlighting stuff...
highlight LineNr term=bold cterm=NONE ctermfg=DarkGray ctermbg=NONE gui=NONE
highlight CursorLineNr term=bold cterm=NONE ctermfg=White ctermbg=DarkGray cterm=NONE 
highlight CursorLine term=bold cterm=bold ctermbg=DarkGray
highlight TermCursor guifg=White ctermfg=White

" Italics
let &t_ZH="\e[3m"
let &t_ZR="\e[23g"

" Function to tell you the current scheme
function! ShowColourSchemeName()
    try
        echo g:colors_name
    catch /^Vim:E121/
        echo "default"
    endtry
endfunction

