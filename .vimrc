" Enable line numbers.

set number
" Enable relative line numbers.
set rnu

" Autorewraps markdown files to be max of 80 chars long.
" autocmd FileType markdown setlocal textwidth=80
" autocmd BufWritePre *.md normal gggqG

" Set encoding to display more characters
set encoding=utf-8
set fileencoding=utf-8

" Highlights all matches in yellow during a search.
set hlsearch
" Makes search use similar syntax to regex
set magic

" Create undo file if possible.
if has('persistent_undo')
    set undofile
endif

" Enables syntax highlighting.
syntax on

" Disable syntax highlighting for js and ts files, as they often seem to get caught in an infinite loop.
autocmd FileType javascript setlocal syntax=OFF
autocmd FileType typescript setlocal syntax=OFF

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
" Sets tab length to 2 for tex files.
autocmd BufRead,BufNewFile *.tex,*.yml setlocal tabstop=2 shiftwidth=2 softtabstop=2
" Makes vim replace the tab character with spaces.
set expandtab

" Enables a nicer autocompletion menu.
set wildmenu
" Sets timeout for single key press recognition. Higher values for using vim on
" remote server with high latency.
set ttimeoutlen=0

" Enables counter for selected characters in visual mode.
set showcmd

" Displays character at end of line when it's being wrapped.
set showbreak=⏎

" Displays marker at character 80 of every line.
set colorcolumn=81,101,121

" Always keeps n number of lines visible above and below the cursor.
set scrolloff=5
nnoremap L L5j
nnoremap H H5k

" Highlights whitespace at end of line.
highlight ExtraWhitespace ctermbg=LightMagenta guibg=LightMagenta
match ExtraWhitespace /\s\+$/

" Allows typing of umlaut
inoremap :ae ä
inoremap :oe ö
inoremap :ue ü
inoremap :Ae Ä
inoremap :Oe Ö
inoremap :Ue Ü

" Adds closing bracket when adding opening bracket.
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap { {}<Left>
inoremap < <><Left>
inoremap /* /*  */<Left><Left><Left>

" Smart skips over existing closing brackets in insert mode
inoremap <expr> )  getline('.')[col('.') - 1] == ')'  ? "\<Right>" : ')'
inoremap <expr> ]  getline('.')[col('.') - 1] == ']'  ? "\<Right>" : ']'
inoremap <expr> }  getline('.')[col('.') - 1] == '}'  ? "\<Right>" : '}'
inoremap <expr> >  getline('.')[col('.') - 1] == '>'  ? "\<Right>" : '>'
inoremap <expr> "  getline('.')[col('.') - 1] == '"'  ? "\<Right>" : '"'
inoremap <expr> '  getline('.')[col('.') - 1] == "'"  ? "\<Right>" : "'"

" Highlights tab and oel characters.
set list
set listchars=tab:->,nbsp:␣,extends:›

" Adds relative linenos in netrw
augroup netrw_numbers
    autocmd!
    autocmd FileType netrw setlocal number relativenumber
augroup END
" Sets default netrw display style to tree
let g:netrw_liststyle = 3
" Hides swp and dotfiles
let g:netrw_list_hide = '^\..*'
" Displays banner with pwd
let g:netrw_banner=1

" Disables Q key (ex mode by default)
nnoremap Q <Nop>

" To download languages, use this command with one language at a time in a vim
" editor and the editor will ask you whether you'd like to download the spl
" file.
" enable spellcheck languages
set spelllang=en_gb,fr,de_ch
" enable case-sensitive spellcheck respecting sentence beginnings.
set spell

" Enable automatic wrapping, when typing more than 80 columns.
set textwidth=80
" Push edge of automatic VISUAL wrapping by two columns.
set wrapmargin=2

