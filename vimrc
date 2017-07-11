" John Berberich
" Colors {{{
set background=dark
if &t_Co > 2 || has("gui_running")  " when terminal has colors...
	syntax on  " enable syntax processing
endif
" }}}
" Misc {{{
set backspace=indent,eol,start
" }}}
" Spaces & Tabs {{{
set tabstop=2       " number of visual spaces per TAB
set softtabstop=2   " number of spaces in tab when editing
set expandtab       " tabs are spaces
set shiftwidth=2    " # spaces to use for autoindenting
set shiftround      " use mulitple of shiftwidth when indenting with < and >
set copyindent      " copy the previous indentation on autoindenting
set smarttab        " insert tabs on the start of a line according to
                    "    shiftwidth, not tabstop
set modelines=1
filetype indent on  " load filetype-specific indent files
filetype plugin on
set autoindent      " always set autoindenting on
" }}}
" UI Layout {{{
set number          " show line numbers
set showcmd         " show command in bottom bar
set cursorline      " highlight current line
set wildmenu        " visual autocomplete for command menu
set lazyredraw      " redraw only when we need to
set showmatch       " highlight matching [{()}]
" }}}
" Searching {{{
set incsearch       " search as characters are entered
set hlsearch        " highlight matches

" turn off search hightlight
nnoremap <leader><space> :nohlsearch<CR>
" }}}
" Folding {{{
"=== folding ===
set foldenable          " enable folding
set foldlevelstart=1    " open one fold by default
set foldnestmax=10      " max 10 depth
set foldmethod=indent   " fold based on indent level
nnoremap <space> za     " space open/closes folds
" }}}
" Leader Shortcuts {{{
let mapleader=","    " leader is comma

" jk and kj are escape
inoremap jk <esc>
inoremap kj <esc>

" toggle gundo
noremap <F5> :GundoToggle<CR>

" edit vimrc/zshrc and load vimrc bindings
nnoremap <leader>ev :vsp ~/.vimrc<CR>
nnoremap <leader>ez :vsp ~/.zshrc<CR>
nnoremap <leader>sv :source ~/.vimrc<CR>

" toggle visual display of tabs
nmap <leader>l :set list!<CR>
" Highlight tab chars, trailing whitespace, and invisible spaces visually,
" and additionally use the # sign at the end of lines to mark lines that
" extend off-screen.
"set listchars=tab:>.,trail:.,extends:#,nbsp:.
set listchars=tab:▸\ ,eol:¬,trail:.,extends:#,nbsp:.
" }}}


" Hide the active buffer instead of closing it, so you can have unwritten
" changes to a file and open a new one using :e, without being forced to
" write or undo your changes first.
set hidden

set nowrap          " don't wrap lines
                    " allow backspacing over everything in insert mode
set ignorecase      " ignore case when searching
set smartcase       " ignore case if search pattern is all lowercase,
                    "    case-sensitive otherwise

set title           " change the terminal's title
set visualbell      " don't beep
set noerrorbells    " don't beep
set laststatus=2  " always show the status line
set showtabline=2  " always show the tab line
set encoding=utf8
set ruler
set showmode

set runtimepath^=~/.vim/bundle/ctrlp.vim



" HTML {{{
"autocmd filetype *.html call SetHtmlOptions()
"function SetHtmlOptions()
"  autocmd BufWritePre <buffer> %s/\s+$//e
"
"  For HTML and XML, tabs are fine and showing them is annoying, so disable.
"  autocmd filetype html,xml set listchars-=tab:>.
"endfunction
" }}}
" Ruby {{{
autocmd BufNewFile,BufRead Gemfile set filetype=ruby
autocmd filetype ruby call SetRubyOptions()
function SetRubyOptions()
	setlocal tabstop=2
	setlocal shiftwidth=2
	setlocal autoindent
	setlocal smarttab
	setlocal expandtab
endfunction
" }}}
" Python {{{
" Tabs should be converted to a group of 4 spaces.
" This is the official Python convention
" (http://www.python.org/dev/peps/pep-0008/)
autocmd filetype python call SetPythonOptions()
function SetPythonOptions()
	setlocal expandtab
"set shiftwidth=4 "already set
"set tabstop=4 "already set
"set smarttab "already set
endfunction
" }}}
" PHP {{{
autocmd filetype php call SetPhpOptions()
function SetPhpOptions()
	setlocal expandtab
endfunction
" }}}
" Java {{{
autocmd filetype java call SetJavaOptions()
function SetJavaOptions()
  setlocal expandtab
  setlocal softtabstop=4
  setlocal shiftwidth=4
endfunction
" }}}
" Git {{{
autocmd Filetype gitcommit setlocal spell textwidth=72
" }}}


""""""""""""""""""""
" Command Mappings "
""""""""""""""""""""
" Toggle line numbers and fold column for easy copying
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>

" Use ctrl+j, etc to navigate between splits.
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


""""""""""""""""""""
" Change editing behavior
""""""""""""""""""""



set diffopt+=iwhite


" Launch Config {{{
call pathogen#infect()       " use pathogen
" }}}

" vim:foldmethod=marker:foldlevel=0
