" Windows housekeeping
if has('win32') || has('win64')
  set runtimepath=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
endif

" Pathogen block
execute pathogen#infect()
syntax on
filetype plugin indent on

" Window size
set lines=40
set columns=140

" Colors
set t_Co=256
syntax enable
set background=dark
colo hybrid
set colorcolumn=80

" Font
set guifont=Consolas:h10:cANSI

" Numbers
set number numberwidth=4 

" Status line
set showcmd
set statusline=%l%L

" Leader
let mapleader = ","

" Insert maps
inoremap jk <esc>
inoremap <c-s> <Esc>:w<CR>a

" Normal maps
nnoremap - ddp
nnoremap _ ddkP
nnoremap <space> viw
nnoremap <C-s> :w<cr>

" Visual maps
vnoremap jk <esc>

" Edit .vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr> ZZ

" Search
set incsearch
set ignorecase
set smartcase

" Formatting - Hard Tabs
set autoindent
set noexpandtab
set tabstop=4
set shiftwidth=4

" Filetype-specific commands
autocmd FileType python nnoremap <leader>c I#<space><esc>jh
autocmd FileType cpp nnoremap <leader>c I//<space><esc>jh
" Spell check for markdown, txt
" autocmd BufNewFile,BufRead *.md setlocal spell
" autocmd BufNewFile,BufRead *.markdown setlocal spell
" autocmd BufNewFile,BufRead *.txt setlocal spell
" spelling didn't look good with hybrid colorscheme

" Hard-mode mappings
autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()
nnoremap <leader>h <Esc>:call ToggleHardMode()<CR> " Toggle

" nerdtree toggle mapping
map <leader>t :NERDTreeToggle<CR>

" Markdown Live Preview mapping
nnoremap <C-m> :LivedownToggle<CR>

" Markdown plugin flags
let g:vim_markdown_folding_disabled = 1 " disable md folding
set conceallevel=2
let g:vim_markdown_frontmatter = 1 " Jekyll YAML frontmatter
