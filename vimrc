set nocompatible              " be iMproved, required
"filetype off                  " required

set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

" [ Vundle Setup ]{{{1
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Github

Plugin 'scrooloose/nerdtree'
" Plugin 'Lokaltog/vim-powerline'
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'mattn/emmet-vim'
Plugin 'mustache/vim-mustache-handlebars'
" Plugin 'shawncplus/phpcomplete.vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'ervandew/supertab'


" vim-scripts

call vundle#end()

filetype plugin indent on

"  [ Preferences ] {{{1

set autoindent
set smartindent
syntax enable                          " Enable syntax highlighting
set nostartofline                      " Don't reset cursor to start of line when moving around
set ttyfast
set history=1000
set ignorecase                        " Ignore case when searching
set smartcase                         " Try and be smart about cases

set hlsearch                          " highlight matches with the last used search pattern
set mouse=v

filetype plugin indent on " turn on filetype plugins

nnoremap <CR> :noh<CR><CR> " clear search with <enter>


" Wild settings {{{2


" list all matches and complete till longest common string
set wildmode=list:longest

" Disable output and VCS files
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem

" Disable archive files
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz

" Ignore bundler and sass cache
set wildignore+=*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*

" Disable temp and backup files
set wildignore+=*.swp,*~,._*


" Appearance {{{2
set number                          " Always show line numbers

set numberwidth=3                     " Changed the width of line number columnsset ts=2 sts=2 sw=2 noexpandtab       " Default tab stops
set backspace=indent,eol,start
set showcmd                           " Shows incomplete command
set novb noeb                         " Turn off visual bell and remove error beeps
set splitbelow                        " New window goes below
set splitright                        " New windows goes right
set wildmenu                          " Enhance command-line completion
set wildmode=longest:full,full
set wildignore+=*.jpg,*.jpeg,*.gif,*.png,*.gif,*.psd,*.o,*.obj
set wildignore+=*/smarty/*,*/vendor/*,*/node_modules/*,*/.hg/*,*/.svn/*,*/.sass-cache/*,*/log/*,*/tmp/*,*/build/*,*/ckeditor/*,*.DS_Store
set encoding=utf-8
set cursorline                        " Highlight current line
set laststatus=2                      " Always show the statusline
set t_Co=256                          " Explicitly tell Vim that the terminal supports 256 colors

set tabstop=2
set shiftwidth=2
set softtabstop=2

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'powerlineish'

" CtrlP {{{2
let g:ctrlp_custom_ignore = 'bower_components\|node_modules\|git|'
let g:ctrlp_match_window_bottom = 0 " Show at top of window
let g:ctrlp_working_path_mode = 2 " Smart path mode
let g:ctrlp_mru_files = 1 " Enable Most Recently Used files feature
let g:ctrlp_jump_to_buffer = 2 " Jump to tab AND buffer if already open
let g:ctrlp_split_window = 1 " <CR> = New Tab


" Colors and Theme {{{2

set background=dark
colorscheme badwolf

" [ Auto Commands ] {{{1
" Resize splits when window is resized {{{2

au VimResized * exe "normal! \<c-w>="


" [ Mappings ] {{{1
" Filetype {{{2

nmap _ht :set ft=html<CR>
nmap _ph :set ft=php<CR>
nmap _py :set ft=python<CR>
nmap _rb :set ft=ruby<CR>
nmap _js :set ft=javascript<CR>
nmap _zs :set ft=zsh<CR>
nmap _md :set ft=mkd<CR>
nmap _vi :set ft=vim<CR>
nmap _cs :set ft=css<CR>


" Folding {{{2
" nnoremap <Tab> za

nnoremap <leader>z zMzvzz
" Window Switching {{{2
"map <C-h> <C-w>h
"map <C-j> <C-w>j
"map <C-k> <C-w>k
"map <C-l> <C-w>l

" Window Resizin	g {{{2
nnoremap <Left> :vertical resize +1<CR>
nnoremap <Right> :vertical resize -1<CR>
nnoremap <Up> :resize +1<CR>
nnoremap <Down> :resize -1<CR>

" Insert Movement {{{2
" imap <C-e> <C-o>$
" imap <C-a> <C-o>0
" imap <C-f> <C-o>l
" imap <C-b> <C-o>h

" [ Leader Mappings ] {{{1

" Update snipmate -- sc {{{2,
nmap <leader>sc :tabedit ~/.vim/bundle/vim-snippets/snippets<CR>

" Tab Editing {{{2
" Useful mappings for managing taps
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove<cr>
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

map <leader>pb :CtrlPBuffer<cr>
map <leader>pm :CtrlPMixed<cr>


" [ Plugins ] {{{1

autocmd vimenter * if !argc() | NERDTree | endif " Load NERDTree by default for directory
map <C-n><C-t> :NERDTreeToggle<CR>


" [ Modeline ] {{{1
set modelines=1
" vim: set foldmethod=marker:
