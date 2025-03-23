"******************************** Basic Settings ******************************"
set tabstop=4                " Set the width of the tab key
set expandtab                " Convert tabs to spaces
set shiftwidth=4             " Use 4 spaces for indentation when wrapping lines
set autoindent               " Enable auto-indentation
set backspace=2              " Make the backspace key work as expected
set smartindent              " Enable smart auto-indentation
set number                   " Display line numbers on the left side
set showmatch                " Highlight matching brackets
set mouse=a                  " Enable mouse support
set ruler                    " Display the cursor position in the bottom-right corner
set cursorline               " Highlight the current line
set cursorcolumn             " Highlight the current column vertically
set noswapfile               " Disable swap files
set nobackup                 " Disable backup files
set autochdir                " Set the file browser directory to the current directory
set laststatus=2             " Enable status bar information
set cmdheight=1              " Set the height of the command line (default is 1)
set autoread                 " Automatically reload files changed outside Vim
set autowrite                " Automatically save changes before certain commands
set showcmd                  " Show incomplete commands in the status line
set incsearch                " Incrementally highlight matching characters while typing a search
set ignorecase               " Ignore case when searching
set showmode                 " Display the current mode on the last line
set hlsearch                 " Highlight search results
set wildmenu                 " Enable auto-completion menu after pressing TAB
set scrolloff=10             " Keep 10 lines above/below the cursor when scrolling

syntax enable                " Enable syntax highlighting

if has("gui_running")
    set guioptions+=b        " Display the bottom scrollbar
    set nowrap               " Disable automatic line wrapping
endif

"******************************** Encoding Settings *******************************"
" Set line-ending encodings
set fileformats=unix,dos,mac
" Set the internal character encoding used by Vim
set encoding=utf-8
" Set file encoding
if has("win32")
	set fileencoding=chinese
else
	set fileencoding=utf-8
endif
" Fix console output garbled text
language messages zh_CN.utf-8

set listchars=tab:>-,trail:- " Display tabs and trailing spaces

"******************************** Bracket Completion *******************************"
" inoremap ( ()<ESC>i
" inoremap [ []<ESC>i
inoremap { {}<ESC>i
" inoremap < <><ESC>i
inoremap " ""<ESC>i

"******************************** Plugin Section *******************************"
" call plug#begin()
" 
" Plug 'mhinz/vim-startify'               " Provides startup assistance for Vim, such as recently opened files
" Plug 'scrooloose/nerdtree'              " Tree-style sidebar functionality
" Plug 'vim-airline/vim-airline'          " Enhanced status bar for Vim
" Plug 'vim-airline/vim-airline-themes'   " Themes for the Vim status bar
" Plug 'preservim/tagbar'                 " Displays a structural overview of the current file
" Plug 'vhda/verilog_systemverilog.vim'   " Verilog syntax highlighting
" Plug 'luochen1990/rainbow'              " Rainbow parentheses
" Plug 'dense-analysis/ale'               " Asynchronous linting engine
" Plug 'skywind3000/vim-rt-format'        " Auto-formatting for Python and other languages
" Plug 'rkulla/pydiction'                 " Python auto-completion
" 
" call plug#end()

"******************************** Environment Variables ******************************"
" set ctags
" let g:Tlist_Ctag_Cmd = '/opt/homebrew/Cellar/ctags/5.8_2/bin/ctags'

" Rainbow parentheses
" let g:rainbow_active = 1 " Set to 0 if you want to enable it later via :RainbowToggle

" ALE (Asynchronous Lint Engine)
" let g:ale_linters = {'verilog': ['iverilog']}

" vim-rt-format
" By default, pressing ENTER in INSERT mode formats the current line. Setting this
" to 1 allows using CTRL+ENTER for formatting, while ENTER retains its original function.
" let g:rtf_ctrl_enter = 0
" Format again when leaving INSERT mode
" let g:rtf_on_insert_leave = 1

" Python auto-completion
" let g:pydiction_location = '~/.vim/plugged/pydiction/complete-dict'

"******************************* Key Mapping ******************************"
" NERDTree
" noremap <leader>t :NERDTreeToggle<CR>

" Tagbar
" nmap <C-u> :TagbarToggle<CR>