call plug#begin('~/.vim/plugged')

"  ---------------------------------------------------------------------------
"  Plugins
"  ---------------------------------------------------------------------------

" File
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'mhinz/vim-startify'

" Miscellaneous
Plug 'sheerun/vim-polyglot'

" Utility
Plug 'haya14busa/incsearch.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'rondale-sc/vim-spacejam'
Plug 'scrooloose/nerdcommenter'
Plug 'terryma/vim-multiple-cursors'

" Visual
Plug 'joshdick/onedark.vim'
Plug 'junegunn/goyo.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Go
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }

call plug#end()

"  ---------------------------------------------------------------------------
"  General
"  ---------------------------------------------------------------------------

let mapleader=","
let g:mapleader=","

"  ---------------------------------------------------------------------------
"  UI
"  ---------------------------------------------------------------------------

colorscheme onedark
set cursorline
set laststatus=2
set list
set listchars=tab:└-,trail:·
set nowrap
set number
set shiftwidth=4
set smartindent
set tabstop=4
set textwidth=0
set title

if has("gui_running")
    if has("gui_win32")
        set guifont=Consolas:h12
    endif
endif

"  ---------------------------------------------------------------------------
"  Search
"  ---------------------------------------------------------------------------

set ignorecase
set smartcase

"  ---------------------------------------------------------------------------
"  Mapping
"  ---------------------------------------------------------------------------

" Ctrl-a to select all
noremap <C-a> ggvG$
inoremap <C-a> <Esc>ggvG$
vnoremap <C-a> <Esc>ggvG$

" Ctrl-b to switch buffer
nnoremap <C-b> :Buffers<CR>
inoremap <C-b> <Esc>:Buffers<CR>
vnoremap <C-b> <Esc>:Buffers<CR>

" Ctrl-c to copy
vnoremap <C-c> "*y<Esc>i

" Ctrl-d to delete line
noremap <C-d> "_ddi
inoremap <C-d> <Esc>"_ddi
vnoremap <C-d> <Esc>"_ddi

" Ctrl-f to search file
nmap <C-f> <Plug>(incsearch-forward)
imap <C-f> <Esc><Plug>(incsearch-forward)
vmap <C-f> <Plug>(incsearch-forward)

" Ctrl-g to enable Goyo
noremap <C-g> :Goyo<CR>
inoremap <C-g> <Esc>:Goyo<CR>li
vnoremap <C-g> <Esc>:Goyo<CR>

" Ctrl-o to fuzzy search
nnoremap <C-o> :Files<CR>
inoremap <C-o> <Esc>:Files<CR>
vnoremap <C-o> <Esc>:Files<CR>

" Ctrl-q to quit
noremap <C-q> :bd!<CR>
inoremap <C-q> <Esc>:bd!<CR>
vnoremap <C-q> <Esc>:bd!<CR>

" Ctrl-r to reload file
nnoremap <C-r> :so %<CR>i
inoremap <C-r> <Esc>:so %<CR>li
vnoremap <C-r> <Esc>:so %<CR>li

" Ctrl-s to save
noremap <C-s> :update<CR>i
inoremap <C-s> <Esc>:update<CR>li
vnoremap <C-s> <Esc>:update<CR>li

" Ctrl-t to toggle comments
nmap <C-t> ,c<Space>i
imap <C-t> <Esc>,c<Space>li
vmap <C-t> <Esc>,c<Space>li

" Ctrl-v to paste
noremap <C-v> "*pi
inoremap <C-v> <Esc>"*pi

" Ctrl-w to select word
" noremap <C-w> viwi
inoremap <C-w> <Esc>lviw
" vnoremap <C-w> <Esc>viwi

" Ctrl-x to cut
vnoremap <C-x> "*d<Esc>i

" Ctrl-y to redo
nnoremap <C-y> :redo<CR>i
inoremap <C-y> <Esc>:redo<CR>i
vnoremap <C-y> <Esc>:redo<CR>i

" Ctrl-z to undo
noremap <C-z> u<CR>i
inoremap <C-z> <Esc>u<CR>i
vnoremap <C-z> <Esc>u<CR>i

" Ctrl arrow to move between words
nnoremap [1;5C wi
inoremap [1;5C <Esc>wwi
vnoremap [1;5C w
nnoremap [1;5D bi
inoremap [1;5D <Esc>bi
vnoremap [1;5D b

" Shift arrow to select
nnoremap [1;2A v<Up>
nnoremap [1;2B v<Down>
nnoremap [1;2C v<Right>
nnoremap [1;2D v<Left>
inoremap [1;2A <Esc>lv<Up>
inoremap [1;2B <Esc>lv<Down>
inoremap [1;2C <Esc>lv<Right>
inoremap [1;2D <Esc>lv<Left>
vnoremap [1;2A <Up>
vnoremap [1;2B <Down>
vnoremap [1;2C <Right>
vnoremap [1;2D <Left>

nnoremap <S-Up> v<Up>
nnoremap <S-Down> v<Down>
nnoremap <S-Left> v<Left>
nnoremap <S-Right> v<Right>
inoremap <S-Up> <Esc>lv<Up>
inoremap <S-Down> <Esc>lv<Down>
inoremap <S-Left> <Esc>lv<Left>
inoremap <S-Right> <Esc>lv<Right>
vnoremap <S-Up> <Up>
vnoremap <S-Down> <Down>
vnoremap <S-Left> <Left>
vnoremap <S-Right> <Right>

" Shift-Home to highlight to beginning of line
nnoremap [1;2H v0
inoremap [1;2H <Esc>lv0
vnoremap [1;2H 0

nnoremap <S-Home> v0
inoremap <S-Home> <Esc>lv0
vnoremap <S-Home> 0

" Shift-End to highlight to end of line
nnoremap [1;2F v$
inoremap [1;2F <Esc>lv$
vnoremap [1;2F $

nnoremap <S-End> v$
inoremap <S-End> <Esc>lv$
vnoremap <S-End> $

"  ---------------------------------------------------------------------------
"  Plugin Settings
"  ---------------------------------------------------------------------------

" Customize fzf
" --column: Show column number
" --line-number: Show line number
" --no-heading: Do not show file headings in results
" --fixed-strings: Search term as a literal string
" --ignore-case: Case insensitive search
" --no-ignore: Do not respect .gitignore, etc...
" --hidden: Search hidden files and folders
" --follow: Follow symlinks
" --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
" --color: Search color options
command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)

" Customize Goyo
let g:goyo_linenr=1

function! s:goyo_enter()
    set list
    set listchars=tab:└-,trail:·
endfunction

" Customize Multiple Cursors
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-w>'
let g:multi_cursor_quit_key='<Esc>'

" Customize NERD Commenter
let g:NERDSpaceDelims=2

" Enable golint
" let g:go_metalinter_autosave=1

" Auto commands
" autocmd VimEnter * Goyo
" autocmd VimEnter * AirlineToggle
