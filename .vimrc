" Enable line numbers.
set number
" Enable relative line numbers.
set rnu

" Highlights all matches in yellow during a search.
set hlsearch

" Create undo file if possible.
if has('persistent_undo')
    set undofile
endif

" Enables syntax highlighting.
syntax on

" Disables compatible mode. Which allows vim to use more modern features.
set nocp

" Increases undo and other history length.
set history=200

" Enables display of current cursor location.
set ruler

" Enables continuation indent.
set autoindent
" Sets tab length to 4 spaces.
set tabstop=4
set softtabstop=4
set shiftwidth=4
" Makes vim replace the tab character with spaces.
set expandtab

" Enables a nicer autocompletion menu.
set wildmenu
" Sets timeout for single key press recognition. Higher values for using vim on
" remote server with high latency.
set ttimeoutlen=0

" Enables counter for selected characters in visual mode.
set showcmd

" Displays marker at character 80 of every line.
set colorcolumn=81,101,121

" Highlights whitespace at end of line.
highlight ExtraWhitespace ctermbg=LightMagenta guibg=LightMagenta
match ExtraWhitespace /\s\+$/

" Adds closing bracket when adding opening bracket.
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap { {}<Left>
inoremap < <><Left>
inoremap " ""<Left>
inoremap ' ''<Left>
inoremap /* /*  */<Left><Left><Left>

